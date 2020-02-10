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
    struct TextFrame : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_MarginBottom(
            single *MarginBottom /Out/) = 0;

        virtual HRESULT put_MarginBottom(
            single MarginBottom) = 0;

        virtual HRESULT get_MarginLeft(
            single *MarginLeft /Out/) = 0;

        virtual HRESULT put_MarginLeft(
            single MarginLeft) = 0;

        virtual HRESULT get_MarginRight(
            single *MarginRight /Out/) = 0;

        virtual HRESULT put_MarginRight(
            single MarginRight) = 0;

        virtual HRESULT get_MarginTop(
            single *MarginTop /Out/) = 0;

        virtual HRESULT put_MarginTop(
            single MarginTop) = 0;

        virtual HRESULT get_Orientation(
            MsoTextOrientation *Orientation /Out/) = 0;

        virtual HRESULT put_Orientation(
            MsoTextOrientation Orientation) = 0;
    };

    struct TextFrame2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_MarginBottom(
            single *MarginBottom /Out/) = 0;

        virtual HRESULT put_MarginBottom(
            single MarginBottom) = 0;

        virtual HRESULT get_MarginLeft(
            single *MarginLeft /Out/) = 0;

        virtual HRESULT put_MarginLeft(
            single MarginLeft) = 0;

        virtual HRESULT get_MarginRight(
            single *MarginRight /Out/) = 0;

        virtual HRESULT put_MarginRight(
            single MarginRight) = 0;

        virtual HRESULT get_MarginTop(
            single *MarginTop /Out/) = 0;

        virtual HRESULT put_MarginTop(
            single MarginTop) = 0;

        virtual HRESULT get_Orientation(
            MsoTextOrientation *Orientation /Out/) = 0;

        virtual HRESULT put_Orientation(
            MsoTextOrientation Orientation) = 0;

        virtual HRESULT get_HorizontalAnchor(
            MsoHorizontalAnchor *HorizontalAnchor /Out/) = 0;

        virtual HRESULT put_HorizontalAnchor(
            MsoHorizontalAnchor HorizontalAnchor) = 0;

        virtual HRESULT get_VerticalAnchor(
            MsoVerticalAnchor *VerticalAnchor /Out/) = 0;

        virtual HRESULT put_VerticalAnchor(
            MsoVerticalAnchor VerticalAnchor) = 0;

        virtual HRESULT get_PathFormat(
            MsoPathFormat *PathFormat /Out/) = 0;

        virtual HRESULT put_PathFormat(
            MsoPathFormat PathFormat) = 0;

        virtual HRESULT get_WarpFormat(
            MsoWarpFormat *WarpFormat /Out/) = 0;

        virtual HRESULT put_WarpFormat(
            MsoWarpFormat WarpFormat) = 0;

        virtual HRESULT get_WordArtformat(
            MsoPresetTextEffect *WordArtformat /Out/) = 0;

        virtual HRESULT put_WordArtformat(
            MsoPresetTextEffect WordArtformat) = 0;

        virtual HRESULT get_WordWrap(
            MsoTriState *WordWrap /Out/) = 0;

        virtual HRESULT put_WordWrap(
            MsoTriState WordWrap) = 0;

        virtual HRESULT get_AutoSize(
            MsoAutoSize *AutoSize /Out/) = 0;

        virtual HRESULT put_AutoSize(
            MsoAutoSize AutoSize) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **ThreeD /Out/) = 0;

        virtual HRESULT get_HasText(
            MsoTriState *pHasText /Out/) = 0;

        virtual HRESULT get_TextRange(
            TextRange2 **Range /Out/) = 0;

        virtual HRESULT get_Column(
            TextColumn2 **Column /Out/) = 0;

        virtual HRESULT get_Ruler(
            Ruler2 **Ruler /Out/) = 0;

        virtual HRESULT DeleteText() = 0;

        virtual HRESULT get_NoTextRotation(
            MsoTriState *NoTextRotation /Out/) = 0;

        virtual HRESULT put_NoTextRotation(
            MsoTriState NoTextRotation) = 0;
    };

    struct TextRange2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Text(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR pbstrText) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            TextRange2 **Item /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Paragraphs(
            int Start,
            int Length,
            TextRange2 **Range /Out/) = 0;

        virtual HRESULT get_Sentences(
            int Start,
            int Length,
            TextRange2 **Range /Out/) = 0;

        virtual HRESULT get_Words(
            int Start,
            int Length,
            TextRange2 **Range /Out/) = 0;

        virtual HRESULT get_Characters(
            int Start,
            int Length,
            TextRange2 **Range /Out/) = 0;

        virtual HRESULT get_Lines(
            int Start,
            int Length,
            TextRange2 **Range /Out/) = 0;

        virtual HRESULT get_Runs(
            int Start,
            int Length,
            TextRange2 **Range /Out/) = 0;

        virtual HRESULT get_ParagraphFormat(
            ParagraphFormat2 **Format /Out/) = 0;

        virtual HRESULT get_Font(
            Font2 **Font /Out/) = 0;

        virtual HRESULT get_Length(
            int *Length /Out/) = 0;

        virtual HRESULT get_Start(
            int *Start /Out/) = 0;

        virtual HRESULT get_BoundLeft(
            single *BoundLeft /Out/) = 0;

        virtual HRESULT get_BoundTop(
            single *BoundTop /Out/) = 0;

        virtual HRESULT get_BoundWidth(
            single *BoundWidth /Out/) = 0;

        virtual HRESULT get_BoundHeight(
            single *BoundHeight /Out/) = 0;

        virtual HRESULT TrimText(
            TextRange2 **TrimText /Out/) = 0;

        virtual HRESULT InsertAfter(
            BSTR NewText,
            TextRange2 **TextRange /Out/) = 0;

        virtual HRESULT InsertBefore(
            BSTR NewText,
            TextRange2 **TextRange /Out/) = 0;

        virtual HRESULT InsertSymbol(
            BSTR FontName,
            int CharNumber,
            MsoTriState Unicode,
            TextRange2 **TextRange /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Paste(
            TextRange2 **TextRange /Out/) = 0;

        virtual HRESULT PasteSpecial(
            MsoClipboardFormat Format,
            TextRange2 **TextRange /Out/) = 0;

        virtual HRESULT ChangeCase(
            MsoTextChangeCase Type) = 0;

        virtual HRESULT AddPeriods() = 0;

        virtual HRESULT RemovePeriods() = 0;

        virtual HRESULT Find(
            BSTR FindWhat,
            int After,
            MsoTriState MatchCase,
            MsoTriState WholeWords,
            TextRange2 **TextRange /Out/) = 0;

        virtual HRESULT Replace(
            BSTR FindWhat,
            BSTR ReplaceWhat,
            int After,
            MsoTriState MatchCase,
            MsoTriState WholeWords,
            TextRange2 **TextRange /Out/) = 0;

        virtual HRESULT RotatedBounds(
            single *X1 /Out/,
            single *Y1 /Out/,
            single *X2 /Out/,
            single *Y2 /Out/,
            single *X3 /Out/,
            single *Y3 /Out/,
            single *x4 /Out/,
            single *y4 /Out/) = 0;

        virtual HRESULT get_LanguageID(
            MsoLanguageID *LanguageID /Out/) = 0;

        virtual HRESULT put_LanguageID(
            MsoLanguageID LanguageID) = 0;

        virtual HRESULT RtlRun() = 0;

        virtual HRESULT LtrRun() = 0;

        virtual HRESULT get_MathZones(
            int Start,
            int Length,
            TextRange2 **Range /Out/) = 0;

        virtual HRESULT InsertChartField(
            MsoChartFieldType ChartFieldType,
            BSTR Formula,
            int Position,
            TextRange2 **Range /Out/) = 0;
    };

    struct Ruler2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Levels(
            RulerLevels2 **RulerLevels /Out/) = 0;

        virtual HRESULT get_TabStops(
            TabStops2 **TabStops /Out/) = 0;
    };

    struct RulerLevels2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            RulerLevel2 **RulerLevel /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;
    };

    struct RulerLevel2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_FirstMargin(
            single *FirstMargin /Out/) = 0;

        virtual HRESULT put_FirstMargin(
            single FirstMargin) = 0;

        virtual HRESULT get_LeftMargin(
            single *LeftMargin /Out/) = 0;

        virtual HRESULT put_LeftMargin(
            single LeftMargin) = 0;
    };

    struct TabStops2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Item(
            VARIANT Index,
            TabStop2 **TabStop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Add(
            MsoTabStopType Type,
            single Position,
            TabStop2 **TabStop /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT get_DefaultSpacing(
            single *Spacing /Out/) = 0;

        virtual HRESULT put_DefaultSpacing(
            single Spacing) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;
    };

    struct TabStop2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT get_Position(
            single *Position /Out/) = 0;

        virtual HRESULT put_Position(
            single Position) = 0;

        virtual HRESULT get_Type(
            MsoTabStopType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoTabStopType Type) = 0;
    };

    struct ParagraphFormat2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Alignment(
            MsoParagraphAlignment *Alignment /Out/) = 0;

        virtual HRESULT put_Alignment(
            MsoParagraphAlignment Alignment) = 0;

        virtual HRESULT get_BaselineAlignment(
            MsoBaselineAlignment *BaselineAlignment /Out/) = 0;

        virtual HRESULT put_BaselineAlignment(
            MsoBaselineAlignment BaselineAlignment) = 0;

        virtual HRESULT get_Bullet(
            BulletFormat2 **Bullet /Out/) = 0;

        virtual HRESULT get_FarEastLineBreakLevel(
            MsoTriState *Break /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLevel(
            MsoTriState Break) = 0;

        virtual HRESULT get_FirstLineIndent(
            single *Indent /Out/) = 0;

        virtual HRESULT put_FirstLineIndent(
            single Indent) = 0;

        virtual HRESULT get_HangingPunctuation(
            MsoTriState *Hanging /Out/) = 0;

        virtual HRESULT put_HangingPunctuation(
            MsoTriState Hanging) = 0;

        virtual HRESULT get_IndentLevel(
            int *Level /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            int Level) = 0;

        virtual HRESULT get_LeftIndent(
            single *Indent /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single Indent) = 0;

        virtual HRESULT get_LineRuleAfter(
            MsoTriState *LineRule /Out/) = 0;

        virtual HRESULT put_LineRuleAfter(
            MsoTriState LineRule) = 0;

        virtual HRESULT get_LineRuleBefore(
            MsoTriState *LineRule /Out/) = 0;

        virtual HRESULT put_LineRuleBefore(
            MsoTriState LineRule) = 0;

        virtual HRESULT get_LineRuleWithin(
            MsoTriState *LineRule /Out/) = 0;

        virtual HRESULT put_LineRuleWithin(
            MsoTriState LineRule) = 0;

        virtual HRESULT get_RightIndent(
            single *Indent /Out/) = 0;

        virtual HRESULT put_RightIndent(
            single Indent) = 0;

        virtual HRESULT get_SpaceAfter(
            single *Space /Out/) = 0;

        virtual HRESULT put_SpaceAfter(
            single Space) = 0;

        virtual HRESULT get_SpaceBefore(
            single *Space /Out/) = 0;

        virtual HRESULT put_SpaceBefore(
            single Space) = 0;

        virtual HRESULT get_SpaceWithin(
            single *Space /Out/) = 0;

        virtual HRESULT put_SpaceWithin(
            single Space) = 0;

        virtual HRESULT get_TabStops(
            TabStops2 **TabStops /Out/) = 0;

        virtual HRESULT get_TextDirection(
            MsoTextDirection *Direction /Out/) = 0;

        virtual HRESULT put_TextDirection(
            MsoTextDirection Direction) = 0;

        virtual HRESULT get_WordWrap(
            MsoTriState *WordWrap /Out/) = 0;

        virtual HRESULT put_WordWrap(
            MsoTriState WordWrap) = 0;
    };

    struct BulletFormat2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Character(
            int *Character /Out/) = 0;

        virtual HRESULT put_Character(
            int Character) = 0;

        virtual HRESULT get_Font(
            Font2 **Font /Out/) = 0;

        virtual HRESULT get_Number(
            int *Number /Out/) = 0;

        virtual HRESULT Picture(
            BSTR FileName) = 0;

        virtual HRESULT get_RelativeSize(
            single *Size /Out/) = 0;

        virtual HRESULT put_RelativeSize(
            single Size) = 0;

        virtual HRESULT get_StartValue(
            int *Start /Out/) = 0;

        virtual HRESULT put_StartValue(
            int Start) = 0;

        virtual HRESULT get_Style(
            MsoNumberedBulletStyle *Style /Out/) = 0;

        virtual HRESULT put_Style(
            MsoNumberedBulletStyle Style) = 0;

        virtual HRESULT get_Type(
            MsoBulletType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoBulletType Type) = 0;

        virtual HRESULT get_UseTextColor(
            MsoTriState *UseTextColor /Out/) = 0;

        virtual HRESULT put_UseTextColor(
            MsoTriState UseTextColor) = 0;

        virtual HRESULT get_UseTextFont(
            MsoTriState *UseTextFont /Out/) = 0;

        virtual HRESULT put_UseTextFont(
            MsoTriState UseTextFont) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;
    };

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