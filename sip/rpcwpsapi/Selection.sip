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
    struct Selection : public IDispatch /Abstract/
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

        virtual HRESULT get_Type(
            WdSelectionType *prop /Out/) = 0;

        virtual HRESULT get_StoryType(
            WdStoryType *prop /Out/) = 0;

        virtual HRESULT get_Style(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT *prop) = 0;

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

        virtual HRESULT get_PageSetup(
            PageSetup **prop /Out/) = 0;

        virtual HRESULT put_PageSetup(
            PageSetup *prop) = 0;

        virtual HRESULT get_Bookmarks(
            Bookmarks **prop /Out/) = 0;

        virtual HRESULT get_StoryLength(
            long *prop /Out/) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_LanguageIDFarEast(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDFarEast(
            WdLanguageID prop) = 0;

        virtual HRESULT get_LanguageIDOther(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDOther(
            WdLanguageID prop) = 0;

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **prop /Out/) = 0;

        virtual HRESULT get_Columns(
            Columns **prop /Out/) = 0;

        virtual HRESULT get_Rows(
            Rows **prop /Out/) = 0;

        virtual HRESULT get_HeaderFooter(
            HeaderFooter **prop /Out/) = 0;

        virtual HRESULT get_IsEndOfRowMark(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_BookmarkID(
            long *prop /Out/) = 0;

        virtual HRESULT get_PreviousBookmarkID(
            long *prop /Out/) = 0;

        virtual HRESULT get_Find(
            Find **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Information(
            WdInformation Type,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Flags(
            WdSelectionFlags *prop /Out/) = 0;

        virtual HRESULT put_Flags(
            WdSelectionFlags prop) = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_StartIsActive(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StartIsActive(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IPAtEndOfLine(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ExtendMode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ExtendMode(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ColumnSelectMode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ColumnSelectMode(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Orientation(
            WdTextOrientation *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            WdTextOrientation prop) = 0;

        virtual HRESULT get_InlineShapes(
            InlineShapes **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Document(
            Document **prop /Out/) = 0;

        virtual HRESULT get_ShapeRange(
            ShapeRange **prop /Out/) = 0;

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

        virtual HRESULT PreviousField(
            Field **prop /Out/) = 0;

        virtual HRESULT NextField(
            Field **prop /Out/) = 0;

        virtual HRESULT InsertParagraphBefore() = 0;

        virtual HRESULT InsertCells(
            VARIANT *ShiftCells = argMissing()) = 0;

        virtual HRESULT Extend(
            VARIANT *Character = argMissing()) = 0;

        virtual HRESULT Shrink() = 0;

        virtual HRESULT MoveLeft(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveRight(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveUp(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MoveDown(
            VARIANT *Unit = argMissing(),
            VARIANT *Count = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT HomeKey(
            VARIANT *Unit = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT EndKey(
            VARIANT *Unit = argMissing(),
            VARIANT *Extend = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT EscapeKey() = 0;

        virtual HRESULT TypeText(
            BSTR Text) = 0;

        virtual HRESULT CopyFormat() = 0;

        virtual HRESULT PasteFormat() = 0;

        virtual HRESULT TypeParagraph() = 0;

        virtual HRESULT TypeBackspace() = 0;

        virtual HRESULT NextSubdocument() = 0;

        virtual HRESULT PreviousSubdocument() = 0;

        virtual HRESULT SelectColumn() = 0;

        virtual HRESULT SelectCurrentFont() = 0;

        virtual HRESULT SelectCurrentAlignment() = 0;

        virtual HRESULT SelectCurrentSpacing() = 0;

        virtual HRESULT SelectCurrentIndent() = 0;

        virtual HRESULT SelectCurrentTabs() = 0;

        virtual HRESULT SelectCurrentColor() = 0;

        virtual HRESULT CreateTextbox() = 0;

        virtual HRESULT WholeStory() = 0;

        virtual HRESULT SelectRow() = 0;

        virtual HRESULT SplitTable() = 0;

        virtual HRESULT InsertRows(
            VARIANT *NumRows = argMissing()) = 0;

        virtual HRESULT InsertColumns() = 0;

        virtual HRESULT InsertFormula(
            VARIANT *Formula = argMissing(),
            VARIANT *NumberFormat = argMissing()) = 0;

        virtual HRESULT NextRevision(
            VARIANT *Wrap = argMissing(),
            Revision **prop /Out/ = 0) = 0;

        virtual HRESULT PreviousRevision(
            VARIANT *Wrap = argMissing(),
            Revision **prop /Out/ = 0) = 0;

        virtual HRESULT PasteAsNestedTable() = 0;

        virtual HRESULT CreateAutoTextEntry(
            BSTR Name,
            BSTR StyleName,
            AutoTextEntry **prop /Out/) = 0;

        virtual HRESULT DetectLanguage() = 0;

        virtual HRESULT SelectCell() = 0;

        virtual HRESULT InsertRowsBelow(
            VARIANT *NumRows = argMissing()) = 0;

        virtual HRESULT InsertColumnsRight() = 0;

        virtual HRESULT InsertRowsAbove(
            VARIANT *NumRows = argMissing()) = 0;

        virtual HRESULT RtlRun() = 0;

        virtual HRESULT LtrRun() = 0;

        virtual HRESULT BoldRun() = 0;

        virtual HRESULT ItalicRun() = 0;

        virtual HRESULT RtlPara() = 0;

        virtual HRESULT LtrPara() = 0;

        virtual HRESULT InsertDateTime(
            VARIANT *DateTimeFormat = argMissing(),
            VARIANT *InsertAsField = argMissing(),
            VARIANT *InsertAsFullWidth = argMissing(),
            VARIANT *DateLanguage = argMissing(),
            VARIANT *CalendarType = argMissing()) = 0;

        virtual HRESULT Sort2000(
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

        virtual HRESULT get_NoProofing(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoProofing(
            long prop) = 0;

        virtual HRESULT get_TopLevelTables(
            Tables **prop /Out/) = 0;

        virtual HRESULT get_LanguageDetected(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LanguageDetected(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FitTextWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_FitTextWidth(
            single prop) = 0;

        virtual HRESULT ClearFormatting() = 0;

        virtual HRESULT PasteAppendTable() = 0;

        virtual HRESULT get_HTMLDivisions(
            HTMLDivisions **prop /Out/) = 0;

        virtual HRESULT get_SmartTags(
            SmartTags **prop /Out/) = 0;

        virtual HRESULT get_ChildShapeRange(
            ShapeRange **prop /Out/) = 0;

        virtual HRESULT get_HasChildShapeRange(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_FootnoteOptions(
            FootnoteOptions **prop /Out/) = 0;

        virtual HRESULT get_EndnoteOptions(
            EndnoteOptions **prop /Out/) = 0;

        virtual HRESULT ToggleCharacterCode() = 0;

        virtual HRESULT PasteAndFormat(
            WdRecoveryType Type) = 0;

        virtual HRESULT PasteExcelTable(
            VARIANT_BOOL LinkedToExcel,
            VARIANT_BOOL WordFormatting,
            VARIANT_BOOL RTF) = 0;

        virtual HRESULT ShrinkDiscontiguousSelection() = 0;

        virtual HRESULT InsertStyleSeparator() = 0;

        virtual PyObject* Sort(
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
            VARIANT *LanguageID = argMissing(),
            VARIANT *SubFieldNumber = argMissing()/*,
            VARIANT *SubFieldNumber2 = argMissing(),
            VARIANT *SubFieldNumber3 = argMissing()*/) = 0 /NoArgParser/;
%Docstring
Sort(self, ExcludeHeader: Any = None, FieldNumber: Any = None, SortFieldType: Any = None, SortOrder: Any = None, FieldNumber2: Any = None, SortFieldType2: Any = None, SortOrder2: Any = None, FieldNumber3: Any = None, SortFieldType3: Any = None, SortOrder3: Any = None, SortColumn: Any = None, Separator: Any = None, CaseSensitive: Any = None, BidiSort: Any = None, IgnoreThe: Any = None, IgnoreKashida: Any = None, IgnoreDiacritics: Any = None, IgnoreHe: Any = None, LanguageID: Any = None, SubFieldNumber: Any = None, SubFieldNumber2: Any = None, SubFieldNumber3: Any = None) -> int
%End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount > 22)
            {
                PyErr_Format(PyExc_TypeError,
                            "Sort() takes from 0 to 22 positional arguments but %d were given\n",
                            posArgsCount);
                return nullptr;
            }

            VARIANT* args[22];
            for (int i = posArgsCount; i < 22; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes))
                return nullptr;

            static const char * const s_kwds[] =
            {
                "ExcludeHeader",
                "FieldNumber",
                "SortFieldType",
                "SortOrder",
                "FieldNumber2",
                "SortFieldType2",
                "SortOrder2",
                "FieldNumber3",
                "SortFieldType3",
                "SortOrder3",
                "SortColumn",
                "Separator",
                "CaseSensitive",
                "BidiSort",
                "IgnoreThe",
                "IgnoreKashida",
                "IgnoreDiacritics",
                "IgnoreHe",
                "LanguageID",
                "SubFieldNumber",
                "SubFieldNumber2",
                "SubFieldNumber3"
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);
            if (!parseVariantKwds(sipKwds, s_kwds, kwdsCount, args, posArgsCount, indexes))
                return nullptr;

            wpsapi::Selection *sipCpp = reinterpret_cast<wpsapi::Selection *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_wpsapi_Selection));

            HRESULT hr = sipCpp->Sort(
                args[0], args[1], args[2], args[3], args[4], args[5],
                args[6], args[7], args[8], args[9], args[10],
                args[11], args[12], args[13], args[14], args[15],
                args[16], args[17], args[18], args[19], args[20],
                args[21]);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return PyLong_FromLong(hr);
        %End

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

        virtual HRESULT get_WordOpenXML(
            BSTR *prop /Out/) = 0;

        virtual HRESULT ClearParagraphStyle() = 0;

        virtual HRESULT ClearCharacterAllFormatting() = 0;

        virtual HRESULT ClearCharacterStyle() = 0;

        virtual HRESULT ClearCharacterDirectFormatting() = 0;

        virtual HRESULT get_ContentControls(
            ContentControls **prop /Out/) = 0;

        virtual HRESULT get_ParentContentControl(
            ContentControl **prop /Out/) = 0;

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

        virtual HRESULT ReadingModeGrowFont() = 0;

        virtual HRESULT ReadingModeShrinkFont() = 0;

        virtual HRESULT ClearParagraphAllFormatting() = 0;

        virtual HRESULT ClearParagraphDirectFormatting() = 0;

        virtual HRESULT InsertNewPage() = 0;

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

        WdSelectionType getType();
        %MethodCode
            wpsapi::WdSelectionType prop = (wpsapi::WdSelectionType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

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

        HeaderFooter* getHeaderFooter();
        %MethodCode
            wpsapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_HeaderFooter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeaderFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HeaderFooter, get=getHeaderFooter)

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

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        WdSelectionFlags getFlags();
        %MethodCode
            wpsapi::WdSelectionFlags prop = (wpsapi::WdSelectionFlags)0;
            HRESULT hr = sipCpp->get_Flags(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Flags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFlags(WdSelectionFlags prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Flags(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Flags()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Flags, get=getFlags, set=setFlags)

        VARIANT_BOOL getActive();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Active(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Active()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Active, get=getActive)

        VARIANT_BOOL getStartIsActive();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StartIsActive(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartIsActive()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStartIsActive(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StartIsActive(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StartIsActive()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StartIsActive, get=getStartIsActive, set=setStartIsActive)

        VARIANT_BOOL getIPAtEndOfLine();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IPAtEndOfLine(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IPAtEndOfLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IPAtEndOfLine, get=getIPAtEndOfLine)

        VARIANT_BOOL getExtendMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ExtendMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExtendMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExtendMode(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ExtendMode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ExtendMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ExtendMode, get=getExtendMode, set=setExtendMode)

        VARIANT_BOOL getColumnSelectMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ColumnSelectMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnSelectMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColumnSelectMode(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColumnSelectMode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColumnSelectMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColumnSelectMode, get=getColumnSelectMode, set=setColumnSelectMode)

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

        ShapeRange* getChildShapeRange();
        %MethodCode
            wpsapi::ShapeRange *prop = nullptr;
            HRESULT hr = sipCpp->get_ChildShapeRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChildShapeRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChildShapeRange, get=getChildShapeRange)

        VARIANT_BOOL getHasChildShapeRange();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasChildShapeRange(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasChildShapeRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasChildShapeRange, get=getHasChildShapeRange)

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
