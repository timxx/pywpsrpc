/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

struct IKRpcClient /Abstract/
{
%TypeCode
    #include <unordered_map>
    #include <list>

    typedef std::list<PyObject*> PyFuncs;
    typedef std::pair<const WCHAR*, void *> NameFuncPair;

    struct IID_Hash
    {
        std::size_t operator()(const IID &key) const
        {
            return std::hash<uint32>()(key.Data1) ^
                std::hash<uint16>()(key.Data2) ^
                std::hash<uint16>()(key.Data3) ^
                std::hash<uint64>()(*((uint64*)key.Data4));
        }
    };

    struct NameFuncPair_Hash
    {
        std::size_t operator()(const NameFuncPair &key) const
        {
            if (key.first == nullptr)
                return 0;

            return std::hash<std::u16string>()(
                reinterpret_cast<const char16_t*>(key.first));
        }
    };

    struct NameFuncPair_Equal
    {
        bool operator()(const NameFuncPair &lhs, const NameFuncPair &rhs) const
        {
            if (lhs.second != nullptr && lhs.second == rhs.second)
                return true;

            if (lhs.first == rhs.first)
                return true;

            if (lhs.first == nullptr || rhs.first == nullptr)
                return false;

            size_t len = xstrlen(lhs.first);
            if (len != xstrlen(rhs.first))
                return false;

            return memcmp(lhs.first, rhs.first, len * 2) == 0;
        }
    };

    typedef std::unordered_map<NameFuncPair, PyFuncs, NameFuncPair_Hash, NameFuncPair_Equal> EventFuncs;
    static std::unordered_map<IID, EventFuncs, IID_Hash> g_eventMap;

    static std::list<PyObject*> _getPyFuncs(const WCHAR* name, void *pFunc)
    {
        // TODO: specify the IID?
        for (const auto &itEvents : g_eventMap)
        {
            auto itFuncs = itEvents.second.find(std::make_pair(name, pFunc));
            if (itFuncs != itEvents.second.cend())
                return itFuncs->second;
        }

        return std::list<PyObject*>();
    }

    #define _GET_PY_FUNCS(name) _getPyFuncs(__X(#name), (void*)_##name)

    static HRESULT _PyObjectEvent(PyObject *pyObject, const PyFuncs &pyFuncs)
    {
        if (pyFuncs.empty())
            return E_FAIL;

        SIP_BLOCK_THREADS

        for (auto &pyFunc : pyFuncs)
        {
            PyObject *ret = PyObject_CallFunctionObjArgs(pyFunc, pyObject, nullptr);
            if (ret)
            {
                PyErr_Clear();
                Py_DECREF(ret);
            }
        }

        SIP_UNBLOCK_THREADS
        return S_OK;
    }

    static HRESULT _PyObjectArgEvent(PyObject *pyObject, PyObject *arg, const PyFuncs &pyFuncs)
    {
        if (pyFuncs.empty())
            return E_FAIL;

        SIP_BLOCK_THREADS

        for (auto &pyFunc : pyFuncs)
        {
            PyObject *ret = PyObject_CallFunctionObjArgs(pyFunc, pyObject, arg, nullptr);
            if (ret)
            {
                PyErr_Clear();
                Py_DECREF(ret);
            }
        }

        SIP_UNBLOCK_THREADS
        return S_OK;
    }

    static inline HRESULT _PresentationEvent(wppapi::_Presentation *Pres, const PyFuncs &pyFuncs)
    {
        PyObject *pyPres = Pres == nullptr ? Py_None : sipConvertFromType(Pres, sipType_wppapi__Presentation, 0);
        return _PyObjectEvent(pyPres, pyFuncs);
    }

    static HRESULT _PresentationCancelEvent(wppapi::_Presentation *Pres, VARIANT_BOOL *Cancel, const PyFuncs &pyFuncs)
    {
        if (pyFuncs.empty())
            return E_FAIL;

        SIP_BLOCK_THREADS

        PyObject *pyPres = Pres == nullptr ? Py_None : sipConvertFromType(Pres, sipType_wppapi__Presentation, 0);
        for (auto &pyFunc : pyFuncs)
        {
            PyObject *pyCancel = (Cancel && *Cancel) ? Py_True : Py_False;
            PyObject *ret = PyObject_CallFunctionObjArgs(pyFunc, pyPres, pyCancel, nullptr);
            if (ret)
            {
                if (PyBool_Check(ret))
                {
                    PyErr_Clear();

                    // shall we break if *Cancel is VARIANT_TRUE?
                    if (Cancel)
                        *Cancel = (ret == Py_True) ? VARIANT_TRUE : VARIANT_FALSE;
                }

                Py_DECREF(ret);
            }
        }

        SIP_UNBLOCK_THREADS
        return S_OK;
    }

