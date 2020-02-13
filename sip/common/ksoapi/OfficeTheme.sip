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
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_ThemeColorScheme(
            ThemeColorScheme **ThemeColorScheme /Out/) = 0;

        virtual HRESULT get_ThemeFontScheme(
            ThemeFontScheme **ThemeFontScheme /Out/) = 0;

        virtual HRESULT get_ThemeEffectScheme(
            ThemeEffectScheme **ThemeEffectScheme /Out/) = 0;

    };
};
