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
    struct WebPageFont : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_ProportionalFont(
            BSTR *pstr /Out/) = 0;

        virtual HRESULT put_ProportionalFont(
            BSTR pstr) = 0;

        virtual HRESULT get_ProportionalFontSize(
            single *pf /Out/) = 0;

        virtual HRESULT put_ProportionalFontSize(
            single pf) = 0;

        virtual HRESULT get_FixedWidthFont(
            BSTR *pstr /Out/) = 0;

        virtual HRESULT put_FixedWidthFont(
            BSTR pstr) = 0;

        virtual HRESULT get_FixedWidthFontSize(
            single *pf /Out/) = 0;

        virtual HRESULT put_FixedWidthFontSize(
            single pf) = 0;

    };
};
