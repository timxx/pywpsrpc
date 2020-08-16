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

    static HRESULT _DocumentEvent(wpsapi::_Document *Doc, const PyFuncs &pyFuncs)
    {
        PyObject *pyDoc = _convertFromType(Doc, sipType_wpsapi__Document);
        return _callPyFunc(pyFuncs, pyDoc);
    }

    static HRESULT _DocumentBeforeClose(wpsapi::_Document *Doc, VARIANT_BOOL *Cancel)
    {
        PyObject *pyDoc = _convertFromType(Doc, sipType_wpsapi__Document);
        return _doCancelEvent(pyDoc, Cancel, _GET_PY_FUNCS(DocumentBeforeClose));
    }

    static HRESULT _DocumentBeforeSave(wpsapi::_Document *Doc, VARIANT_BOOL *SaveAsUI, VARIANT_BOOL *Cancel)
    {
        HRESULT hr = E_FAIL;
        SIP_BLOCK_THREADS

        std::list<PyObject*> pyFuncs = _GET_PY_FUNCS(DocumentBeforeSave);
        if (!pyFuncs.empty())
            hr = S_OK;

        PyObject *pyDoc = Doc == nullptr ? Py_None : sipConvertFromType(Doc, sipType_wpsapi__Document, 0);

        for (auto &pyFunc : pyFuncs)
        {
            PyObject *ret = PyObject_CallFunctionObjArgs(pyFunc, pyDoc, nullptr);
            if (ret)
            {
                if (PyTuple_Check(ret))
                {
                    PyErr_Clear();

                    if (SaveAsUI)
                    {
                        PyObject *pySaveAsUI = PyTuple_GetItem(ret, 0);
                        *SaveAsUI = (pySaveAsUI == Py_True) ? VARIANT_TRUE : VARIANT_FALSE;
                    }

                    PyObject *pyCancel = PyTuple_GetItem(ret, 1);
                    if (Cancel)
                        *Cancel = (pyCancel == Py_True) ? VARIANT_TRUE : VARIANT_FALSE;

                    if (pyCancel == Py_True)
                        break;
                }

                Py_DECREF(ret);
            }
        }

        SIP_UNBLOCK_THREADS
        return hr;
    }

    static HRESULT _DocumentBeforePrint(wpsapi::_Document *Doc, VARIANT_BOOL *Cancel)
    {
        PyObject *pyDoc = _convertFromType(Doc, sipType_wpsapi__Document);
        return _doCancelEvent(pyDoc, Cancel, _GET_PY_FUNCS(DocumentBeforePrint));
    }

    static HRESULT _DocumentChange()
    {
        return _callPyFunc(_GET_PY_FUNCS(DocumentChange));
    }

    static HRESULT _DocumentOpen(wpsapi::_Document *Doc)
    {
        return _DocumentEvent(Doc, _GET_PY_FUNCS(DocumentOpen));
    }

    static HRESULT _NewDocument(wpsapi::_Document *Doc)
    {
        return _DocumentEvent(Doc, _GET_PY_FUNCS(NewDocument));
    }

    static HRESULT _DocumentSync(wpsapi::_Document *Doc, wpsapi::MsoSyncEventType SyncEventType)
    {
        auto pyFuncs = _GET_PY_FUNCS(DocumentSync);
        if (pyFuncs.empty())
            return E_FAIL;

        SIP_BLOCK_THREADS

        PyObject *pyDoc = Doc == nullptr ? Py_None : sipConvertFromType(Doc, sipType_wpsapi__Document, 0);
        for (auto &pyFunc : pyFuncs)
        {
            PyObject *ret = PyObject_CallFunction(pyFunc, "(OI)", pyDoc, SyncEventType);
            if (ret)
            {
                PyErr_Clear();
                Py_DECREF(ret);
            }
        }

        SIP_UNBLOCK_THREADS
        return S_OK;
    }

    static HRESULT _Quit()
    {
        return _callPyFunc(_GET_PY_FUNCS(Quit));
    }

    static HRESULT _WindowActivate(wpsapi::_Document *Doc, wpsapi::Window *Wn)
    {
        PyObject *pyDoc = _convertFromType(Doc, sipType_wpsapi__Document);
        PyObject *pyWn = _convertFromType(Wn, sipType_wpsapi_Window);
        return _callPyFunc(_GET_PY_FUNCS(WindowActivate), pyDoc, pyWn);
    }

    static HRESULT _WindowDeactivate(wpsapi::_Document *Doc, wpsapi::Window *Wn)
    {
        PyObject *pyDoc = _convertFromType(Doc, sipType_wpsapi__Document);
        PyObject *pyWn = _convertFromType(Wn, sipType_wpsapi_Window);
        return _callPyFunc(_GET_PY_FUNCS(WindowDeactivate), pyDoc, pyWn);
    }

    static HRESULT _WindowSize(wpsapi::_Document *Doc, wpsapi::Window *Wn)
    {
        PyObject *pyDoc = _convertFromType(Doc, sipType_wpsapi__Document);
        PyObject *pyWn = _convertFromType(Wn, sipType_wpsapi_Window);
        return _callPyFunc(_GET_PY_FUNCS(WindowSize), pyDoc, pyWn);
    }

    static HRESULT _WindowBeforeDoubleClick(wpsapi::Selection *Sel, VARIANT_BOOL *Cancel)
    {
        PyObject *pySel = _convertFromType(Sel, sipType_wpsapi_Selection);
        return _doCancelEvent(pySel, Cancel, _GET_PY_FUNCS(WindowBeforeDoubleClick));
    }

    static HRESULT _WindowBeforeRightClick(wpsapi::Selection *Sel, VARIANT_BOOL *Cancel)
    {
        PyObject *pySel = _convertFromType(Sel, sipType_wpsapi_Selection);
        return _doCancelEvent(pySel, Cancel, _GET_PY_FUNCS(WindowBeforeRightClick));
    }

    static HRESULT _WindowSelectionChange(wpsapi::Selection *Sel)
    {
        PyObject *pySel = _convertFromType(Sel, sipType_wpsapi_Selection);
        return _callPyFunc(_GET_PY_FUNCS(WindowSelectionChange), pySel);
    }

    #define _FUNC(name) std::make_pair(__X(#name), (void *)_##name)
    static void* _registerFunc(const IID &iid, const BSTR eventName, PyObject *pyFunc)
    {
        if (g_eventMap.empty())
        {
            // ApplicationEvents4
            {
                EventFuncs events;
                events[_FUNC(DocumentBeforeClose)] = PyFuncs();
                events[_FUNC(DocumentBeforeSave)] = PyFuncs();
                events[_FUNC(DocumentBeforePrint)] = PyFuncs();
                events[_FUNC(DocumentChange)] = PyFuncs();
                events[_FUNC(DocumentOpen)] = PyFuncs();
                events[_FUNC(NewDocument)] = PyFuncs();
                events[_FUNC(DocumentSync)] = PyFuncs();
                events[_FUNC(Quit)] = PyFuncs(); // no works...

                events[_FUNC(WindowActivate)] = PyFuncs();
                events[_FUNC(WindowDeactivate)] = PyFuncs();
                events[_FUNC(WindowSize)] = PyFuncs();
                events[_FUNC(WindowBeforeDoubleClick)] = PyFuncs();
                events[_FUNC(WindowBeforeRightClick)] = PyFuncs();
                events[_FUNC(WindowSelectionChange)] = PyFuncs();

                g_eventMap[wpsapi::DIID_ApplicationEvents4] = events;
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

    virtual HRESULT getWpsApplication(wpsapi::_Application **app /Out/) = 0;
    %MethodCode
        sipRes = sipCpp->getWpsApplication((IUnknown **)&a0);
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
