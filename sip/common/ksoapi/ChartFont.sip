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
    struct ChartFont : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Background(
            VARIANT pval) = 0;

        virtual HRESULT get_Background(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Bold(
            VARIANT pval) = 0;

        virtual HRESULT get_Bold(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT pval) = 0;

        virtual HRESULT get_Color(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT pval) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_FontStyle(
            VARIANT pval) = 0;

        virtual HRESULT get_FontStyle(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Italic(
            VARIANT pval) = 0;

        virtual HRESULT get_Italic(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Name(
            VARIANT pval) = 0;

        virtual HRESULT get_Name(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_OutlineFont(
            VARIANT pval) = 0;

        virtual HRESULT get_OutlineFont(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT pval) = 0;

        virtual HRESULT get_Shadow(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Size(
            VARIANT pval) = 0;

        virtual HRESULT get_Size(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_StrikeThrough(
            VARIANT pval) = 0;

        virtual HRESULT get_StrikeThrough(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Subscript(
            VARIANT pval) = 0;

        virtual HRESULT get_Subscript(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Superscript(
            VARIANT pval) = 0;

        virtual HRESULT get_Superscript(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Underline(
            VARIANT pval) = 0;

        virtual HRESULT get_Underline(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

    };
};
