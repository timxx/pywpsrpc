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

    static HRESULT _WorkbookEvent(etapi::_Workbook *Wb, const PyFuncs &pyFuncs)
    {
        PyObject *pyWb = _convertFromType(Wb, sipType_etapi__Workbook);
        return _callPyFunc(pyFuncs, pyWb);
    }

    static HRESULT _WorkbookEvent1(etapi::_Workbook *Wb, PyObject *arg, const PyFuncs &pyFuncs)
    {
        PyObject *pyWb = _convertFromType(Wb, sipType_etapi__Workbook);
        return _callPyFunc(pyFuncs, pyWb, arg);
    }

    static HRESULT _WorkbookBeforeClose(etapi::_Workbook *Wb, VARIANT_BOOL *Cancel)
    {
        PyObject *pyWb = _convertFromType(Wb, sipType_etapi__Workbook);
        return _doCancelEvent(pyWb, Cancel, _GET_PY_FUNCS(WorkbookBeforeClose));
    }

    static HRESULT _WorkbookBeforeSave(etapi::_Workbook* Wb, VARIANT_BOOL *SaveAsUI, VARIANT_BOOL *Cancel)
    {
        HRESULT hr = E_FAIL;
        SIP_BLOCK_THREADS

        std::list<PyObject*> pyFuncs = _GET_PY_FUNCS(WorkbookBeforeSave);
        if (!pyFuncs.empty())
            hr = S_OK;

        PyObject *pyWb = Wb == nullptr ? Py_None : sipConvertFromType(Wb, sipType_etapi__Workbook, 0);
        for (auto &pyFunc : pyFuncs)
        {
            PyObject *ret = PyObject_CallFunctionObjArgs(pyFunc, pyWb, nullptr);
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

    static HRESULT _WorkbookAfterSave(etapi::_Workbook *Wb, VARIANT_BOOL Success)
    {
        PyObject *pySuccess = (Success == VARIANT_FALSE) ? Py_False : Py_True;
        return _WorkbookEvent1(Wb, pySuccess, _GET_PY_FUNCS(WorkbookAfterSave));
    }

    static HRESULT _WorkbookBeforePrint(etapi::_Workbook *Wb, VARIANT_BOOL *Cancel)
    {
        PyObject *pyWb = _convertFromType(Wb, sipType_etapi__Workbook);
        return _doCancelEvent(pyWb, Cancel, _GET_PY_FUNCS(WorkbookBeforePrint));
    }

    static HRESULT _WorkbookNewSheet(etapi::_Workbook *Wb, etapi::_Worksheet *Sh)
    {
        PyObject *pySh = _convertFromType(Sh, sipType_etapi__Worksheet);
        return _WorkbookEvent1(Wb, pySh, _GET_PY_FUNCS(WorkbookNewSheet));
    }

    static HRESULT _NewWorkbook(etapi::_Workbook *Wb)
    {
        return _WorkbookEvent(Wb, _GET_PY_FUNCS(NewWorkbook));
    }

    static HRESULT _WorkbookOpen(etapi::_Workbook *Wb)
    {
        return _WorkbookEvent(Wb, _GET_PY_FUNCS(WorkbookOpen));
    }

    static HRESULT _WindowActivate(etapi::_Workbook *Wb, etapi::Window *Wn)
    {
        PyObject *pyWb = _convertFromType(Wb, sipType_etapi__Workbook);
        PyObject *pyWn = _convertFromType(Wn, sipType_etapi_Window);
        return _callPyFunc(_GET_PY_FUNCS(WindowActivate), pyWb, pyWn);
    }

    static HRESULT _WindowDeactivate(etapi::_Workbook *Wb, etapi::Window *Wn)
    {
        PyObject *pyWb = _convertFromType(Wb, sipType_etapi__Workbook);
        PyObject *pyWn = _convertFromType(Wn, sipType_etapi_Window);
        return _callPyFunc(_GET_PY_FUNCS(WindowDeactivate), pyWb, pyWn);
    }

    static HRESULT _WindowResize(etapi::_Workbook *Wb, etapi::Window *Wn)
    {
        PyObject *pyWb = _convertFromType(Wb, sipType_etapi__Workbook);
        PyObject *pyWn = _convertFromType(Wn, sipType_etapi_Window);
        return _callPyFunc(_GET_PY_FUNCS(WindowResize), pyWb, pyWn);
    }

    #define _FUNC(name) std::make_pair(__X(#name), (void *)_##name)
    static void* _registerFunc(const IID &iid, const BSTR eventName, PyObject *pyFunc)
    {
        if (g_eventMap.empty())
        {
            EventFuncs events;
            events[_FUNC(WorkbookBeforeClose)] = PyFuncs();
            events[_FUNC(WorkbookBeforeSave)] = PyFuncs();
            events[_FUNC(WorkbookAfterSave)] = PyFuncs();
            events[_FUNC(WorkbookBeforePrint)] = PyFuncs();
            events[_FUNC(WorkbookNewSheet)] = PyFuncs();
            events[_FUNC(NewWorkbook)] = PyFuncs();
            events[_FUNC(WorkbookOpen)] = PyFuncs();

            events[_FUNC(WindowActivate)] = PyFuncs();
            events[_FUNC(WindowDeactivate)] = PyFuncs();
            events[_FUNC(WindowResize)] = PyFuncs();

            g_eventMap[etapi::DIID_AppEvents] = events;
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

    virtual HRESULT getEtApplication(etapi::_Application **app /Out/) = 0;
    %MethodCode
        sipRes = sipCpp->getEtApplication((IUnknown **)&a0);
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