    static HRESULT _PresentationSave(wppapi::_Presentation *Pres)
    {
        return _PresentationEvent(Pres, _GET_PY_FUNCS(PresentationSave));
    }

    static HRESULT _PresentationClose(wppapi::_Presentation *Pres)
    {
        return _PresentationEvent(Pres, _GET_PY_FUNCS(PresentationClose));
    }

    static HRESULT _AfterNewPresentation(wppapi::_Presentation *Pres)
    {
        return _PresentationEvent(Pres, _GET_PY_FUNCS(AfterNewPresentation));
    }

    static HRESULT _AfterPresentationOpen(wppapi::_Presentation *Pres)
    {
        return _PresentationEvent(Pres, _GET_PY_FUNCS(AfterPresentationOpen));
    }

    static HRESULT _NewPresentation(wppapi::_Presentation *Pres)
    {
        return _PresentationEvent(Pres, _GET_PY_FUNCS(NewPresentation));
    }

    static HRESULT _PresentationBeforeClose(wppapi::_Presentation *Pres, VARIANT_BOOL *Cancel)
    {
        return _PresentationCancelEvent(Pres, Cancel, _GET_PY_FUNCS(PresentationBeforeClose));
    }

    static HRESULT _PresentationBeforeSave(wppapi::_Presentation *Pres, VARIANT_BOOL *Cancel)
    {
        return _PresentationCancelEvent(Pres, Cancel, _GET_PY_FUNCS(PresentationBeforeSave));
    }

    static HRESULT _PresentationCloseFinal(wppapi::_Presentation *Pres)
    {
        return _PresentationEvent(Pres, _GET_PY_FUNCS(PresentationCloseFinal));
    }

    static HRESULT _PresentationNewSlide(wppapi::_Slide *Sld)
    {
        PyObject *pySld = Sld ? sipConvertFromType(Sld, sipType_wppapi__Slide, 0) : Py_None;
        return _PyObjectEvent(pySld, _GET_PY_FUNCS(PresentationNewSlide));
    }

    static HRESULT _PresentationOpen(wppapi::_Presentation *Pres)
    {
        return _PresentationEvent(Pres, _GET_PY_FUNCS(PresentationOpen));
    }

    static HRESULT _PresentationPrint(wppapi::_Presentation *Pres)
    {
        return _PresentationEvent(Pres, _GET_PY_FUNCS(PresentationPrint));
    }

    static HRESULT _PresentationSync(wppapi::_Presentation *Pres, wppapi::MsoSyncEventType SyncEventType)
    {
        auto pyFuncs = _GET_PY_FUNCS(PresentationSync);
        if (pyFuncs.empty())
            return E_FAIL;

        SIP_BLOCK_THREADS

        PyObject *pyPres = Pres == nullptr ? Py_None : sipConvertFromType(Pres, sipType_wppapi__Presentation, 0);
        for (auto &pyFunc : pyFuncs)
        {
            PyObject *ret = PyObject_CallFunction(pyFunc, "(OI)", pyPres, SyncEventType);
            if (ret)
            {
                PyErr_Clear();
                Py_DECREF(ret);
            }
        }

        SIP_UNBLOCK_THREADS
        return S_OK;
    }

    static HRESULT _DocumentAfterPrint(wppapi::_Presentation *Pres, wpsapiex::PrintoutPageEx *pageEx)
    {
        PyObject *pyPres = Pres ? sipConvertFromType(Pres, sipType_wppapi__Presentation, 0) : Py_None;
        PyObject *pyPageEx = pageEx ? sipConvertFromType(pageEx, sipFindType("PrintoutPageEx"), 0) : Py_None;
        return _PyObjectArgEvent(pyPres, pyPageEx, _GET_PY_FUNCS(DocumentAfterPrint));
    }

