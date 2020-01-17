%Include guid.sip

%ModuleCode
    #include <kfc/guid.h>
%End

typedef unsigned char byte;
typedef CLSID *LPCLSID;
typedef IID *LPIID;
typedef WCHAR OLECHAR;
typedef OLECHAR *LPOLESTR;
typedef const OLECHAR *LPCOLESTR;
typedef double DATE;

// typedef OLECHAR* BSTR;
// TODO: AllowNone ???
%MappedType BSTR /TypeHint="str",TypeHintValue="''"/
{
%TypeHeaderCode
    #include <pre_stddef.h>
    #include <typedef.h>
    #include <objbase.h>
    #include <vector>
%End
%ConvertToTypeCode
    if (!sipIsErr)
        return PyUnicode_Check(sipPy);

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
    wchar_t *str = sipUnicode_AsWString(sipPy);
    BSTR *bstr = new BSTR;
    *bstr = SysAllocString(_toUtf16(str).data());
    *sipCppPtr = bstr;

    return sipGetState(sipTransferObj);
%End

%ConvertFromTypeCode
    return PyUnicode_FromKindAndData(PyUnicode_2BYTE_KIND,
        *sipCpp, SysStringLen(*sipCpp));
%End
};