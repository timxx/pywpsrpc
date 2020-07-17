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
    struct OfficeTheme : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_ThemeColorScheme(
            ThemeColorScheme **ThemeColorScheme /Out/) = 0;

        virtual HRESULT get_ThemeFontScheme(
            ThemeFontScheme **ThemeFontScheme /Out/) = 0;

        virtual HRESULT get_ThemeEffectScheme(
            ThemeEffectScheme **ThemeEffectScheme /Out/) = 0;

        ThemeColorScheme* getThemeColorScheme();
        %MethodCode
            ksoapi::ThemeColorScheme *prop = nullptr;
            HRESULT hr = sipCpp->get_ThemeColorScheme(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThemeColorScheme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThemeColorScheme, get=getThemeColorScheme)

        ThemeFontScheme* getThemeFontScheme();
        %MethodCode
            ksoapi::ThemeFontScheme *prop = nullptr;
            HRESULT hr = sipCpp->get_ThemeFontScheme(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThemeFontScheme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThemeFontScheme, get=getThemeFontScheme)

        ThemeEffectScheme* getThemeEffectScheme();
        %MethodCode
            ksoapi::ThemeEffectScheme *prop = nullptr;
            HRESULT hr = sipCpp->get_ThemeEffectScheme(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThemeEffectScheme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThemeEffectScheme, get=getThemeEffectScheme)
    };
};
