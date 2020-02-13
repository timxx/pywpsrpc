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
    struct ChartFont : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Background(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Background(
            VARIANT prop) = 0;

        virtual HRESULT get_Bold(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Bold(
            VARIANT prop) = 0;

        virtual HRESULT get_Color(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT prop) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT prop) = 0;

        virtual HRESULT get_FontStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_FontStyle(
            VARIANT prop) = 0;

        virtual HRESULT get_Italic(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Italic(
            VARIANT prop) = 0;

        virtual HRESULT get_Name(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Name(
            VARIANT prop) = 0;

        virtual HRESULT get_OutlineFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_OutlineFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT prop) = 0;

        virtual HRESULT get_Size(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Size(
            VARIANT prop) = 0;

        virtual HRESULT get_StrikeThrough(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_StrikeThrough(
            VARIANT prop) = 0;

        virtual HRESULT get_Subscript(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Subscript(
            VARIANT prop) = 0;

        virtual HRESULT get_Superscript(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Superscript(
            VARIANT prop) = 0;

        virtual HRESULT get_Underline(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Underline(
            VARIANT prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

    };
};
