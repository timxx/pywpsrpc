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
    struct Range : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_FormattedText(
            Range **prop /Out/) = 0;

        virtual HRESULT put_FormattedText(
            Range *prop) = 0;

        virtual HRESULT get_Start(
            long *prop /Out/) = 0;

        virtual HRESULT put_Start(
            long prop) = 0;

        virtual HRESULT get_End(
            long *prop /Out/) = 0;

        virtual HRESULT put_End(
            long prop) = 0;

        virtual HRESULT get_Font(
            Font **prop /Out/) = 0;

        virtual HRESULT put_Font(
            Font *prop) = 0;

        virtual HRESULT get_Duplicate(
            Range **prop /Out/) = 0;

        virtual HRESULT get_StoryType(
            WdStoryType *prop /Out/) = 0;

        virtual HRESULT get_Tables(
            Tables **prop /Out/) = 0;

        virtual HRESULT get_Words(
            Words **prop /Out/) = 0;

        virtual HRESULT get_Sentences(
            Sentences **prop /Out/) = 0;

        virtual HRESULT get_Characters(
            Characters **prop /Out/) = 0;

        virtual HRESULT get_Footnotes(
            Footnotes **prop /Out/) = 0;

        virtual HRESULT get_Endnotes(
            Endnotes **prop /Out/) = 0;

        virtual HRESULT get_Comments(
            Comments **prop /Out/) = 0;

        virtual HRESULT get_Cells(
            Cells **prop /Out/) = 0;

        virtual HRESULT get_Sections(
            Sections **prop /Out/) = 0;

        virtual HRESULT get_Paragraphs(
            Paragraphs **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_TextRetrievalMode(
            TextRetrievalMode **prop /Out/) = 0;

        virtual HRESULT put_TextRetrievalMode(
            TextRetrievalMode *prop) = 0;

        virtual HRESULT get_Fields(
            Fields **prop /Out/) = 0;

        virtual HRESULT get_FormFields(
            FormFields **prop /Out/) = 0;

        virtual HRESULT get_Frames(
            Frames **prop /Out/) = 0;

        virtual HRESULT get_ParagraphFormat(
            ParagraphFormat **prop /Out/) = 0;

        virtual HRESULT put_ParagraphFormat(
            ParagraphFormat *prop) = 0;

        virtual HRESULT get_ListFormat(
            ListFormat **prop /Out/) = 0;

        virtual HRESULT get_Bookmarks(
            Bookmarks **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Bold(
            long *prop /Out/) = 0;

        virtual HRESULT put_Bold(
            long prop) = 0;

        virtual HRESULT get_Italic(
            long *prop /Out/) = 0;

        virtual HRESULT put_Italic(
            long prop) = 0;

        virtual HRESULT get_Underline(
            WdUnderline *prop /Out/) = 0;

        virtual HRESULT put_Underline(
            WdUnderline prop) = 0;

        virtual HRESULT get_EmphasisMark(
            WdEmphasisMark *prop /Out/) = 0;

        virtual HRESULT put_EmphasisMark(
            WdEmphasisMark prop) = 0;

        virtual HRESULT get_DisableCharacterSpaceGrid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisableCharacterSpaceGrid(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Revisions(
            Revisions **prop /Out/) = 0;

        virtual HRESULT get_Style(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT *prop) = 0;

        virtual HRESULT get_StoryLength(
            long *prop /Out/) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_SynonymInfo(
            SynonymInfo **prop /Out/) = 0;

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **prop /Out/) = 0;

        virtual HRESULT get_ListParagraphs(
            ListParagraphs **prop /Out/) = 0;

        virtual HRESULT get_Subdocuments(
            Subdocuments **prop /Out/) = 0;

        virtual HRESULT get_GrammarChecked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_GrammarChecked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SpellingChecked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SpellingChecked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HighlightColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_HighlightColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_Columns(
            Columns **prop /Out/) = 0;

        virtual HRESULT get_Rows(
            Rows **prop /Out/) = 0;

        virtual HRESULT get_CanEdit(
            long *prop /Out/) = 0;

        virtual HRESULT get_CanPaste(
            long *prop /Out/) = 0;

        virtual HRESULT get_IsEndOfRowMark(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_BookmarkID(
            long *prop /Out/) = 0;

        virtual HRESULT get_PreviousBookmarkID(
            long *prop /Out/) = 0;

        virtual HRESULT get_Find(
            Find **prop /Out/) = 0;

        virtual HRESULT get_PageSetup(
            PageSetup **prop /Out/) = 0;

        virtual HRESULT put_PageSetup(
            PageSetup *prop) = 0;

        virtual HRESULT get_ShapeRange(
            ShapeRange **prop /Out/) = 0;

        virtual HRESULT get_Case(
            WdCharacterCase *prop /Out/) = 0;

        virtual HRESULT put_Case(
            WdCharacterCase prop) = 0;

        virtual HRESULT get_Information(
            WdInformation Type,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_ReadabilityStatistics(
            ReadabilityStatistics **prop /Out/) = 0;

        virtual HRESULT get_GrammaticalErrors(
            ProofreadingErrors **prop /Out/) = 0;

        virtual HRESULT get_SpellingErrors(
            ProofreadingErrors **prop /Out/) = 0;

        virtual HRESULT get_Orientation(
            WdTextOrientation *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            WdTextOrientation prop) = 0;

        virtual HRESULT get_InlineShapes(
            InlineShapes **prop /Out/) = 0;

        virtual HRESULT get_NextStoryRange(
            Range **prop /Out/) = 0;

        virtual HRESULT get_LanguageIDFarEast(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDFarEast(
            WdLanguageID prop) = 0;

        virtual HRESULT get_LanguageIDOther(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDOther(
            WdLanguageID prop) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT SetRange(
            long Start,
            long End) = 0;

        virtual HRESULT Collapse(
            VARIANT *Direction = argMissing()) = 0;

        virtual HRESULT InsertBefore(
            BSTR Text) = 0;

        virtual HRESULT InsertAfter(
            BSTR Text) = 0;

        virtual HRESULT Next(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT Previous(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT StartOf(
            VARIANT *Unit = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT EndOf(
            VARIANT *Unit = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT Move(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveStart(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveEnd(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveWhile(
            VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveStartWhile(
            VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveEndWhile(
            VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveUntil(
            VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveStartUntil(
            VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveEndUntil(
            VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Paste() = 0;

        virtual HRESULT InsertBreak(
            VARIANT *Type = argMissing()) = 0;

        virtual HRESULT InsertFile(
            BSTR FileName,
            VARIANT *Range = argMissing(),
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *Link = argMissing(),
            VARIANT *Attachment = argMissing()) = 0;

        virtual HRESULT InStory(
            Range *Range,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT InRange(
            Range *Range,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT WholeStory() = 0;

        virtual HRESULT Expand(
            VARIANT *Unit = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT InsertParagraph() = 0;

        virtual HRESULT InsertParagraphAfter() = 0;

        virtual HRESULT ConvertToTableOld(
            VARIANT *Separator = argMissing(),
            VARIANT *NumRows = argMissing(),
            VARIANT *NumColumns = argMissing(),
            VARIANT *InitialColumnWidth = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *ApplyBorders = argMissing(),
            VARIANT *ApplyShading = argMissing(),
            VARIANT *ApplyFont = argMissing(),
            VARIANT *ApplyColor = argMissing(),
            VARIANT *ApplyHeadingRows = argMissing(),
            VARIANT *ApplyLastRow = argMissing(),
            VARIANT *ApplyFirstColumn = argMissing(),
            VARIANT *ApplyLastColumn = argMissing(),
            VARIANT *AutoFit = argMissing(),
            Table **prop /Out/ = 0) = 0;

        virtual HRESULT InsertDateTimeOld(
            VARIANT *DateTimeFormat = argMissing(),
            VARIANT *InsertAsField = argMissing(),
            VARIANT *InsertAsFullWidth = argMissing()) = 0;

        virtual HRESULT InsertSymbol(
            long CharacterNumber,
            VARIANT *Font = argMissing(),
            VARIANT *Unicode = argMissing(),
            VARIANT *Bias = argMissing()) = 0;

        virtual HRESULT InsertCrossReference_2002(
            VARIANT *ReferenceType,
            WdReferenceKind ReferenceKind,
            VARIANT *ReferenceItem,
            VARIANT *InsertAsHyperlink = argMissing(),
            VARIANT *IncludePosition = argMissing()) = 0;

        virtual HRESULT InsertCaptionXP(
            VARIANT *Label,
            VARIANT *Title = argMissing(),
            VARIANT *TitleAutoText = argMissing(),
            VARIANT *Position = argMissing()) = 0;

        virtual HRESULT CopyAsPicture() = 0;

        virtual HRESULT SortOld(
            VARIANT *ExcludeHeader = argMissing(),
            VARIANT *FieldNumber = argMissing(),
            VARIANT *SortFieldType = argMissing(),
            VARIANT *SortOrder = argMissing(),
            VARIANT *FieldNumber2 = argMissing(),
            VARIANT *SortFieldType2 = argMissing(),
            VARIANT *SortOrder2 = argMissing(),
            VARIANT *FieldNumber3 = argMissing(),
            VARIANT *SortFieldType3 = argMissing(),
            VARIANT *SortOrder3 = argMissing(),
            VARIANT *SortColumn = argMissing(),
            VARIANT *Separator = argMissing(),
            VARIANT *CaseSensitive = argMissing(),
            VARIANT *LanguageID = argMissing()) = 0;

        virtual HRESULT SortAscending() = 0;

        virtual HRESULT SortDescending() = 0;

        virtual HRESULT IsEqual(
            Range *Range,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Calculate(
            single *prop /Out/) = 0;

        virtual HRESULT GoTo(
            VARIANT *What = argMissing(),
            VARIANT *Which = argMissing(),
            VARIANT *Count = argMissing(),
            VARIANT *Name = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT GoToNext(
            WdGoToItem What,
            Range **prop /Out/) = 0;

        virtual HRESULT GoToPrevious(
            WdGoToItem What,
            Range **prop /Out/) = 0;

        virtual HRESULT PasteSpecial(
            VARIANT *IconIndex = argMissing(),
            VARIANT *Link = argMissing(),
            VARIANT *Placement = argMissing(),
            VARIANT *DisplayAsIcon = argMissing(),
            VARIANT *DataType = argMissing(),
            VARIANT *IconFileName = argMissing(),
            VARIANT *IconLabel = argMissing()) = 0;

        virtual HRESULT LookupNameProperties() = 0;

        virtual HRESULT ComputeStatistics(
            WdStatistic Statistic,
            long *prop /Out/) = 0;

        virtual HRESULT Relocate(
            long Direction) = 0;

        virtual HRESULT CheckSynonyms() = 0;

        virtual HRESULT SubscribeTo(
            BSTR Edition,
            VARIANT *Format = argMissing()) = 0;

        virtual HRESULT CreatePublisher(
            VARIANT *Edition = argMissing(),
            VARIANT *ContainsPICT = argMissing(),
            VARIANT *ContainsRTF = argMissing(),
            VARIANT *ContainsText = argMissing()) = 0;

        virtual HRESULT InsertAutoText() = 0;

        virtual HRESULT InsertDatabase(
            VARIANT *Format = argMissing(),
            VARIANT *Style = argMissing(),
            VARIANT *LinkToSource = argMissing(),
            VARIANT *Connection = argMissing(),
            VARIANT *SQLStatement = argMissing(),
            VARIANT *SQLStatement1 = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *DataSource = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *IncludeFields = argMissing()) = 0;

        virtual HRESULT AutoFormat() = 0;

        virtual HRESULT CheckGrammar() = 0;

        virtual HRESULT CheckSpelling(
            VARIANT *CustomDictionary = argMissing(),
            VARIANT *IgnoreUppercase = argMissing(),
            VARIANT *AlwaysSuggest = argMissing(),
            VARIANT *CustomDictionary2 = argMissing(),
            VARIANT *CustomDictionary3 = argMissing(),
            VARIANT *CustomDictionary4 = argMissing(),
            VARIANT *CustomDictionary5 = argMissing(),
            VARIANT *CustomDictionary6 = argMissing(),
            VARIANT *CustomDictionary7 = argMissing(),
            VARIANT *CustomDictionary8 = argMissing(),
            VARIANT *CustomDictionary9 = argMissing(),
            VARIANT *CustomDictionary10 = argMissing()) = 0;

        virtual HRESULT GetSpellingSuggestions(
            VARIANT *CustomDictionary = argMissing(),
            VARIANT *IgnoreUppercase = argMissing(),
            VARIANT *MainDictionary = argMissing(),
            VARIANT *SuggestionMode = argMissing(),
            VARIANT *CustomDictionary2 = argMissing(),
            VARIANT *CustomDictionary3 = argMissing(),
            VARIANT *CustomDictionary4 = argMissing(),
            VARIANT *CustomDictionary5 = argMissing(),
            VARIANT *CustomDictionary6 = argMissing(),
            VARIANT *CustomDictionary7 = argMissing(),
            VARIANT *CustomDictionary8 = argMissing(),
            VARIANT *CustomDictionary9 = argMissing(),
            VARIANT *CustomDictionary10 = argMissing(),
            SpellingSuggestions **prop /Out/ = 0) = 0;

        virtual HRESULT InsertParagraphBefore() = 0;

        virtual HRESULT NextSubdocument() = 0;

        virtual HRESULT PreviousSubdocument() = 0;

        virtual HRESULT ConvertHangulAndHanja(
            VARIANT *ConversionsMode = argMissing(),
            VARIANT *FastConversion = argMissing(),
            VARIANT *CheckHangulEnding = argMissing(),
            VARIANT *EnableRecentOrdering = argMissing(),
            VARIANT *CustomDictionary = argMissing()) = 0;

        virtual HRESULT PasteAsNestedTable() = 0;

        virtual HRESULT ModifyEnclosure(
            VARIANT *Style,
            VARIANT *Symbol = argMissing(),
            VARIANT *EnclosedText = argMissing()) = 0;

        virtual HRESULT PhoneticGuide(
            BSTR Text,
            WdPhoneticGuideAlignmentType Alignment = (wpsapi::WdPhoneticGuideAlignmentType)-1,
            long Raise = 0,
            long FontSize = 0,
            BSTR FontName = 0) = 0;

        virtual HRESULT InsertDateTime(
            VARIANT *DateTimeFormat = argMissing(),
            VARIANT *InsertAsField = argMissing(),
            VARIANT *InsertAsFullWidth = argMissing(),
            VARIANT *DateLanguage = argMissing(),
            VARIANT *CalendarType = argMissing()) = 0;

        virtual HRESULT Sort(
            VARIANT *ExcludeHeader = argMissing(),
            VARIANT *FieldNumber = argMissing(),
            VARIANT *SortFieldType = argMissing(),
            VARIANT *SortOrder = argMissing(),
            VARIANT *FieldNumber2 = argMissing(),
            VARIANT *SortFieldType2 = argMissing(),
            VARIANT *SortOrder2 = argMissing(),
            VARIANT *FieldNumber3 = argMissing(),
            VARIANT *SortFieldType3 = argMissing(),
            VARIANT *SortOrder3 = argMissing(),
            VARIANT *SortColumn = argMissing(),
            VARIANT *Separator = argMissing(),
            VARIANT *CaseSensitive = argMissing(),
            VARIANT *BidiSort = argMissing(),
            VARIANT *IgnoreThe = argMissing(),
            VARIANT *IgnoreKashida = argMissing(),
            VARIANT *IgnoreDiacritics = argMissing(),
            VARIANT *IgnoreHe = argMissing(),
            VARIANT *LanguageID = argMissing()) = 0;

        virtual HRESULT DetectLanguage() = 0;

        virtual HRESULT ConvertToTable(
            VARIANT *Separator = argMissing(),
            VARIANT *NumRows = argMissing(),
            VARIANT *NumColumns = argMissing(),
            VARIANT *InitialColumnWidth = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *ApplyBorders = argMissing(),
            VARIANT *ApplyShading = argMissing(),
            VARIANT *ApplyFont = argMissing(),
            VARIANT *ApplyColor = argMissing(),
            VARIANT *ApplyHeadingRows = argMissing(),
            VARIANT *ApplyLastRow = argMissing(),
            VARIANT *ApplyFirstColumn = argMissing(),
            VARIANT *ApplyLastColumn = argMissing(),
            VARIANT *AutoFit = argMissing(),
            VARIANT *AutoFitBehavior = argMissing(),
            VARIANT *DefaultTableBehavior = argMissing(),
            Table **prop /Out/ = 0) = 0;

        virtual HRESULT TCSCConverter(
            WdTCSCConverterDirection direction = wpsapi::wdTCSCConverterDirectionAuto,
            VARIANT_BOOL CommonTerms = VARIANT_FALSE,
            VARIANT_BOOL UseVariants = VARIANT_FALSE) = 0;

        virtual HRESULT get_LanguageDetected(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LanguageDetected(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FitTextWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_FitTextWidth(
            single prop) = 0;

        virtual HRESULT get_HorizontalInVertical(
            WdHorizontalInVerticalType *prop /Out/) = 0;

        virtual HRESULT put_HorizontalInVertical(
            WdHorizontalInVerticalType prop) = 0;

        virtual HRESULT get_TwoLinesInOne(
            WdTwoLinesInOneType *prop /Out/) = 0;

        virtual HRESULT put_TwoLinesInOne(
            WdTwoLinesInOneType prop) = 0;

        virtual HRESULT get_CombineCharacters(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CombineCharacters(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NoProofing(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoProofing(
            long prop) = 0;

        virtual HRESULT get_TopLevelTables(
            Tables **prop /Out/) = 0;

        virtual HRESULT get_Scripts(
            ksoapi::Scripts **prop /Out/) = 0;

        virtual HRESULT get_CharacterWidth(
            WdCharacterWidth *prop /Out/) = 0;

        virtual HRESULT put_CharacterWidth(
            WdCharacterWidth prop) = 0;

        virtual HRESULT get_Kana(
            WdKana *prop /Out/) = 0;

        virtual HRESULT put_Kana(
            WdKana prop) = 0;

        virtual HRESULT get_BoldBi(
            long *prop /Out/) = 0;

        virtual HRESULT put_BoldBi(
            long prop) = 0;

        virtual HRESULT get_ItalicBi(
            long *prop /Out/) = 0;

        virtual HRESULT put_ItalicBi(
            long prop) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ID(
            BSTR prop) = 0;

        virtual HRESULT get_HTMLDivisions(
            HTMLDivisions **prop /Out/) = 0;

        virtual HRESULT get_SmartTags(
            SmartTags **prop /Out/) = 0;

        virtual HRESULT get_ShowAll(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowAll(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Document(
            Document **prop /Out/) = 0;

        virtual HRESULT get_FootnoteOptions(
            FootnoteOptions **prop /Out/) = 0;

        virtual HRESULT get_EndnoteOptions(
            EndnoteOptions **prop /Out/) = 0;

        virtual HRESULT PasteAndFormat(
            WdRecoveryType Type) = 0;

        virtual HRESULT PasteExcelTable(
            VARIANT_BOOL LinkedToExcel,
            VARIANT_BOOL WordFormatting,
            VARIANT_BOOL RTF) = 0;

        virtual HRESULT PasteAppendTable() = 0;

        virtual HRESULT get_XMLNodes(
            XMLNodes **prop /Out/) = 0;

        virtual HRESULT get_XMLParentNode(
            XMLNode **prop /Out/) = 0;

        virtual HRESULT get_Editors(
            Editors **prop /Out/) = 0;

        virtual HRESULT get_XML(
            VARIANT_BOOL DataOnly = VARIANT_FALSE,
            BSTR *prop /Out/ = 0) = 0;

        virtual HRESULT get_EnhMetaFileBits(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT GoToEditableRange(
            VARIANT *EditorID = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT InsertXML(
            BSTR XML,
            VARIANT *Transform = argMissing()) = 0;

        virtual HRESULT InsertCaption(
            VARIANT *Label,
            VARIANT *Title = argMissing(),
            VARIANT *TitleAutoText = argMissing(),
            VARIANT *Position = argMissing(),
            VARIANT *ExcludeLabel = argMissing()) = 0;

        virtual HRESULT InsertCrossReference(
            VARIANT *ReferenceType,
            WdReferenceKind ReferenceKind,
            VARIANT *ReferenceItem,
            VARIANT *InsertAsHyperlink = argMissing(),
            VARIANT *IncludePosition = argMissing(),
            VARIANT *SeparateNumbers = argMissing(),
            VARIANT *SeparatorString = argMissing()) = 0;

        virtual HRESULT get_OMaths(
            OMaths **prop /Out/) = 0;

        virtual HRESULT get_CharacterStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_ParagraphStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_ListStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_TableStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_ContentControls(
            ContentControls **prop /Out/) = 0;

        virtual HRESULT ExportFragment(
            BSTR FileName,
            WdSaveFormat Format) = 0;

        virtual HRESULT get_WordOpenXML(
            BSTR *prop /Out/) = 0;

        virtual HRESULT SetListLevel(
            short Level) = 0;

        virtual HRESULT InsertAlignmentTab(
            long Alignment,
            long RelativeTo = 0) = 0;

        virtual HRESULT get_ParentContentControl(
            ContentControl **prop /Out/) = 0;

        virtual HRESULT ImportFragment(
            BSTR FileName,
            VARIANT_BOOL MatchDestination = VARIANT_FALSE) = 0;

        virtual HRESULT ExportAsFixedFormat(
            BSTR OutputFileName,
            WdExportFormat ExportFormat,
            VARIANT_BOOL OpenAfterExport = VARIANT_FALSE,
            WdExportOptimizeFor OptimizeFor = wpsapi::wdExportOptimizeForPrint,
            VARIANT_BOOL ExportCurrentPage = VARIANT_FALSE,
            WdExportItem Item = wpsapi::wdExportDocumentContent,
            VARIANT_BOOL IncludeDocProps = VARIANT_FALSE,
            VARIANT_BOOL KeepIRM = VARIANT_TRUE,
            WdExportCreateBookmarks CreateBookmarks = wpsapi::wdExportCreateNoBookmarks,
            VARIANT_BOOL DocStructureTags = VARIANT_TRUE,
            VARIANT_BOOL BitmapMissingFonts = VARIANT_TRUE,
            VARIANT_BOOL UseISO19005_1 = VARIANT_FALSE,
            VARIANT *FixedFormatExtClassPtr = argMissing()) = 0;

        virtual HRESULT get_Locks(
            CoAuthLocks **prop /Out/) = 0;

        virtual HRESULT get_Updates(
            CoAuthUpdates **prop /Out/) = 0;

        virtual HRESULT get_Conflicts(
            Conflicts **prop /Out/) = 0;

        virtual HRESULT get_TextVisibleOnScreen(
            long *prop /Out/) = 0;

        virtual HRESULT SortByHeadings(
            VARIANT *SortFieldType = argMissing(),
            VARIANT *SortOrder = argMissing(),
            VARIANT *CaseSensitive = argMissing(),
            VARIANT *BidiSort = argMissing(),
            VARIANT *IgnoreThe = argMissing(),
            VARIANT *IgnoreKashida = argMissing(),
            VARIANT *IgnoreDiacritics = argMissing(),
            VARIANT *IgnoreHe = argMissing(),
            VARIANT *LanguageID = argMissing()) = 0;

        virtual HRESULT get_DocumentFields(
            DocumentFields **prop /Out/) = 0;

        BSTR getText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Text(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Text()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Text(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Text()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Text, get=getText, set=setText)

        Range* getFormattedText();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_FormattedText(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormattedText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormattedText(Range *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormattedText(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormattedText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormattedText, get=getFormattedText, set=setFormattedText)

        long getStart();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Start(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Start()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStart(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Start(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Start()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Start, get=getStart, set=setStart)

        long getEnd();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_End(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_End()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnd(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_End(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_End()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=End, get=getEnd, set=setEnd)

        Font* getFont();
        %MethodCode
            wpsapi::Font *prop = nullptr;
            HRESULT hr = sipCpp->get_Font(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Font()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFont(Font *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Font(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Font()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Font, get=getFont, set=setFont)

        Range* getDuplicate();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Duplicate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Duplicate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Duplicate, get=getDuplicate)

        WdStoryType getStoryType();
        %MethodCode
            wpsapi::WdStoryType prop = (wpsapi::WdStoryType)0;
            HRESULT hr = sipCpp->get_StoryType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StoryType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=StoryType, get=getStoryType)

        Tables* getTables();
        %MethodCode
            wpsapi::Tables *prop = nullptr;
            HRESULT hr = sipCpp->get_Tables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tables, get=getTables)

        Words* getWords();
        %MethodCode
            wpsapi::Words *prop = nullptr;
            HRESULT hr = sipCpp->get_Words(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Words()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Words, get=getWords)

        Sentences* getSentences();
        %MethodCode
            wpsapi::Sentences *prop = nullptr;
            HRESULT hr = sipCpp->get_Sentences(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sentences()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sentences, get=getSentences)

        Characters* getCharacters();
        %MethodCode
            wpsapi::Characters *prop = nullptr;
            HRESULT hr = sipCpp->get_Characters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Characters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Characters, get=getCharacters)

        Footnotes* getFootnotes();
        %MethodCode
            wpsapi::Footnotes *prop = nullptr;
            HRESULT hr = sipCpp->get_Footnotes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Footnotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Footnotes, get=getFootnotes)

        Endnotes* getEndnotes();
        %MethodCode
            wpsapi::Endnotes *prop = nullptr;
            HRESULT hr = sipCpp->get_Endnotes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Endnotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Endnotes, get=getEndnotes)

        Comments* getComments();
        %MethodCode
            wpsapi::Comments *prop = nullptr;
            HRESULT hr = sipCpp->get_Comments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Comments, get=getComments)

        Cells* getCells();
        %MethodCode
            wpsapi::Cells *prop = nullptr;
            HRESULT hr = sipCpp->get_Cells(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Cells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Cells, get=getCells)

        Sections* getSections();
        %MethodCode
            wpsapi::Sections *prop = nullptr;
            HRESULT hr = sipCpp->get_Sections(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sections()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sections, get=getSections)

        Paragraphs* getParagraphs();
        %MethodCode
            wpsapi::Paragraphs *prop = nullptr;
            HRESULT hr = sipCpp->get_Paragraphs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Paragraphs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Paragraphs, get=getParagraphs)

        Borders* getBorders();
        %MethodCode
            wpsapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorders(Borders *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Borders(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Borders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Borders, get=getBorders, set=setBorders)

        Shading* getShading();
        %MethodCode
            wpsapi::Shading *prop = nullptr;
            HRESULT hr = sipCpp->get_Shading(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shading, get=getShading)

        TextRetrievalMode* getTextRetrievalMode();
        %MethodCode
            wpsapi::TextRetrievalMode *prop = nullptr;
            HRESULT hr = sipCpp->get_TextRetrievalMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextRetrievalMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextRetrievalMode(TextRetrievalMode *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextRetrievalMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextRetrievalMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextRetrievalMode, get=getTextRetrievalMode, set=setTextRetrievalMode)

        Fields* getFields();
        %MethodCode
            wpsapi::Fields *prop = nullptr;
            HRESULT hr = sipCpp->get_Fields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Fields, get=getFields)

        FormFields* getFormFields();
        %MethodCode
            wpsapi::FormFields *prop = nullptr;
            HRESULT hr = sipCpp->get_FormFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FormFields, get=getFormFields)

        Frames* getFrames();
        %MethodCode
            wpsapi::Frames *prop = nullptr;
            HRESULT hr = sipCpp->get_Frames(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Frames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Frames, get=getFrames)

        ParagraphFormat* getParagraphFormat();
        %MethodCode
            wpsapi::ParagraphFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ParagraphFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParagraphFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setParagraphFormat(ParagraphFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ParagraphFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ParagraphFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ParagraphFormat, get=getParagraphFormat, set=setParagraphFormat)

        ListFormat* getListFormat();
        %MethodCode
            wpsapi::ListFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ListFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListFormat, get=getListFormat)

        Bookmarks* getBookmarks();
        %MethodCode
            wpsapi::Bookmarks *prop = nullptr;
            HRESULT hr = sipCpp->get_Bookmarks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bookmarks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Bookmarks, get=getBookmarks)

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        long getBold();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Bold(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bold()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBold(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Bold(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Bold()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Bold, get=getBold, set=setBold)

        long getItalic();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Italic(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Italic()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setItalic(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Italic(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Italic()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Italic, get=getItalic, set=setItalic)

        WdUnderline getUnderline();
        %MethodCode
            wpsapi::WdUnderline prop = (wpsapi::WdUnderline)0;
            HRESULT hr = sipCpp->get_Underline(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Underline()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUnderline(WdUnderline prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Underline(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Underline()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Underline, get=getUnderline, set=setUnderline)

        WdEmphasisMark getEmphasisMark();
        %MethodCode
            wpsapi::WdEmphasisMark prop = (wpsapi::WdEmphasisMark)0;
            HRESULT hr = sipCpp->get_EmphasisMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmphasisMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmphasisMark(WdEmphasisMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmphasisMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmphasisMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmphasisMark, get=getEmphasisMark, set=setEmphasisMark)

        VARIANT_BOOL getDisableCharacterSpaceGrid();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisableCharacterSpaceGrid(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableCharacterSpaceGrid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableCharacterSpaceGrid(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableCharacterSpaceGrid(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableCharacterSpaceGrid()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableCharacterSpaceGrid, get=getDisableCharacterSpaceGrid, set=setDisableCharacterSpaceGrid)

        Revisions* getRevisions();
        %MethodCode
            wpsapi::Revisions *prop = nullptr;
            HRESULT hr = sipCpp->get_Revisions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Revisions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Revisions, get=getRevisions)

        VARIANT getStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Style(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyle(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Style()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Style, get=getStyle, set=setStyle)

        long getStoryLength();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_StoryLength(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StoryLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=StoryLength, get=getStoryLength)

        WdLanguageID getLanguageID();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageID(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageID(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageID, get=getLanguageID, set=setLanguageID)

        SynonymInfo* getSynonymInfo();
        %MethodCode
            wpsapi::SynonymInfo *prop = nullptr;
            HRESULT hr = sipCpp->get_SynonymInfo(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SynonymInfo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SynonymInfo, get=getSynonymInfo)

        Hyperlinks* getHyperlinks();
        %MethodCode
            wpsapi::Hyperlinks *prop = nullptr;
            HRESULT hr = sipCpp->get_Hyperlinks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hyperlinks, get=getHyperlinks)

        ListParagraphs* getListParagraphs();
        %MethodCode
            wpsapi::ListParagraphs *prop = nullptr;
            HRESULT hr = sipCpp->get_ListParagraphs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListParagraphs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListParagraphs, get=getListParagraphs)

        Subdocuments* getSubdocuments();
        %MethodCode
            wpsapi::Subdocuments *prop = nullptr;
            HRESULT hr = sipCpp->get_Subdocuments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Subdocuments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Subdocuments, get=getSubdocuments)

        VARIANT_BOOL getGrammarChecked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_GrammarChecked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GrammarChecked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGrammarChecked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GrammarChecked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GrammarChecked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GrammarChecked, get=getGrammarChecked, set=setGrammarChecked)

        VARIANT_BOOL getSpellingChecked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SpellingChecked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpellingChecked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpellingChecked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpellingChecked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpellingChecked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpellingChecked, get=getSpellingChecked, set=setSpellingChecked)

        WdColorIndex getHighlightColorIndex();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_HighlightColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HighlightColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHighlightColorIndex(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HighlightColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HighlightColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HighlightColorIndex, get=getHighlightColorIndex, set=setHighlightColorIndex)

        Columns* getColumns();
        %MethodCode
            wpsapi::Columns *prop = nullptr;
            HRESULT hr = sipCpp->get_Columns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Columns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Columns, get=getColumns)

        Rows* getRows();
        %MethodCode
            wpsapi::Rows *prop = nullptr;
            HRESULT hr = sipCpp->get_Rows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Rows, get=getRows)

        long getCanEdit();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CanEdit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanEdit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanEdit, get=getCanEdit)

        long getCanPaste();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CanPaste(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanPaste()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanPaste, get=getCanPaste)

        VARIANT_BOOL getIsEndOfRowMark();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsEndOfRowMark(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsEndOfRowMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsEndOfRowMark, get=getIsEndOfRowMark)

        long getBookmarkID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BookmarkID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BookmarkID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BookmarkID, get=getBookmarkID)

        long getPreviousBookmarkID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PreviousBookmarkID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreviousBookmarkID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PreviousBookmarkID, get=getPreviousBookmarkID)

        Find* getFind();
        %MethodCode
            wpsapi::Find *prop = nullptr;
            HRESULT hr = sipCpp->get_Find(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Find()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Find, get=getFind)

        PageSetup* getPageSetup();
        %MethodCode
            wpsapi::PageSetup *prop = nullptr;
            HRESULT hr = sipCpp->get_PageSetup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageSetup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageSetup(PageSetup *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageSetup(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageSetup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageSetup, get=getPageSetup, set=setPageSetup)

        ShapeRange* getShapeRange();
        %MethodCode
            wpsapi::ShapeRange *prop = nullptr;
            HRESULT hr = sipCpp->get_ShapeRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShapeRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ShapeRange, get=getShapeRange)

        WdCharacterCase getCase();
        %MethodCode
            wpsapi::WdCharacterCase prop = (wpsapi::WdCharacterCase)0;
            HRESULT hr = sipCpp->get_Case(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Case()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCase(WdCharacterCase prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Case(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Case()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Case, get=getCase, set=setCase)

        ReadabilityStatistics* getReadabilityStatistics();
        %MethodCode
            wpsapi::ReadabilityStatistics *prop = nullptr;
            HRESULT hr = sipCpp->get_ReadabilityStatistics(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadabilityStatistics()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReadabilityStatistics, get=getReadabilityStatistics)

        ProofreadingErrors* getGrammaticalErrors();
        %MethodCode
            wpsapi::ProofreadingErrors *prop = nullptr;
            HRESULT hr = sipCpp->get_GrammaticalErrors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GrammaticalErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GrammaticalErrors, get=getGrammaticalErrors)

        ProofreadingErrors* getSpellingErrors();
        %MethodCode
            wpsapi::ProofreadingErrors *prop = nullptr;
            HRESULT hr = sipCpp->get_SpellingErrors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpellingErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SpellingErrors, get=getSpellingErrors)

        WdTextOrientation getOrientation();
        %MethodCode
            wpsapi::WdTextOrientation prop = (wpsapi::WdTextOrientation)0;
            HRESULT hr = sipCpp->get_Orientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Orientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrientation(WdTextOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Orientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Orientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Orientation, get=getOrientation, set=setOrientation)

        InlineShapes* getInlineShapes();
        %MethodCode
            wpsapi::InlineShapes *prop = nullptr;
            HRESULT hr = sipCpp->get_InlineShapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InlineShapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InlineShapes, get=getInlineShapes)

        Range* getNextStoryRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_NextStoryRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NextStoryRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NextStoryRange, get=getNextStoryRange)

        WdLanguageID getLanguageIDFarEast();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageIDFarEast(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageIDFarEast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageIDFarEast(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageIDFarEast(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageIDFarEast()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageIDFarEast, get=getLanguageIDFarEast, set=setLanguageIDFarEast)

        WdLanguageID getLanguageIDOther();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageIDOther(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageIDOther()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageIDOther(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageIDOther(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageIDOther()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageIDOther, get=getLanguageIDOther, set=setLanguageIDOther)

        VARIANT_BOOL getLanguageDetected();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LanguageDetected(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageDetected()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageDetected(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageDetected(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageDetected()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageDetected, get=getLanguageDetected, set=setLanguageDetected)

        single getFitTextWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_FitTextWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FitTextWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFitTextWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FitTextWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FitTextWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FitTextWidth, get=getFitTextWidth, set=setFitTextWidth)

        WdHorizontalInVerticalType getHorizontalInVertical();
        %MethodCode
            wpsapi::WdHorizontalInVerticalType prop = (wpsapi::WdHorizontalInVerticalType)0;
            HRESULT hr = sipCpp->get_HorizontalInVertical(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalInVertical()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalInVertical(WdHorizontalInVerticalType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalInVertical(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalInVertical()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalInVertical, get=getHorizontalInVertical, set=setHorizontalInVertical)

        WdTwoLinesInOneType getTwoLinesInOne();
        %MethodCode
            wpsapi::WdTwoLinesInOneType prop = (wpsapi::WdTwoLinesInOneType)0;
            HRESULT hr = sipCpp->get_TwoLinesInOne(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TwoLinesInOne()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTwoLinesInOne(WdTwoLinesInOneType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TwoLinesInOne(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TwoLinesInOne()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TwoLinesInOne, get=getTwoLinesInOne, set=setTwoLinesInOne)

        VARIANT_BOOL getCombineCharacters();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CombineCharacters(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CombineCharacters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCombineCharacters(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CombineCharacters(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CombineCharacters()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CombineCharacters, get=getCombineCharacters, set=setCombineCharacters)

        long getNoProofing();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NoProofing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoProofing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoProofing(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoProofing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoProofing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoProofing, get=getNoProofing, set=setNoProofing)

        Tables* getTopLevelTables();
        %MethodCode
            wpsapi::Tables *prop = nullptr;
            HRESULT hr = sipCpp->get_TopLevelTables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TopLevelTables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TopLevelTables, get=getTopLevelTables)

        ksoapi::Scripts* getScripts();
        %MethodCode
            ksoapi::Scripts *prop = nullptr;
            HRESULT hr = sipCpp->get_Scripts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Scripts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Scripts, get=getScripts)

        WdCharacterWidth getCharacterWidth();
        %MethodCode
            wpsapi::WdCharacterWidth prop = (wpsapi::WdCharacterWidth)0;
            HRESULT hr = sipCpp->get_CharacterWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CharacterWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCharacterWidth(WdCharacterWidth prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CharacterWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CharacterWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CharacterWidth, get=getCharacterWidth, set=setCharacterWidth)

        WdKana getKana();
        %MethodCode
            wpsapi::WdKana prop = (wpsapi::WdKana)0;
            HRESULT hr = sipCpp->get_Kana(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Kana()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKana(WdKana prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Kana(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Kana()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Kana, get=getKana, set=setKana)

        long getBoldBi();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BoldBi(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BoldBi()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBoldBi(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BoldBi(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BoldBi()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BoldBi, get=getBoldBi, set=setBoldBi)

        long getItalicBi();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ItalicBi(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ItalicBi()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setItalicBi(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ItalicBi(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ItalicBi()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ItalicBi, get=getItalicBi, set=setItalicBi)

        BSTR getID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setID(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ID(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ID, get=getID, set=setID)

        HTMLDivisions* getHTMLDivisions();
        %MethodCode
            wpsapi::HTMLDivisions *prop = nullptr;
            HRESULT hr = sipCpp->get_HTMLDivisions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTMLDivisions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HTMLDivisions, get=getHTMLDivisions)

        SmartTags* getSmartTags();
        %MethodCode
            wpsapi::SmartTags *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartTags(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartTags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartTags, get=getSmartTags)

        VARIANT_BOOL getShowAll();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAll(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAll()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAll(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAll(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAll()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAll, get=getShowAll, set=setShowAll)

        Document* getDocument();
        %MethodCode
            wpsapi::Document *prop = nullptr;
            HRESULT hr = sipCpp->get_Document(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Document()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Document, get=getDocument)

        FootnoteOptions* getFootnoteOptions();
        %MethodCode
            wpsapi::FootnoteOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_FootnoteOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FootnoteOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FootnoteOptions, get=getFootnoteOptions)

        EndnoteOptions* getEndnoteOptions();
        %MethodCode
            wpsapi::EndnoteOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_EndnoteOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndnoteOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EndnoteOptions, get=getEndnoteOptions)

        XMLNodes* getXMLNodes();
        %MethodCode
            wpsapi::XMLNodes *prop = nullptr;
            HRESULT hr = sipCpp->get_XMLNodes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLNodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XMLNodes, get=getXMLNodes)

        XMLNode* getXMLParentNode();
        %MethodCode
            wpsapi::XMLNode *prop = nullptr;
            HRESULT hr = sipCpp->get_XMLParentNode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLParentNode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XMLParentNode, get=getXMLParentNode)

        Editors* getEditors();
        %MethodCode
            wpsapi::Editors *prop = nullptr;
            HRESULT hr = sipCpp->get_Editors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Editors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Editors, get=getEditors)

        VARIANT getEnhMetaFileBits();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_EnhMetaFileBits(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnhMetaFileBits()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EnhMetaFileBits, get=getEnhMetaFileBits)

        OMaths* getOMaths();
        %MethodCode
            wpsapi::OMaths *prop = nullptr;
            HRESULT hr = sipCpp->get_OMaths(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMaths()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OMaths, get=getOMaths)

        VARIANT getCharacterStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CharacterStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CharacterStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CharacterStyle, get=getCharacterStyle)

        VARIANT getParagraphStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ParagraphStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParagraphStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParagraphStyle, get=getParagraphStyle)

        VARIANT getListStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ListStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListStyle, get=getListStyle)

        VARIANT getTableStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_TableStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TableStyle, get=getTableStyle)

        ContentControls* getContentControls();
        %MethodCode
            wpsapi::ContentControls *prop = nullptr;
            HRESULT hr = sipCpp->get_ContentControls(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContentControls()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContentControls, get=getContentControls)

        BSTR getWordOpenXML();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_WordOpenXML(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WordOpenXML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WordOpenXML, get=getWordOpenXML)

        ContentControl* getParentContentControl();
        %MethodCode
            wpsapi::ContentControl *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentContentControl(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentContentControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentContentControl, get=getParentContentControl)

        CoAuthLocks* getLocks();
        %MethodCode
            wpsapi::CoAuthLocks *prop = nullptr;
            HRESULT hr = sipCpp->get_Locks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Locks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Locks, get=getLocks)

        CoAuthUpdates* getUpdates();
        %MethodCode
            wpsapi::CoAuthUpdates *prop = nullptr;
            HRESULT hr = sipCpp->get_Updates(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Updates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Updates, get=getUpdates)

        Conflicts* getConflicts();
        %MethodCode
            wpsapi::Conflicts *prop = nullptr;
            HRESULT hr = sipCpp->get_Conflicts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Conflicts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Conflicts, get=getConflicts)

        long getTextVisibleOnScreen();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_TextVisibleOnScreen(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextVisibleOnScreen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextVisibleOnScreen, get=getTextVisibleOnScreen)

        DocumentFields* getDocumentFields();
        %MethodCode
            wpsapi::DocumentFields *prop = nullptr;
            HRESULT hr = sipCpp->get_DocumentFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DocumentFields, get=getDocumentFields)
    };
};
