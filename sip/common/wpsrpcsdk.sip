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
public:
    virtual HRESULT registerEvent(IDispatch *idisp, const IID &iid, DISPID id, PVOID pFunc) = 0;
    virtual HRESULT registerEvent(IDispatch *idisp, const IID &iid, const BSTR eventName, PVOID pFunc) = 0;

    virtual HRESULT getWpsApplication(IUnknown **app /Out/) = 0;
    virtual HRESULT getEtApplication(IUnknown **app /Out/) = 0;
    virtual HRESULT getWppApplication(IUnknown **app /Out/) = 0;

    virtual HRESULT setProcessPath(const BSTR exePath) = 0;

    // virtual HRESULT setProcessArgs(int argc, BSTR args[]) = 0;
    virtual HRESULT setProcessArgs(SIP_PYLIST args /TypeHint="List[str]"/) = 0;
    %MethodCode
        Py_ssize_t argc = PyList_Size(a0);
        std::vector<BSTR> bstrArgs;
        std::vector<BSTR*> bstrPtrs;

        for (int i = 0; i < argc; ++i)
        {
            PyObject *strObj = PyList_GetItem(a0, i);
            BSTR* pStr = reinterpret_cast<BSTR*>(sipConvertToType(strObj,
                sipType_BSTR, nullptr, SIP_NO_CONVERTORS, 0, &sipIsErr));

            bstrArgs.push_back(pStr ? *pStr : nullptr);
            bstrPtrs.push_back(pStr);

            if (sipIsErr)
                break;
        }

        sipRes = E_FAIL;
        if (!sipIsErr)
            sipRes = sipCpp->setProcessArgs(argc, bstrArgs.data());

        for (int i = 0; i < argc; ++i)
        {
            SysFreeString(bstrArgs[i]);
            sipReleaseType(bstrPtrs[i], sipType_BSTR, 0);
        }

    %End
    virtual HRESULT getProcessPid(LONGLONG *pid /Out/) = 0;

    virtual HRESULT setStartTimeout(int time_usec) = 0;
    virtual HRESULT setWpsWid(LONGLONG wid) = 0;
};
