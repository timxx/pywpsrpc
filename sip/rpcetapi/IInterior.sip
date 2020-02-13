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
    struct IInterior : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Color(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT RHS) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT RHS) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT RHS) = 0;

        virtual HRESULT get_Pattern(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Pattern(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternColor(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternColorIndex(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternColorIndex(
            VARIANT RHS) = 0;

        virtual HRESULT get_ThemeColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ThemeColor(
            VARIANT RHS) = 0;

        virtual HRESULT get_TintAndShade(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TintAndShade(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternThemeColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternThemeColor(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternTintAndShade(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternTintAndShade(
            VARIANT RHS) = 0;

        virtual HRESULT get_Gradient(
            IDispatch **RHS /Out/) = 0;

    };
};
