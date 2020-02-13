/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IFont : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Background(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Background(
            VARIANT RHS) = 0;

        virtual HRESULT get_Bold(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Bold(
            VARIANT RHS) = 0;

        virtual HRESULT get_Color(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT RHS) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT RHS) = 0;

        virtual HRESULT get_FontStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FontStyle(
            VARIANT RHS) = 0;

        virtual HRESULT get_Italic(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Italic(
            VARIANT RHS) = 0;

        virtual HRESULT get_Name(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            VARIANT RHS) = 0;

        virtual HRESULT get_OutlineFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_OutlineFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_Shadow(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT RHS) = 0;

        virtual HRESULT get_Size(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Size(
            VARIANT RHS) = 0;

        virtual HRESULT get_Strikethrough(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Strikethrough(
            VARIANT RHS) = 0;

        virtual HRESULT get_Subscript(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Subscript(
            VARIANT RHS) = 0;

        virtual HRESULT get_Superscript(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Superscript(
            VARIANT RHS) = 0;

        virtual HRESULT get_Underline(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Underline(
            VARIANT RHS) = 0;

        virtual HRESULT get_ThemeColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ThemeColor(
            VARIANT RHS) = 0;

        virtual HRESULT get_TintAndShade(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TintAndShade(
            VARIANT RHS) = 0;

        virtual HRESULT get_ThemeFont(
            XlThemeFont *RHS /Out/) = 0;

        virtual HRESULT put_ThemeFont(
            XlThemeFont RHS) = 0;

    };
};
