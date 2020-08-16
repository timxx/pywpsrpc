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
    #include "pyevents.h"

    static inline HRESULT _PresentationEvent(wppapi::_Presentation *Pres, const PyFuncs &pyFuncs)
    {
        PyObject *pyPres = _convertFromType(Pres, sipType_wppapi__Presentation);
        return _callPyFunc(pyFuncs, pyPres);
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
        PyObject *pyPres = _convertFromType(Pres, sipType_wppapi__Presentation);
        return _doCancelEvent(pyPres, Cancel, _GET_PY_FUNCS(PresentationBeforeClose));
    }

    static HRESULT _PresentationBeforeSave(wppapi::_Presentation *Pres, VARIANT_BOOL *Cancel)
    {
        PyObject *pyPres = _convertFromType(Pres, sipType_wppapi__Presentation);
        return _doCancelEvent(pyPres, Cancel, _GET_PY_FUNCS(PresentationBeforeSave));
    }

    static HRESULT _PresentationCloseFinal(wppapi::_Presentation *Pres)
    {
        return _PresentationEvent(Pres, _GET_PY_FUNCS(PresentationCloseFinal));
    }

    static HRESULT _PresentationNewSlide(wppapi::_Slide *Sld)
    {
        PyObject *pySld = _convertFromType(Sld, sipType_wppapi__Slide);
        return _callPyFunc(_GET_PY_FUNCS(PresentationNewSlide), pySld);
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
        PyObject *pyPres = _convertFromType(Pres, sipType_wppapi__Presentation);
        PyObject *pyPageEx = _convertFromType(pageEx, sipFindType("PrintoutPageEx"));
        return _callPyFunc(_GET_PY_FUNCS(DocumentAfterPrint), pyPres, pyPageEx);
    }

    static HRESULT _WindowActivate(wppapi::_Presentation *Pres, wppapi::DocumentWindow *Wn)
    {
        PyObject *pyPres = _convertFromType(Pres, sipType_wppapi__Presentation);
        PyObject *pyWn = _convertFromType(Wn, sipType_wppapi_DocumentWindow);
        return _callPyFunc(_GET_PY_FUNCS(WindowActivate), pyPres, pyWn);
    }

    static HRESULT _WindowDeactivate(wppapi::_Presentation *Pres, wppapi::DocumentWindow *Wn)
    {
        PyObject *pyPres = _convertFromType(Pres, sipType_wppapi__Presentation);
        PyObject *pyWn = _convertFromType(Wn, sipType_wppapi_DocumentWindow);
        return _callPyFunc(_GET_PY_FUNCS(WindowDeactivate), pyPres, pyWn);
    }

    static HRESULT _WindowBeforeDoubleClick(wppapi::Selection *Sel, VARIANT_BOOL *Cancel)
    {
        PyObject *pySel = _convertFromType(Sel, sipType_wppapi_Selection);
        return _doCancelEvent(pySel, Cancel, _GET_PY_FUNCS(WindowBeforeDoubleClick));
    }

    static HRESULT _WindowBeforeRightClick(wppapi::Selection *Sel, VARIANT_BOOL *Cancel)
    {
        PyObject *pySel = _convertFromType(Sel, sipType_wppapi_Selection);
        return _doCancelEvent(pySel, Cancel, _GET_PY_FUNCS(WindowBeforeRightClick));
    }

    static HRESULT _WindowSelectionChange(wppapi::Selection *Sel)
    {
        PyObject *pySel = _convertFromType(Sel, sipType_wppapi_Selection);
        return _callPyFunc(_GET_PY_FUNCS(WindowSelectionChange), pySel);
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

                events[_FUNC(WindowActivate)] = PyFuncs();
                events[_FUNC(WindowDeactivate)] = PyFuncs();
                events[_FUNC(WindowBeforeDoubleClick)] = PyFuncs();
                events[_FUNC(WindowBeforeRightClick)] = PyFuncs();
                events[_FUNC(WindowSelectionChange)] = PyFuncs();

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
