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
    struct _Font : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Duplicate(_Font **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Duplicate((wpsapi::Font**)&a0);
        %End

        virtual HRESULT get_Bold(
            long *prop /Out/) = 0;

        virtual HRESULT put_Bold(
            long prop) = 0;

        virtual HRESULT get_Italic(
            long *prop /Out/) = 0;

        virtual HRESULT put_Italic(
            long prop) = 0;

        virtual HRESULT get_Hidden(
            long *prop /Out/) = 0;

        virtual HRESULT put_Hidden(
            long prop) = 0;

        virtual HRESULT get_SmallCaps(
            long *prop /Out/) = 0;

        virtual HRESULT put_SmallCaps(
            long prop) = 0;

        virtual HRESULT get_AllCaps(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllCaps(
            long prop) = 0;

        virtual HRESULT get_StrikeThrough(
            long *prop /Out/) = 0;

        virtual HRESULT put_StrikeThrough(
            long prop) = 0;

        virtual HRESULT get_DoubleStrikeThrough(
            long *prop /Out/) = 0;

        virtual HRESULT put_DoubleStrikeThrough(
            long prop) = 0;

        virtual HRESULT get_ColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_Subscript(
            long *prop /Out/) = 0;

        virtual HRESULT put_Subscript(
            long prop) = 0;

        virtual HRESULT get_Superscript(
            long *prop /Out/) = 0;

        virtual HRESULT put_Superscript(
            long prop) = 0;

        virtual HRESULT get_Underline(
            WdUnderline *prop /Out/) = 0;

        virtual HRESULT put_Underline(
            WdUnderline prop) = 0;

        virtual HRESULT get_Size(
            single *prop /Out/) = 0;

        virtual HRESULT put_Size(
            single prop) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_Position(
            long *prop /Out/) = 0;

        virtual HRESULT put_Position(
            long prop) = 0;

        virtual HRESULT get_Spacing(
            single *prop /Out/) = 0;

        virtual HRESULT put_Spacing(
            single prop) = 0;

        virtual HRESULT get_Scaling(
            long *prop /Out/) = 0;

        virtual HRESULT put_Scaling(
            long prop) = 0;

        virtual HRESULT get_Shadow(
            long *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            long prop) = 0;

        virtual HRESULT get_Outline(
            long *prop /Out/) = 0;

        virtual HRESULT put_Outline(
            long prop) = 0;

        virtual HRESULT get_Emboss(
            long *prop /Out/) = 0;

        virtual HRESULT put_Emboss(
            long prop) = 0;

        virtual HRESULT get_Kerning(
            single *prop /Out/) = 0;

        virtual HRESULT put_Kerning(
            single prop) = 0;

        virtual HRESULT get_Engrave(
            long *prop /Out/) = 0;

        virtual HRESULT put_Engrave(
            long prop) = 0;

        virtual HRESULT get_Animation(
            WdAnimation *prop /Out/) = 0;

        virtual HRESULT put_Animation(
            WdAnimation prop) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_EmphasisMark(
            WdEmphasisMark *prop /Out/) = 0;

        virtual HRESULT put_EmphasisMark(
            WdEmphasisMark prop) = 0;

        virtual HRESULT get_DisableCharacterSpaceGrid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisableCharacterSpaceGrid(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NameFarEast(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameFarEast(
            BSTR prop) = 0;

        virtual HRESULT get_NameAscii(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameAscii(
            BSTR prop) = 0;

        virtual HRESULT get_NameOther(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameOther(
            BSTR prop) = 0;

        virtual HRESULT Grow() = 0;

        virtual HRESULT Shrink() = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT SetAsTemplateDefault() = 0;

        virtual HRESULT get_Color(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_Color(
            WdColor prop) = 0;

        virtual HRESULT get_BoldBi(
            long *prop /Out/) = 0;

        virtual HRESULT put_BoldBi(
            long prop) = 0;

        virtual HRESULT get_ItalicBi(
            long *prop /Out/) = 0;

        virtual HRESULT put_ItalicBi(
            long prop) = 0;

        virtual HRESULT get_SizeBi(
            single *prop /Out/) = 0;

        virtual HRESULT put_SizeBi(
            single prop) = 0;

        virtual HRESULT get_NameBi(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameBi(
            BSTR prop) = 0;

        virtual HRESULT get_ColorIndexBi(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ColorIndexBi(
            WdColorIndex prop) = 0;

        virtual HRESULT get_DiacriticColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_DiacriticColor(
            WdColor prop) = 0;

        virtual HRESULT get_UnderlineColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_UnderlineColor(
            WdColor prop) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **prop /Out/) = 0;

        virtual HRESULT put_Glow(
            GlowFormat *prop) = 0;

        virtual HRESULT get_Reflection(
            ReflectionFormat **prop /Out/) = 0;

        virtual HRESULT put_Reflection(
            ReflectionFormat *prop) = 0;

        virtual HRESULT get_TextShadow(
            ShadowFormat **prop /Out/) = 0;

        virtual HRESULT put_TextShadow(
            ShadowFormat *prop) = 0;

        virtual HRESULT get_Fill(
            FillFormat **prop /Out/) = 0;

        virtual HRESULT put_Fill(
            FillFormat *prop) = 0;

        virtual HRESULT get_Line(
            LineFormat **prop /Out/) = 0;

        virtual HRESULT put_Line(
            LineFormat *prop) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **prop /Out/) = 0;

        virtual HRESULT put_ThreeD(
            ThreeDFormat *prop) = 0;

        virtual HRESULT get_TextColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_Ligatures(
            WdLigatures *prop /Out/) = 0;

        virtual HRESULT put_Ligatures(
            WdLigatures prop) = 0;

        virtual HRESULT get_NumberForm(
            WdNumberForm *prop /Out/) = 0;

        virtual HRESULT put_NumberForm(
            WdNumberForm prop) = 0;

        virtual HRESULT get_NumberSpacing(
            WdNumberSpacing *prop /Out/) = 0;

        virtual HRESULT put_NumberSpacing(
            WdNumberSpacing prop) = 0;

        virtual HRESULT get_ContextualAlternates(
            long *prop /Out/) = 0;

        virtual HRESULT put_ContextualAlternates(
            long prop) = 0;

        virtual HRESULT get_StylisticSet(
            WdStylisticSet *prop /Out/) = 0;

        virtual HRESULT put_StylisticSet(
            WdStylisticSet prop) = 0;
    };
};