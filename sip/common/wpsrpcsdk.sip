%Include typedef.sip
%Include objbase.sip
%Include objidl.sip
%Include oaidl.sip

struct IKRpcClient /Abstract/
{
%TypeHeaderCode
    #include <pre_stddef.h>
    #include <kfc/guid.h>
    #include <int.h>
    #include <typedef.h>
    #include <guiddef.h>
    #include <objbase.h>
    #include <wpsrpcsdk.h>
    #include <vector>
%End

public:
    virtual HRESULT registerEvent(IDispatch *idisp, const IID &iid, DISPID id, PVOID pFunc) = 0;
    //virtual HRESULT registerEvent(IDispatch *idisp, const IID &iid, const BSTR eventName, PVOID pFunc) = 0;

    virtual HRESULT getWpsApplication(IUnknown **app) = 0;
    virtual HRESULT getEtApplication(IUnknown **app) = 0;
    virtual HRESULT getWppApplication(IUnknown **app) = 0;

    //virtual HRESULT setProcessPath(const BSTR exePath) = 0;

    // virtual HRESULT setProcessArgs(int argc, BSTR args[]) = 0;
    virtual HRESULT setProcessArgs(SIP_PYLIST args /TypeHint="List[str]"/) = 0;
    %MethodCode
        Py_ssize_t argc = PyList_Size(a0);
        BSTR* bstrArgs = new BSTR[argc];

        auto _toUtf16 = [](const wchar_t *str) -> std::vector<WCHAR>
        {
            const wchar_t *p = str;
            std::vector<WCHAR> buffer;
            while(*p)
            {
                wchar_t wch = *p++;
                if(wch <= 0xFFFF)
                {
                    if(wch >= 0xD800 && wch <= 0xDFFF)
                        buffer.push_back(0xFFFD);
                    else
                        buffer.push_back(wch);
                }
                else if(wch > 0x10FFFF)
                {
                    buffer.push_back(0xFFFD);
                }
                else
                {
                    wch -= 0x10000;
                    buffer.push_back((wch >> 10) + 0xD800);
                    buffer.push_back((wch & 0x3FFUL) + 0xDC00);
                }
            }

            buffer.push_back(0);
            return buffer;
        };

        for (int i = 0; i < argc; ++i)
        {
            bstrArgs[i] = 0;

            PyObject *strObj = PyList_GetItem(a0, i);
            wchar_t *str = sipUnicode_AsWString(strObj);
            if (str && *str)
                bstrArgs[i] = _XSysAllocString(_toUtf16(str).data());
        }

        if (!sipIsErr)
        {
            sipCpp->setProcessArgs(argc, bstrArgs);
        }

        for (int i = 0; i < argc; ++i)
            _XSysFreeString(bstrArgs[i]);

        delete [] bstrArgs;
    %End
    virtual HRESULT getProcessPid(LONGLONG *pid) = 0;

    virtual HRESULT setStartTimeout(int time_usec) = 0;
    virtual HRESULT setWpsWid(LONGLONG wid) = 0;
};
