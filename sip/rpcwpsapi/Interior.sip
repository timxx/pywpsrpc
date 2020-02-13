/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Interior : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Color(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT prop) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT prop) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT prop) = 0;

        virtual HRESULT get_Pattern(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Pattern(
            VARIANT prop) = 0;

        virtual HRESULT get_PatternColor(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_PatternColor(
            VARIANT prop) = 0;

        virtual HRESULT get_PatternColorIndex(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_PatternColorIndex(
            VARIANT prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

    };
};
