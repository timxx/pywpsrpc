/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct TextRange : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_ActionSettings(
            ActionSettings **ActionSettings /Out/) = 0;

        virtual HRESULT get_Start(
            long *Start /Out/) = 0;

        virtual HRESULT get_Length(
            long *Length /Out/) = 0;

        virtual HRESULT get_BoundLeft(
            single *BoundLeft /Out/) = 0;

        virtual HRESULT get_BoundTop(
            single *BoundTop /Out/) = 0;

        virtual HRESULT get_BoundWidth(
            single *BoundWidth /Out/) = 0;

        virtual HRESULT get_BoundHeight(
            single *BoundHeight /Out/) = 0;

        virtual HRESULT Paragraphs(
            int Start = 0,
            int Length = 0,
            TextRange **Paragraphs /Out/ = 0) = 0;

        virtual HRESULT Sentences(
            int Start = 0,
            int Length = 0,
            TextRange **Sentences /Out/ = 0) = 0;

        virtual HRESULT Words(
            int Start = 0,
            int Length = 0,
            TextRange **Words /Out/ = 0) = 0;

        virtual HRESULT Characters(
            int Start = 0,
            int Length = 0,
            TextRange **Characters /Out/ = 0) = 0;

        virtual HRESULT Lines(
            int Start = 0,
            int Length = 0,
            TextRange **Lines /Out/ = 0) = 0;

        virtual HRESULT Runs(
            int Start = 0,
            int Length = 0,
            TextRange **Runs /Out/ = 0) = 0;

        virtual HRESULT TrimText(
            TextRange **TrimText /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR Text) = 0;

        virtual HRESULT InsertAfter(
            BSTR NewText = 0,
            TextRange **After /Out/ = 0) = 0;

        virtual HRESULT InsertBefore(
            BSTR NewText = 0,
            TextRange **Before /Out/ = 0) = 0;

        virtual HRESULT InsertDateTime(
            PpDateTimeFormat DateTimeFormat,
            MsoTriState InsertAsField = wppapi::msoFalse,
            TextRange **DateTime /Out/ = 0) = 0;

        virtual HRESULT InsertSlideNumber(
            TextRange **SlideNumber /Out/) = 0;

        virtual HRESULT InsertSymbol(
            BSTR FontName,
            int CharNumber,
            MsoTriState Unicode = wppapi::msoFalse,
            TextRange **Symbol /Out/ = 0) = 0;

        virtual HRESULT get_Font(
            Font **Font /Out/) = 0;

        virtual HRESULT get_ParagraphFormat(
            ParagraphFormat **ParagraphFormat /Out/) = 0;

        virtual HRESULT get_IndentLevel(
            int *IndentLevel /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            int IndentLevel) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Paste(
            TextRange **Paste /Out/) = 0;

        virtual HRESULT ChangeCase(
            PpChangeCase Type) = 0;

        virtual HRESULT AddPeriods() = 0;

        virtual HRESULT RemovePeriods() = 0;

        virtual HRESULT Find(
            BSTR FindWhat,
            int After = 0,
            MsoTriState MatchCase = wppapi::msoTrue,
            MsoTriState WholeWords = wppapi::msoTrue,
            TextRange **Find /Out/ = 0) = 0;

        virtual HRESULT Replace(
            BSTR FindWhat,
            BSTR ReplaceWhat,
            int After = 0,
            MsoTriState MatchCase = wppapi::msoTrue,
            MsoTriState WholeWords = wppapi::msoTrue,
            TextRange **Replace /Out/ = 0) = 0;

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

        virtual HRESULT PasteSpecial(
            PpPasteDataType DataType = wppapi::ppPasteDefault,
            MsoTriState DisplayAsIcon = wppapi::msoFalse,
            BSTR IconFileName = 0,
            int IconIndex = 0,
            BSTR IconLabel = 0,
            MsoTriState Link = wppapi::msoFalse,
            TextRange **PasteSpecial /Out/ = 0) = 0;

    };
};
