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
        virtual HRESULT get_Text(BSTR *prop /Out/) = 0;
        virtual HRESULT put_Text(BSTR prop) = 0;

        virtual HRESULT get_FormattedText(Range **prop /Out/) = 0;
        virtual HRESULT put_FormattedText(Range *prop) = 0;

        virtual HRESULT get_Start(long *prop /Out/) = 0;
        virtual HRESULT put_Start(long prop) = 0;

        virtual HRESULT get_End(long *prop /Out/) = 0;
        virtual HRESULT put_End(long prop) = 0;

        virtual HRESULT get_Font(_Font **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Font((wpsapi::Font**)&a0);
        %End

        virtual HRESULT put_Font(_Font *prop) = 0;
        %MethodCode
            sipRes = sipCpp->put_Font((wpsapi::Font*)a0);
        %End

        virtual HRESULT get_Duplicate(Range **prop /Out/) = 0;

        virtual HRESULT get_StoryType(WdStoryType *prop /Out/) = 0;

        virtual HRESULT get_Tables(Tables **prop /Out/) = 0;

        virtual HRESULT get_Words(Words **prop /Out/) = 0;

        virtual HRESULT get_Sentences(Sentences **prop /Out/) = 0;

        virtual HRESULT get_Characters(Characters **prop /Out/) = 0;

        virtual HRESULT get_Footnotes(Footnotes **prop /Out/) = 0;
        virtual HRESULT get_Endnotes(Endnotes **prop /Out/) = 0;

        virtual HRESULT get_Comments(Comments **prop /Out/) = 0;

        virtual HRESULT get_Cells(Cells **prop /Out/) = 0;

        virtual HRESULT get_Sections(Sections **prop /Out/) = 0;

        virtual HRESULT get_Paragraphs(Paragraphs **prop /Out/) = 0;

        virtual HRESULT get_Borders(Borders **prop /Out/) = 0;
        virtual HRESULT put_Borders(Borders *prop) = 0;

        virtual HRESULT get_Shading(Shading **prop /Out/) = 0;
/*
        virtual HRESULT get_TextRetrievalMode(TextRetrievalMode **prop /Out/) = 0;
        virtual HRESULT put_TextRetrievalMode(TextRetrievalMode *prop) = 0;
*/
        virtual HRESULT get_Fields(Fields **prop /Out/) = 0;
        virtual HRESULT get_FormFields(FormFields **prop /Out/) = 0;

        virtual HRESULT get_Frames(Frames **prop /Out/) = 0;

        virtual HRESULT get_ParagraphFormat(_ParagraphFormat **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_ParagraphFormat((wpsapi::ParagraphFormat**)&a0);
        %End

        virtual HRESULT put_ParagraphFormat(_ParagraphFormat *prop) = 0;
        %MethodCode
            sipRes = sipCpp->put_ParagraphFormat((wpsapi::ParagraphFormat*)a0);
        %End
/*
        virtual HRESULT get_ListFormat(ListFormat **prop /Out/) = 0;

        virtual HRESULT get_Bookmarks(Bookmarks **prop /Out/) = 0;
*/
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(long *prop /Out/) = 0;

        virtual HRESULT get_Parent(IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Bold(long *prop /Out/) = 0;
        virtual HRESULT put_Bold(long prop) = 0;

        virtual HRESULT get_Italic(long *prop /Out/) = 0;
        virtual HRESULT put_Italic(long prop) = 0;

        virtual HRESULT get_Underline(WdUnderline *prop /Out/) = 0;
        virtual HRESULT put_Underline(WdUnderline prop) = 0;

        virtual HRESULT get_EmphasisMark(WdEmphasisMark *prop /Out/) = 0;
        virtual HRESULT put_EmphasisMark(WdEmphasisMark prop) = 0;

        virtual HRESULT get_DisableCharacterSpaceGrid(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_DisableCharacterSpaceGrid(VARIANT_BOOL prop) = 0;

        // virtual HRESULT get_Revisions(Revisions **prop /Out/) = 0;

        virtual HRESULT get_Style(VARIANT *prop /Out/) = 0;
        virtual HRESULT put_Style(VARIANT *prop) = 0;

        virtual HRESULT get_StoryLength(long *prop /Out/) = 0;

        virtual HRESULT get_LanguageID(WdLanguageID *prop /Out/) = 0;
        virtual HRESULT put_LanguageID(WdLanguageID prop) = 0;

        // virtual HRESULT get_SynonymInfo(SynonymInfo **prop /Out/) = 0;

        virtual HRESULT get_Hyperlinks(Hyperlinks **prop /Out/) = 0;
/*
        virtual HRESULT get_ListParagraphs(ListParagraphs **prop /Out/) = 0;

        virtual HRESULT get_Subdocuments(Subdocuments **prop /Out/) = 0;
*/
        virtual HRESULT get_GrammarChecked(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_GrammarChecked(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SpellingChecked(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_SpellingChecked(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HighlightColorIndex(WdColorIndex *prop /Out/) = 0;
        virtual HRESULT put_HighlightColorIndex(WdColorIndex prop) = 0;

        virtual HRESULT get_Columns(Columns **prop /Out/) = 0;
        virtual HRESULT get_Rows(Rows **prop /Out/) = 0;

        virtual HRESULT get_CanEdit(long *prop /Out/) = 0;
        virtual HRESULT get_CanPaste(long *prop /Out/) = 0;

        virtual HRESULT get_IsEndOfRowMark(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_BookmarkID(long *prop /Out/) = 0;
        virtual HRESULT get_PreviousBookmarkID(long *prop /Out/) = 0;

       // virtual HRESULT get_Find(Find **prop /Out/) = 0;

        virtual HRESULT get_PageSetup(PageSetup **prop /Out/) = 0;
        virtual HRESULT put_PageSetup(PageSetup *prop) = 0;

        virtual HRESULT get_ShapeRange(ShapeRange **prop /Out/) = 0;

        virtual HRESULT get_Case(WdCharacterCase *prop /Out/) = 0;
        virtual HRESULT put_Case(WdCharacterCase prop) = 0;

        virtual HRESULT get_Information(WdInformation Type, VARIANT *prop /Out/) = 0;

/*
        virtual HRESULT get_ReadabilityStatistics(ReadabilityStatistics **prop /Out/) = 0;

        virtual HRESULT get_GrammaticalErrors(ProofreadingErrors **prop /Out/) = 0;

        virtual HRESULT get_SpellingErrors(ProofreadingErrors **prop /Out/) = 0;
*/

        virtual HRESULT get_Orientation(WdTextOrientation *prop /Out/) = 0;
        virtual HRESULT put_Orientation(WdTextOrientation prop) = 0;

        virtual HRESULT get_InlineShapes(InlineShapes **prop /Out/) = 0;

        virtual HRESULT get_NextStoryRange(Range **prop /Out/) = 0;

        virtual HRESULT get_LanguageIDFarEast(WdLanguageID *prop /Out/) = 0;
        virtual HRESULT put_LanguageIDFarEast(WdLanguageID prop) = 0;

        virtual HRESULT get_LanguageIDOther(WdLanguageID *prop /Out/) = 0;
        virtual HRESULT put_LanguageIDOther(WdLanguageID prop) = 0;

        virtual HRESULT Select() = 0;
        virtual HRESULT SetRange(long Start, long End) = 0;

        virtual HRESULT Collapse(VARIANT *Direction = argMissing()) = 0;

        virtual HRESULT InsertBefore(BSTR Text) = 0;
        virtual HRESULT InsertAfter(BSTR Text) = 0;

        virtual HRESULT Next(VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT Previous(VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT StartOf(VARIANT *Unit = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT EndOf(VARIANT *Unit = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT Move(VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveStart(VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveEnd(VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            long *prop /Out/ =0) = 0;

        virtual HRESULT MoveWhile(VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveStartWhile(VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveEndWhile(VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveUntil(VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveStartUntil(VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveEndUntil(VARIANT *Cset,
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT Cut() = 0;
        virtual HRESULT Copy() = 0;
        virtual HRESULT Paste() = 0;

        virtual HRESULT InsertBreak(VARIANT *Type = argMissing()) = 0;

        virtual HRESULT InsertFile(BSTR FileName,
            VARIANT *Range = argMissing(),
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *Link = argMissing(),
            VARIANT *Attachment = argMissing()) = 0;

        virtual HRESULT InStory(Range *Range,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT InRange(Range *Range,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete(VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT WholeStory() = 0;

        virtual HRESULT Expand(VARIANT *Unit = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT InsertParagraph() = 0;
        virtual HRESULT InsertParagraphAfter() = 0;

        virtual HRESULT ConvertToTableOld(VARIANT *Separator = argMissing(),
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
            Table **prop /Out/ = argMissing()) = 0;

        virtual HRESULT InsertDateTimeOld(VARIANT *DateTimeFormat = argMissing(),
            VARIANT *InsertAsField = argMissing(),
            VARIANT *InsertAsFullWidth = argMissing()) = 0;

        virtual HRESULT InsertSymbol(long CharacterNumber,
            VARIANT *Font = argMissing(),
            VARIANT *Unicode = argMissing(),
            VARIANT *Bias = argMissing()) = 0;

        virtual HRESULT InsertCrossReference_2002(VARIANT *ReferenceType,
            WdReferenceKind ReferenceKind,
            VARIANT *ReferenceItem,
            VARIANT *InsertAsHyperlink = argMissing(),
            VARIANT *IncludePosition = argMissing()) = 0;

        virtual HRESULT InsertCaptionXP(VARIANT *Label,
            VARIANT *Title = argMissing(),
            VARIANT *TitleAutoText = argMissing(),
            VARIANT *Position = argMissing()) = 0;

        virtual HRESULT CopyAsPicture() = 0;

        virtual HRESULT SortOld(VARIANT *ExcludeHeader = argMissing(),
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

        virtual HRESULT IsEqual(Range *Range,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Calculate(single *prop /Out/) = 0;

        virtual HRESULT GoTo(VARIANT *What = argMissing(),
            VARIANT *Which = argMissing(),
            VARIANT *Count = argMissing(),
            VARIANT *Name = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT GoToNext(WdGoToItem What,
            Range **prop /Out/) = 0;

        virtual HRESULT GoToPrevious(WdGoToItem What,
            Range **prop /Out/) = 0;

        virtual HRESULT PasteSpecial(VARIANT *IconIndex = argMissing(),
            VARIANT *Link = argMissing(),
            VARIANT *Placement = argMissing(),
            VARIANT *DisplayAsIcon = argMissing(),
            VARIANT *DataType = argMissing(),
            VARIANT *IconFileName = argMissing(),
            VARIANT *IconLabel = argMissing()) = 0;

        virtual HRESULT LookupNameProperties() = 0;

        virtual HRESULT ComputeStatistics(WdStatistic Statistic,
            long *prop /Out/) = 0;

        virtual HRESULT Relocate(long Direction) = 0;
        virtual HRESULT CheckSynonyms() = 0;

        virtual HRESULT SubscribeTo(BSTR Edition,
            VARIANT *Format = argMissing()) = 0;

        virtual HRESULT CreatePublisher(VARIANT *Edition = argMissing(),
            VARIANT *ContainsPICT = argMissing(),
            VARIANT *ContainsRTF = argMissing(),
            VARIANT *ContainsText = argMissing()) = 0;

        virtual HRESULT InsertAutoText() = 0;

        virtual HRESULT InsertDatabase(VARIANT *Format = argMissing(),
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

        virtual HRESULT CheckSpelling(VARIANT *CustomDictionary = argMissing(),
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

/*
        virtual HRESULT GetSpellingSuggestions(VARIANT *CustomDictionary = argMissing(),
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
*/
        virtual HRESULT InsertParagraphBefore() = 0;
        virtual HRESULT NextSubdocument() = 0;
        virtual HRESULT PreviousSubdocument() = 0;

        virtual HRESULT ConvertHangulAndHanja(VARIANT *ConversionsMode = argMissing(),
            VARIANT *FastConversion = argMissing(),
            VARIANT *CheckHangulEnding = argMissing(),
            VARIANT *EnableRecentOrdering = argMissing(),
            VARIANT *CustomDictionary = argMissing()) = 0;

        virtual HRESULT PasteAsNestedTable() = 0;

        virtual HRESULT ModifyEnclosure(VARIANT *Style,
            VARIANT *Symbol = argMissing(),
            VARIANT *EnclosedText = argMissing()) = 0;

        virtual HRESULT PhoneticGuide(BSTR Text,
            WdPhoneticGuideAlignmentType Alignment = (wpsapi::WdPhoneticGuideAlignmentType)-1,
            long Raise = 0,
            long FontSize = 0,
            BSTR FontName = 0) = 0;

        virtual HRESULT InsertDateTime(VARIANT *DateTimeFormat = argMissing(),
            VARIANT *InsertAsField = argMissing(),
            VARIANT *InsertAsFullWidth = argMissing(),
            VARIANT *DateLanguage = argMissing(),
            VARIANT *CalendarType = argMissing()) = 0;

        virtual HRESULT Sort(VARIANT *ExcludeHeader = argMissing(),
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

        virtual HRESULT ConvertToTable(VARIANT *Separator = argMissing(),
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

        virtual HRESULT TCSCConverter(WdTCSCConverterDirection direction = (wpsapi::WdTCSCConverterDirection)2,
            VARIANT_BOOL CommonTerms = 0,
            VARIANT_BOOL UseVariants = 0) = 0;

        virtual HRESULT get_LanguageDetected(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_LanguageDetected(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FitTextWidth(single *prop /Out/) = 0;
        virtual HRESULT put_FitTextWidth(single prop) = 0;

        virtual HRESULT get_HorizontalInVertical(WdHorizontalInVerticalType *prop /Out/) = 0;
        virtual HRESULT put_HorizontalInVertical(WdHorizontalInVerticalType prop) = 0;

        virtual HRESULT get_TwoLinesInOne(WdTwoLinesInOneType *prop /Out/) = 0;
        virtual HRESULT put_TwoLinesInOne(WdTwoLinesInOneType prop) = 0;

        virtual HRESULT get_CombineCharacters(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_CombineCharacters(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NoProofing(long *prop /Out/) = 0;
        virtual HRESULT put_NoProofing(long prop) = 0;

        virtual HRESULT get_TopLevelTables(Tables **prop /Out/) = 0;

        virtual HRESULT get_Scripts(ksoapi::Scripts **prop /Out/) = 0;

        virtual HRESULT get_CharacterWidth(WdCharacterWidth *prop /Out/) = 0;
        virtual HRESULT put_CharacterWidth(WdCharacterWidth prop) = 0;

        virtual HRESULT get_Kana(WdKana *prop /Out/) = 0;
        virtual HRESULT put_Kana(WdKana prop) = 0;

        virtual HRESULT get_BoldBi(long *prop /Out/) = 0;
        virtual HRESULT put_BoldBi(long prop) = 0;

        virtual HRESULT get_ItalicBi(long *prop /Out/) = 0;
        virtual HRESULT put_ItalicBi(long prop) = 0;

        virtual HRESULT get_ID(BSTR *prop /Out/) = 0;
        virtual HRESULT put_ID(BSTR prop) = 0;

        // virtual HRESULT get_HTMLDivisions(HTMLDivisions **prop /Out/) = 0;

        // virtual HRESULT get_SmartTags(SmartTags **prop /Out/) = 0;

        virtual HRESULT get_ShowAll(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_ShowAll(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Document(_Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Document((wpsapi::Document**)&a0);
        %End

        virtual HRESULT get_FootnoteOptions(FootnoteOptions **prop /Out/) = 0;
        virtual HRESULT get_EndnoteOptions(EndnoteOptions **prop /Out/) = 0;

        virtual HRESULT PasteAndFormat(WdRecoveryType Type) = 0;

        virtual HRESULT PasteExcelTable(VARIANT_BOOL LinkedToExcel,
            VARIANT_BOOL WordFormatting,
            VARIANT_BOOL RTF) = 0;

        virtual HRESULT PasteAppendTable() = 0;

/*
        virtual HRESULT get_XMLNodes(XMLNodes **prop /Out/) = 0;
        virtual HRESULT get_XMLParentNode(XMLNode **prop /Out/) = 0;

        virtual HRESULT get_Editors(Editors **prop /Out/) = 0;
*/
        virtual HRESULT get_XML(VARIANT_BOOL DataOnly,
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_EnhMetaFileBits(VARIANT *prop /Out/) = 0;

        virtual HRESULT GoToEditableRange(VARIANT *EditorID = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT InsertXML(BSTR XML,
            VARIANT *Transform = argMissing()) = 0;

        virtual HRESULT InsertCaption(VARIANT *Label,
            VARIANT *Title = argMissing(),
            VARIANT *TitleAutoText = argMissing(),
            VARIANT *Position = argMissing(),
            VARIANT *ExcludeLabel = argMissing()) = 0;

        virtual HRESULT InsertCrossReference(VARIANT *ReferenceType,
            WdReferenceKind ReferenceKind,
            VARIANT *ReferenceItem,
            VARIANT *InsertAsHyperlink = argMissing(),
            VARIANT *IncludePosition = argMissing(),
            VARIANT *SeparateNumbers = argMissing(),
            VARIANT *SeparatorString = argMissing()) = 0;

        // virtual HRESULT get_OMaths(OMaths **prop /Out/) = 0;

        virtual HRESULT get_CharacterStyle(VARIANT *prop /Out/) = 0;
        virtual HRESULT get_ParagraphStyle(VARIANT *prop /Out/) = 0;
        virtual HRESULT get_ListStyle(VARIANT *prop /Out/) = 0;
        virtual HRESULT get_TableStyle(VARIANT *prop /Out/) = 0;

        // virtual HRESULT get_ContentControls(ContentControls **prop /Out/) = 0;

        virtual HRESULT ExportFragment(BSTR FileName,
            WdSaveFormat Format) = 0;

        virtual HRESULT get_WordOpenXML(BSTR *prop /Out/) = 0;

        virtual HRESULT SetListLevel(short Level) = 0;

        virtual HRESULT InsertAlignmentTab(long Alignment,
            long RelativeTo = 0) = 0;

        // virtual HRESULT get_ParentContentControl(ContentControl **prop /Out/) = 0;

        virtual HRESULT ImportFragment(BSTR FileName,
            VARIANT_BOOL MatchDestination = 0) = 0;

        virtual HRESULT ExportAsFixedFormat(BSTR OutputFileName,
            WdExportFormat ExportFormat,
            VARIANT_BOOL OpenAfterExport,
            WdExportOptimizeFor OptimizeFor,
            VARIANT_BOOL ExportCurrentPage,
            WdExportItem Item,
            VARIANT_BOOL IncludeDocProps,
            VARIANT_BOOL KeepIRM,
            WdExportCreateBookmarks CreateBookmarks,
            VARIANT_BOOL DocStructureTags,
            VARIANT_BOOL BitmapMissingFonts,
            VARIANT_BOOL UseISO19005_1,
            VARIANT *FixedFormatExtClassPtr = argMissing()) = 0;

        virtual HRESULT get_Locks(CoAuthLocks **prop /Out/) = 0;
        virtual HRESULT get_Updates(CoAuthUpdates **prop /Out/) = 0;
        virtual HRESULT get_Conflicts(Conflicts **prop /Out/) = 0;

        virtual HRESULT get_TextVisibleOnScreen(long *prop /Out/) = 0;

        virtual HRESULT SortByHeadings(VARIANT *SortFieldType = argMissing(),
            VARIANT *SortOrder = argMissing(),
            VARIANT *CaseSensitive = argMissing(),
            VARIANT *BidiSort = argMissing(),
            VARIANT *IgnoreThe = argMissing(),
            VARIANT *IgnoreKashida = argMissing(),
            VARIANT *IgnoreDiacritics = argMissing(),
            VARIANT *IgnoreHe = argMissing(),
            VARIANT *LanguageID = argMissing()) = 0;

        // virtual HRESULT get_DocumentFields(DocumentFields **prop /Out/) = 0;
    };
};