/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct ThemeFontScheme : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Load(
            BSTR FileName) = 0;

        virtual HRESULT Save(
            BSTR FileName) = 0;

        virtual HRESULT get_MinorFont(
            ThemeFonts **MinorFont /Out/) = 0;

        virtual HRESULT get_MajorFont(
            ThemeFonts **MajorFont /Out/) = 0;

        ThemeFonts* getMinorFont();
        %MethodCode
            ksoapi::ThemeFonts *prop = nullptr;
            HRESULT hr = sipCpp->get_MinorFont(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinorFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MinorFont, get=getMinorFont)

        ThemeFonts* getMajorFont();
        %MethodCode
            ksoapi::ThemeFonts *prop = nullptr;
            HRESULT hr = sipCpp->get_MajorFont(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MajorFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MajorFont, get=getMajorFont)
    };
};
