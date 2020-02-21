/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/


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
    if (str)
    {
        BSTR *bstr = new BSTR;
        *bstr = _SysAllocString(_toUtf16(str).data());
        *sipCppPtr = bstr;

        sipFree(str);
    }
    return sipGetState(sipTransferObj);
%End

%ConvertFromTypeCode
    auto _isSurrogate = [](WCHAR wch) -> bool
    {
        return (wch - 0xD800u) < 0x0800u;
    };

    auto _isHighSurrogate = [](WCHAR wch) -> bool
    {
        return (wch & 0xFFFFFC00) == 0xD800;
    };

    auto _isLowSurrogate = [](WCHAR wch) -> bool
    {
        return (wch & 0xFFFFFC00) == 0xDC00;
    };

    auto _toUtf32 = [&](const WCHAR *str, size_t len, uint &maxChar) -> std::vector<wchar_t>
    {
        std::vector<wchar_t> buffer;

        size_t i = 0;
        while (i < len)
        {
            const WCHAR wch = str[i++];
            if (!_isSurrogate(wch))
            {
                buffer.push_back(wch);
                if (wch > maxChar)
                    maxChar = (wch <= 0xFF) ? 0xFF : 0xFFFF;
            }
            else
            {
                if (_isHighSurrogate(wch) && (i < len) && _isLowSurrogate(str[i]))
                {
                    wchar_t ucs4 = (wch << 10) + str[i] - 0x35FDC00;
                    buffer.push_back(ucs4);

                    maxChar = 0x10FFFF;
                    ++i;
                }
                else
                {
                    // maybe invalid encoding
                    // buffer.push_back(0);
                }
            }
        }

        return buffer;
    };

    size_t len = *sipCpp ? _SysStringLen(*sipCpp) : 0;
    if (len == 0)
        return Py_None;

    uint maxChar = 0x7F;
    std::vector<wchar_t> buffer = _toUtf32(*sipCpp, len, maxChar);

    int kind = 0;
    void *data = nullptr;
    PyObject *obj = sipUnicodeNew(len, maxChar, &kind, &data);
    if (!obj)
        return nullptr;

    for (size_t i = 0; i < buffer.size(); ++i)
        sipUnicodeWrite(kind, data, i, buffer[i]);

    return obj;
%End
};
