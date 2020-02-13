/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IRange : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Activate(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_AddIndent(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AddIndent(
            VARIANT RHS) = 0;

        virtual HRESULT get_Address(
            VARIANT RowAbsolute,
            VARIANT ColumnAbsolute,
            XlReferenceStyle ReferenceStyle,
            VARIANT External,
            VARIANT RelativeTo,
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_AddressLocal(
            VARIANT RowAbsolute,
            VARIANT ColumnAbsolute,
            XlReferenceStyle ReferenceStyle,
            VARIANT External,
            VARIANT RelativeTo,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT AdvancedFilter(
            XlFilterAction Action,
            VARIANT CriteriaRange,
            VARIANT CopyToRange,
            VARIANT Unique,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ApplyNames(
            VARIANT Names,
            VARIANT IgnoreRelativeAbsolute,
            VARIANT UseRowColumnNames,
            VARIANT OmitColumn,
            VARIANT OmitRow,
            XlApplyNamesOrder Order,
            VARIANT AppendLast,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ApplyOutlineStyles(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Areas(
            Areas **RHS /Out/) = 0;

        virtual HRESULT AutoComplete(
            BSTR String,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT AutoFill(
            Range *Destination,
            XlAutoFillType Type,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT AutoFilter(
            VARIANT Field,
            VARIANT Criteria1,
            XlAutoFilterOperator Operator,
            VARIANT Criteria2,
            VARIANT VisibleDropDown,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT AutoFit(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT AutoFormat(
            XlRangeAutoFormat Format,
            VARIANT Number,
            VARIANT Font,
            VARIANT Alignment,
            VARIANT Border,
            VARIANT Pattern,
            VARIANT Width,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT AutoOutline(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _BorderAround(
            VARIANT LineStyle,
            XlBorderWeight Weight,
            XlColorIndex ColorIndex,
            VARIANT Color,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **RHS /Out/) = 0;

        virtual HRESULT Calculate(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Cells(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start,
            VARIANT Length,
            Characters **RHS /Out/) = 0;

        virtual HRESULT CheckSpelling(
            VARIANT CustomDictionary,
            VARIANT IgnoreUppercase,
            VARIANT AlwaysSuggest,
            VARIANT SpellLang,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Clear(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ClearContents(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ClearNotes(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ClearOutline(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Column(
            long *RHS /Out/) = 0;

        virtual HRESULT ColumnDifferences(
            VARIANT Comparison,
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Columns(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ColumnWidth(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ColumnWidth(
            VARIANT RHS) = 0;

        virtual HRESULT Consolidate(
            VARIANT Sources,
            VARIANT Function,
            VARIANT TopRow,
            VARIANT LeftColumn,
            VARIANT CreateLinks,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT Destination,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT CopyFromRecordset(
            IUnknown *Data,
            VARIANT MaxRows,
            VARIANT MaxColumns,
            long *RHS /Out/) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance,
            XlCopyPictureFormat Format,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT CreateNames(
            VARIANT Top,
            VARIANT Left,
            VARIANT Bottom,
            VARIANT Right,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT CreatePublisher(
            VARIANT Edition,
            XlPictureAppearance Appearance,
            VARIANT ContainsPICT,
            VARIANT ContainsBIFF,
            VARIANT ContainsRTF,
            VARIANT ContainsVALU,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_CurrentArray(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_CurrentRegion(
            Range **RHS /Out/) = 0;

        virtual HRESULT Cut(
            VARIANT Destination,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT DataSeries(
            VARIANT Rowcol,
            XlDataSeriesType Type,
            XlDataSeriesDate Date,
            VARIANT Step,
            VARIANT Stop,
            VARIANT Trend,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT RowIndex,
            VARIANT ColumnIndex,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            VARIANT RowIndex,
            VARIANT ColumnIndex,
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT Delete(
            VARIANT Shift,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Dependents(
            Range **RHS /Out/) = 0;

        virtual HRESULT DialogBox(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_DirectDependents(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_DirectPrecedents(
            Range **RHS /Out/) = 0;

        virtual HRESULT EditionOptions(
            XlEditionType Type,
            XlEditionOptionsOption Option,
            VARIANT Name,
            VARIANT Reference,
            XlPictureAppearance Appearance,
            XlPictureAppearance ChartSize,
            VARIANT Format,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_End(
            XlDirection Direction,
            Range **RHS /Out/) = 0;

        virtual HRESULT get_EntireColumn(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_EntireRow(
            Range **RHS /Out/) = 0;

        virtual HRESULT FillDown(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT FillLeft(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT FillRight(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT FillUp(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Find(
            VARIANT What,
            VARIANT After,
            VARIANT LookIn,
            VARIANT LookAt,
            VARIANT SearchOrder,
            XlSearchDirection SearchDirection,
            VARIANT MatchCase,
            VARIANT MatchByte,
            VARIANT SearchFormat,
            Range **RHS /Out/) = 0;

        virtual HRESULT FindNext(
            VARIANT After,
            Range **RHS /Out/) = 0;

        virtual HRESULT FindPrevious(
            VARIANT After,
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT get_Formula(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Formula(
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get_FormulaArray(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FormulaArray(
            VARIANT RHS) = 0;

        virtual HRESULT get_FormulaLabel(
            XlFormulaLabel *RHS /Out/) = 0;

        virtual HRESULT put_FormulaLabel(
            XlFormulaLabel RHS) = 0;

        virtual HRESULT get_FormulaHidden(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FormulaHidden(
            VARIANT RHS) = 0;

        virtual HRESULT get_FormulaLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FormulaLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_FormulaR1C1(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FormulaR1C1(
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get_FormulaR1C1Local(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FormulaR1C1Local(
            VARIANT RHS) = 0;

        virtual HRESULT FunctionWizard(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT GoalSeek(
            VARIANT Goal,
            Range *ChangingCell,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Group(
            VARIANT Start,
            VARIANT End,
            VARIANT By,
            VARIANT Periods,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_HasArray(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_HasFormula(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Height(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Hidden(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Hidden(
            VARIANT RHS) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_IndentLevel(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            VARIANT RHS) = 0;

        virtual HRESULT InsertIndent(
            long InsertAmount) = 0;

        virtual HRESULT Insert(
            VARIANT Shift,
            VARIANT CopyOrigin,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT RowIndex,
            VARIANT ColumnIndex,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Item(
            VARIANT RowIndex,
            VARIANT ColumnIndex,
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT Justify(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Left(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ListHeaderRows(
            long *RHS /Out/) = 0;

        virtual HRESULT ListNames(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_LocationInTable(
            XlLocationInTable *RHS /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT RHS) = 0;

        virtual HRESULT Merge(
            VARIANT Across) = 0;

        virtual HRESULT UnMerge() = 0;

        virtual HRESULT get_MergeArea(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_MergeCells(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_MergeCells(
            VARIANT RHS) = 0;

        virtual HRESULT get_Name(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            VARIANT RHS) = 0;

        virtual HRESULT NavigateArrow(
            VARIANT TowardPrecedent,
            VARIANT ArrowNumber,
            VARIANT LinkNumber,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get_Next(
            Range **RHS /Out/) = 0;

        virtual HRESULT NoteText(
            VARIANT Text,
            VARIANT Start,
            VARIANT Length,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            VARIANT RHS) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_Offset(
            VARIANT RowOffset,
            VARIANT ColumnOffset,
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT RHS) = 0;

        virtual HRESULT get_OutlineLevel(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_OutlineLevel(
            VARIANT RHS) = 0;

        virtual HRESULT get_PageBreak(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PageBreak(
            long RHS) = 0;

        virtual HRESULT Parse(
            VARIANT ParseLine,
            VARIANT Destination,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _PasteSpecial(
            XlPasteType Paste,
            XlPasteSpecialOperation Operation,
            VARIANT SkipBlanks,
            VARIANT Transpose,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_PivotField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_PivotItem(
            PivotItem **RHS /Out/) = 0;

        virtual HRESULT get_PivotTable(
            PivotTable **RHS /Out/) = 0;

        virtual HRESULT get_Precedents(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_PrefixCharacter(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Previous(
            Range **RHS /Out/) = 0;

        virtual HRESULT __PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_QueryTable(
            QueryTable **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            VARIANT Cell1,
            VARIANT Cell2,
            Range **RHS /Out/) = 0;

        virtual HRESULT RemoveSubtotal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Replace(
            VARIANT What,
            VARIANT Replacement,
            VARIANT LookAt,
            VARIANT SearchOrder,
            VARIANT MatchCase,
            VARIANT MatchByte,
            VARIANT SearchFormat,
            VARIANT ReplaceFormat,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Resize(
            VARIANT RowSize,
            VARIANT ColumnSize,
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Row(
            long *RHS /Out/) = 0;

        virtual HRESULT RowDifferences(
            VARIANT Comparison,
            Range **RHS /Out/) = 0;

        virtual HRESULT get_RowHeight(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RowHeight(
            VARIANT RHS) = 0;

        virtual HRESULT get_Rows(
            Range **RHS /Out/) = 0;
/*
        virtual HRESULT Run(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT *RHS /Out/) = 0;
*/
        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Show(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ShowDependents(
            VARIANT Remove,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ShowDetail(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ShowDetail(
            VARIANT RHS) = 0;

        virtual HRESULT ShowErrors(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ShowPrecedents(
            VARIANT Remove,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ShrinkToFit(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ShrinkToFit(
            VARIANT RHS) = 0;

        virtual HRESULT Sort(
            VARIANT Key1,
            XlSortOrder Order1,
            VARIANT Key2,
            VARIANT Type,
            XlSortOrder Order2,
            VARIANT Key3,
            XlSortOrder Order3,
            XlYesNoGuess Header,
            VARIANT OrderCustom,
            VARIANT MatchCase,
            XlSortOrientation Orientation,
            XlSortMethod SortMethod,
            XlSortDataOption DataOption1,
            XlSortDataOption DataOption2,
            XlSortDataOption DataOption3,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT SortSpecial(
            XlSortMethod SortMethod,
            VARIANT Key1,
            XlSortOrder Order1,
            VARIANT Type,
            VARIANT Key2,
            XlSortOrder Order2,
            VARIANT Key3,
            XlSortOrder Order3,
            XlYesNoGuess Header,
            VARIANT OrderCustom,
            VARIANT MatchCase,
            XlSortOrientation Orientation,
            XlSortDataOption DataOption1,
            XlSortDataOption DataOption2,
            XlSortDataOption DataOption3,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_SoundNote(
            SoundNote **RHS /Out/) = 0;

        virtual HRESULT SpecialCells(
            XlCellType Type,
            VARIANT Value,
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Style(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT RHS) = 0;

        virtual HRESULT SubscribeTo(
            BSTR Edition,
            XlSubscribeToFormat Format,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Subtotal(
            long GroupBy,
            XlConsolidationFunction Function,
            VARIANT TotalList,
            VARIANT Replace,
            VARIANT PageBreaks,
            XlSummaryRow SummaryBelowData,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Summary(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Table(
            VARIANT RowInput,
            VARIANT ColumnInput,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Text(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT TextToColumns(
            VARIANT Destination,
            XlTextParsingType DataType,
            XlTextQualifier TextQualifier,
            VARIANT ConsecutiveDelimiter,
            VARIANT Tab,
            VARIANT Semicolon,
            VARIANT Comma,
            VARIANT Space,
            VARIANT Other,
            VARIANT OtherChar,
            VARIANT FieldInfo,
            VARIANT DecimalSeparator,
            VARIANT ThousandsSeparator,
            VARIANT TrailingMinusNumbers,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Top(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Ungroup(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_UseStandardHeight(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_UseStandardHeight(
            VARIANT RHS) = 0;

        virtual HRESULT get_UseStandardWidth(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_UseStandardWidth(
            VARIANT RHS) = 0;

        virtual HRESULT get_Validation(
            Validation **RHS /Out/) = 0;

        virtual HRESULT get_Value(
            VARIANT RangeValueDataType,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            VARIANT RangeValueDataType,
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get_Value2(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Value2(
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_Width(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Worksheet(
            Worksheet **RHS /Out/) = 0;

        virtual HRESULT get_WrapText(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_WrapText(
            VARIANT RHS) = 0;

        virtual HRESULT AddComment(
            VARIANT Text,
            Comment **RHS /Out/) = 0;

        virtual HRESULT get_Comment(
            Comment **RHS /Out/) = 0;

        virtual HRESULT ClearComments() = 0;

        virtual HRESULT get_Phonetic(
            Phonetic **RHS /Out/) = 0;

        virtual HRESULT get_FormatConditions(
            FormatConditions **RHS /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **RHS /Out/) = 0;

        virtual HRESULT get_Phonetics(
            Phonetics **RHS /Out/) = 0;

        virtual HRESULT SetPhonetic() = 0;

        virtual HRESULT get_ID(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ID(
            BSTR RHS) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            VARIANT PrToFileName,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_PivotCell(
            PivotCell **RHS /Out/) = 0;

        virtual HRESULT Dirty() = 0;

        virtual HRESULT get_Errors(
            Errors **RHS /Out/) = 0;

        virtual HRESULT get_SmartTags(
            SmartTags **RHS /Out/) = 0;

        virtual HRESULT Speak(
            VARIANT SpeakDirection,
            VARIANT SpeakFormulas) = 0;

        virtual HRESULT PasteSpecial(
            XlPasteType Paste,
            XlPasteSpecialOperation Operation,
            VARIANT SkipBlanks,
            VARIANT Transpose,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_AllowEdit(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ListObject(
            ListObject **RHS /Out/) = 0;

        virtual HRESULT get_XPath(
            XPath **RHS /Out/) = 0;

        virtual HRESULT get_ServerActions(
            Actions **RHS /Out/) = 0;

        virtual HRESULT RemoveDuplicates(
            VARIANT Columns,
            XlYesNoGuess Header = etapi::xlNo) = 0;

        virtual HRESULT PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            VARIANT PrToFileName,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_MDX(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ExportAsFixedFormat(
            XlFixedFormatType Type,
            VARIANT Filename,
            VARIANT Quality,
            VARIANT IncludeDocProperties,
            VARIANT IgnorePrintAreas,
            VARIANT From,
            VARIANT To,
            VARIANT OpenAfterPublish,
            VARIANT FixedFormatExtClassPtr) = 0;

        virtual HRESULT get_CountLarge(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT CalculateRowMajorOrder(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_SparklineGroups(
            SparklineGroups **RHS /Out/) = 0;

        virtual HRESULT ClearHyperlinks() = 0;

        virtual HRESULT get_DisplayFormat(
            DisplayFormat **RHS /Out/) = 0;

        virtual HRESULT BorderAround(
            VARIANT LineStyle,
            XlBorderWeight Weight,
            XlColorIndex ColorIndex,
            VARIANT Color,
            VARIANT ThemeColor,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT AllocateChanges() = 0;

        virtual HRESULT DiscardChanges() = 0;

        virtual HRESULT FlashFill() = 0;

    };
};