    #define _FUNC(name) std::make_pair(__X(#name), (void *)_##name)
    static void* _registerFunc(const IID &iid, const BSTR eventName, PyObject *pyFunc)
    {
        if (g_eventMap.empty())
        {
            // IID_EApplication
            {
                EventFuncs events;
                events[_FUNC(PresentationSave)] = PyFuncs();
                events[_FUNC(PresentationClose)] = PyFuncs();
                events[_FUNC(AfterNewPresentation)] = PyFuncs();
                events[_FUNC(AfterPresentationOpen)] = PyFuncs();
                events[_FUNC(NewPresentation)] = PyFuncs();
                events[_FUNC(PresentationBeforeClose)] = PyFuncs();
                events[_FUNC(PresentationBeforeSave)] = PyFuncs();
                events[_FUNC(PresentationCloseFinal)] = PyFuncs();
                events[_FUNC(PresentationNewSlide)] = PyFuncs();
                events[_FUNC(PresentationOpen)] = PyFuncs();
                events[_FUNC(PresentationPrint)] = PyFuncs();
                events[_FUNC(PresentationSync)] = PyFuncs();
                g_eventMap[wppapi::IID_EApplication] = events;
            }

            // const DIID_ApplicationEventsEx
            {
                EventFuncs events;
                events[_FUNC(DocumentAfterPrint)] = PyFuncs();
                g_eventMap[wpsapiex::DIID_ApplicationEventsEx] = events;
            }
        }

        auto itEvents = g_eventMap.find(iid);
        if (itEvents == g_eventMap.cend())
            return nullptr;

        auto itFuncs = itEvents->second.find(std::make_pair(eventName, nullptr));
        if (itFuncs == itEvents->second.cend())
            return nullptr;

        for (const auto &func : itFuncs->second)
        {
            // the same func already registered
            if (func == pyFunc)
                return itFuncs->first.second;
        }

        Py_INCREF(pyFunc);
        itFuncs->second.push_back(pyFunc);

        return itFuncs->first.second;
    }
%End

public:
    // TODO: No document found for the id, maybe the eventName can be converted to id
    // virtual HRESULT registerEvent(IDispatch *idisp, const IID &iid, DISPID id, SIP_PYCALLABLE pFunc) = 0;
    virtual HRESULT registerEvent(IDispatch *idisp, const IID &iid, const BSTR eventName, SIP_PYCALLABLE pFunc) = 0;
    %MethodCode
        sipRes = E_FAIL;
        void *pFunc = _registerFunc(*a1, *a2, a3);
        if (pFunc)
            sipRes = sipCpp->registerEvent(a0, *a1, *a2, pFunc);
    %End

    virtual HRESULT getWppApplication(wppapi::_Application **app /Out/) = 0;
    %MethodCode
        sipRes = sipCpp->getWppApplication((IUnknown **)&a0);
    %End

    virtual HRESULT setProcessPath(const BSTR exePath) = 0;

    virtual HRESULT setProcessArgs(SIP_PYLIST args /TypeHint="List[str]"/) = 0;
    %MethodCode
        Py_ssize_t argc = PyList_Size(a0);
        std::vector<BSTR> bstrArgs;

        for (int i = 0; i < argc; ++i)
        {
            PyObject *strObj = PyList_GetItem(a0, i);
            int state = 0;
            BSTR* pStr = reinterpret_cast<BSTR*>(sipConvertToType(strObj,
                sipType_BSTR, nullptr, SIP_NO_CONVERTORS, &state, &sipIsErr));

            if (sipIsErr)
                break;

            BSTR bstr = SysAllocStringLen(pStr ? *pStr : __X(""), pStr ? SysStringLen(*pStr) : 0);
            bstrArgs.push_back(bstr);

            sipReleaseType(pStr, sipType_BSTR, state);
        }

        sipRes = E_FAIL;
        if (!sipIsErr)
            sipRes = sipCpp->setProcessArgs(argc, bstrArgs.data());

        for (int i = 0; i < argc; ++i)
            SysFreeString(bstrArgs[i]);
    %End
    virtual HRESULT getProcessPid(LONGLONG *pid /Out/) = 0;

    virtual HRESULT setStartTimeout(int time_usec) = 0;
    virtual HRESULT setWpsWid(LONGLONG wid) = 0;
};
