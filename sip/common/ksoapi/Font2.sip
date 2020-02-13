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
    struct Font2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Bold(
            MsoTriState *Bold /Out/) = 0;

        virtual HRESULT put_Bold(
            MsoTriState Bold) = 0;

        virtual HRESULT get_Italic(
            MsoTriState *Italic /Out/) = 0;

        virtual HRESULT put_Italic(
            MsoTriState Italic) = 0;

        virtual HRESULT get_Strike(
            MsoTextStrike *Strike /Out/) = 0;

        virtual HRESULT put_Strike(
            MsoTextStrike Strike) = 0;

        virtual HRESULT get_Caps(
            MsoTextCaps *Caps /Out/) = 0;

        virtual HRESULT put_Caps(
            MsoTextCaps Caps) = 0;

        virtual HRESULT get_AutorotateNumbers(
            MsoTriState *RotateNumbers /Out/) = 0;

        virtual HRESULT put_AutorotateNumbers(
            MsoTriState RotateNumbers) = 0;

        virtual HRESULT get_BaselineOffset(
            single *Offset /Out/) = 0;

        virtual HRESULT put_BaselineOffset(
            single Offset) = 0;

        virtual HRESULT get_Kerning(
            single *KerningSize /Out/) = 0;

        virtual HRESULT put_Kerning(
            single KerningSize) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_Spacing(
            single *Spacing /Out/) = 0;

        virtual HRESULT put_Spacing(
            single Spacing) = 0;

        virtual HRESULT get_UnderlineStyle(
            MsoTextUnderlineType *Style /Out/) = 0;

        virtual HRESULT put_UnderlineStyle(
            MsoTextUnderlineType Style) = 0;

        virtual HRESULT get_Allcaps(
            MsoTriState *Allcaps /Out/) = 0;

        virtual HRESULT put_Allcaps(
            MsoTriState Allcaps) = 0;

        virtual HRESULT get_DoubleStrikeThrough(
            MsoTriState *DoubleStrikeThrough /Out/) = 0;

        virtual HRESULT put_DoubleStrikeThrough(
            MsoTriState DoubleStrikeThrough) = 0;

        virtual HRESULT get_Equalize(
            MsoTriState *Equalize /Out/) = 0;

        virtual HRESULT put_Equalize(
            MsoTriState Equalize) = 0;

        virtual HRESULT get_Fill(
            FillFormat **Fill /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **Glow /Out/) = 0;

        virtual HRESULT get_Reflection(
            ReflectionFormat **Reflection /Out/) = 0;

        virtual HRESULT get_Line(
            LineFormat **Line /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **Shadow /Out/) = 0;

        virtual HRESULT get_Highlight(
            ColorFormat **Highlight /Out/) = 0;

        virtual HRESULT get_UnderlineColor(
            ColorFormat **UnderlineColor /Out/) = 0;

        virtual HRESULT get_Smallcaps(
            MsoTriState *Smallcaps /Out/) = 0;

        virtual HRESULT put_Smallcaps(
            MsoTriState Smallcaps) = 0;

        virtual HRESULT get_SoftEdgeFormat(
            MsoSoftEdgeType *SoftEdgeFormat /Out/) = 0;

        virtual HRESULT put_SoftEdgeFormat(
            MsoSoftEdgeType SoftEdgeFormat) = 0;

        virtual HRESULT get_StrikeThrough(
            MsoTriState *StrikeThrough /Out/) = 0;

        virtual HRESULT put_StrikeThrough(
            MsoTriState StrikeThrough) = 0;

        virtual HRESULT get_Subscript(
            MsoTriState *Subscript /Out/) = 0;

        virtual HRESULT put_Subscript(
            MsoTriState Subscript) = 0;

        virtual HRESULT get_Superscript(
            MsoTriState *Superscript /Out/) = 0;

        virtual HRESULT put_Superscript(
            MsoTriState Superscript) = 0;

        virtual HRESULT get_WordArtformat(
            MsoPresetTextEffect *WordArtformat /Out/) = 0;

        virtual HRESULT put_WordArtformat(
            MsoPresetTextEffect WordArtformat) = 0;

        virtual HRESULT get_Embeddable(
            MsoTriState *Embeddable /Out/) = 0;

        virtual HRESULT get_Embedded(
            MsoTriState *Embedded /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT get_NameAscii(
            BSTR *NameAscii /Out/) = 0;

        virtual HRESULT put_NameAscii(
            BSTR NameAscii) = 0;

        virtual HRESULT get_NameComplexScript(
            BSTR *NameComplexScript /Out/) = 0;

        virtual HRESULT put_NameComplexScript(
            BSTR NameComplexScript) = 0;

        virtual HRESULT get_NameFarEast(
            BSTR *NameFarEast /Out/) = 0;

        virtual HRESULT put_NameFarEast(
            BSTR NameFarEast) = 0;

        virtual HRESULT get_NameOther(
            BSTR *NameOther /Out/) = 0;

        virtual HRESULT put_NameOther(
            BSTR NameOther) = 0;

    };
};
