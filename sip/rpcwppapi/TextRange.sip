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
            int Start,
            int Length,
            TextRange **Paragraphs /Out/) = 0;

        virtual HRESULT Sentences(
            int Start,
            int Length,
            TextRange **Sentences /Out/) = 0;

        virtual HRESULT Words(
            int Start,
            int Length,
            TextRange **Words /Out/) = 0;

        virtual HRESULT Characters(
            int Start,
            int Length,
            TextRange **Characters /Out/) = 0;

        virtual HRESULT Lines(
            int Start,
            int Length,
            TextRange **Lines /Out/) = 0;

        virtual HRESULT Runs(
            int Start,
            int Length,
            TextRange **Runs /Out/) = 0;

        virtual HRESULT TrimText(
            TextRange **TrimText /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR Text) = 0;

        virtual HRESULT InsertAfter(
            BSTR NewText,
            TextRange **After /Out/) = 0;

        virtual HRESULT InsertBefore(
            BSTR NewText,
            TextRange **Before /Out/) = 0;

        virtual HRESULT InsertDateTime(
            PpDateTimeFormat DateTimeFormat,
            MsoTriState InsertAsField,
            TextRange **DateTime /Out/) = 0;

        virtual HRESULT InsertSlideNumber(
            TextRange **SlideNumber /Out/) = 0;

        virtual HRESULT InsertSymbol(
            BSTR FontName,
            int CharNumber,
            MsoTriState Unicode,
            TextRange **Symbol /Out/) = 0;

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
            int After,
            MsoTriState MatchCase,
            MsoTriState WholeWords,
            TextRange **Find /Out/) = 0;

        virtual HRESULT Replace(
            BSTR FindWhat,
            BSTR ReplaceWhat,
            int After,
            MsoTriState MatchCase,
            MsoTriState WholeWords,
            TextRange **Replace /Out/) = 0;

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
            PpPasteDataType DataType,
            MsoTriState DisplayAsIcon,
            BSTR IconFileName,
            int IconIndex,
            BSTR IconLabel,
            MsoTriState Link,
            TextRange **PasteSpecial /Out/) = 0;

    };
};
