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
};
