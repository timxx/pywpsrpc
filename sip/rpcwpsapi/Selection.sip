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

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

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
            VARIANT* args[22];
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            for (int i = posArgsCount; i < 22; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;

            for (Py_ssize_t i = 0; i < posArgsCount; ++i)
            {
                PyObject *pyArg = PyTuple_GetItem(sipArgs, i);
                int state = 0;
                args[i] = reinterpret_cast<VARIANT *>(
                    sipConvertToType(pyArg, sipType_VARIANT, 0, SIP_NO_CONVERTORS, &state, 0));

                indexes.push_back(std::make_pair(i, state));
            }

            auto _kwdPos = [](const char *name) -> int
            {
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

                const int count = sizeof(s_kwds) / sizeof(s_kwds[0]);
                for (int i = 0; i < count; ++i)
                {
                    if (strncmp(name, s_kwds[i], strlen(s_kwds[i])) == 0)
                        return i;
                }

                return -1;
            };

            Py_ssize_t pos = 0;
            PyObject *pyName = nullptr;
            PyObject *pyValue = nullptr;
            while (PyDict_Next(sipKwds, &pos, &pyName, &pyValue))
            {
                PyObject *pyEncName = pyName;
                const char *name = sipString_AsASCIIString(&pyEncName);

                int argPos = _kwdPos(name);
                if (argPos == -1)
                {
                    PyErr_Format(PyExc_TypeError,
                        "'%s' is not a valid keyword argument", name);
                    return nullptr;
                }

                if (argPos < posArgsCount)
                {
                    PyErr_Format(PyExc_TypeError,
                        "'%s' has already been given as a positional argument\n",
                        name);
                    return nullptr;
                }

                int state = 0;
                args[argPos] = reinterpret_cast<VARIANT *>(
                    sipConvertToType(pyValue, sipType_VARIANT, 0, SIP_NO_CONVERTORS, &state, 0));

                indexes.push_back(std::make_pair(argPos, state));
            }

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

    };
};
