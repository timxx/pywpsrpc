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
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Load(
            BSTR FileName) = 0;

        virtual HRESULT Save(
            BSTR FileName) = 0;

        virtual HRESULT get_MinorFont(
            ThemeFonts **MinorFont /Out/) = 0;

        virtual HRESULT get_MajorFont(
            ThemeFonts **MajorFont /Out/) = 0;

    };
};
