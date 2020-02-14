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
            VARIANT RowAbsolute = argMissing2(),
            VARIANT ColumnAbsolute = argMissing2(),
            XlReferenceStyle ReferenceStyle = etapi::xlA1,
            VARIANT External = argMissing2(),
            VARIANT RelativeTo = argMissing2(),
            long lcid = 0,
            BSTR *RHS /Out/ = 0) = 0;

        virtual HRESULT get_AddressLocal(
            VARIANT RowAbsolute = argMissing2(),
            VARIANT ColumnAbsolute = argMissing2(),
            XlReferenceStyle ReferenceStyle = etapi::xlA1,
            VARIANT External = argMissing2(),
            VARIANT RelativeTo = argMissing2(),
            BSTR *RHS /Out/ = 0) = 0;

        virtual HRESULT AdvancedFilter(
            XlFilterAction Action,
            VARIANT CriteriaRange = argMissing2(),
            VARIANT CopyToRange = argMissing2(),
            VARIANT Unique = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT ApplyNames(
            VARIANT Names = argMissing2(),
            VARIANT IgnoreRelativeAbsolute = argMissing2(),
            VARIANT UseRowColumnNames = argMissing2(),
            VARIANT OmitColumn = argMissing2(),
            VARIANT OmitRow = argMissing2(),
            XlApplyNamesOrder Order = etapi::xlColumnThenRow,
            VARIANT AppendLast = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

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
            VARIANT Field = argMissing2(),
            VARIANT Criteria1 = argMissing2(),
            XlAutoFilterOperator Operator = etapi::xlAnd,
            VARIANT Criteria2 = argMissing2(),
            VARIANT VisibleDropDown = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT AutoFit(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT AutoFormat(
            XlRangeAutoFormat Format,
            VARIANT Number = argMissing2(),
            VARIANT Font = argMissing2(),
            VARIANT Alignment = argMissing2(),
            VARIANT Border = argMissing2(),
            VARIANT Pattern = argMissing2(),
            VARIANT Width = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT AutoOutline(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _BorderAround(
            VARIANT LineStyle = argMissing2(),
            XlBorderWeight Weight = etapi::xlMedium,
            XlColorIndex ColorIndex = etapi::xlColorIndexAutomatic,
            VARIANT Color = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Borders(
            Borders **RHS /Out/) = 0;

        virtual HRESULT Calculate(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Cells(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            Characters **RHS /Out/ = 0) = 0;

        virtual HRESULT CheckSpelling(
            VARIANT CustomDictionary = argMissing2(),
            VARIANT IgnoreUppercase = argMissing2(),
            VARIANT AlwaysSuggest = argMissing2(),
            VARIANT SpellLang = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

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
            VARIANT Sources = argMissing2(),
            VARIANT Function = argMissing2(),
            VARIANT TopRow = argMissing2(),
            VARIANT LeftColumn = argMissing2(),
            VARIANT CreateLinks = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Copy(
            VARIANT Destination = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT CopyFromRecordset(
            IUnknown *Data,
            VARIANT MaxRows = argMissing2(),
            VARIANT MaxColumns = argMissing2(),
            long *RHS /Out/ = 0) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance,
            XlCopyPictureFormat Format,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT CreateNames(
            VARIANT Top = argMissing2(),
            VARIANT Left = argMissing2(),
            VARIANT Bottom = argMissing2(),
            VARIANT Right = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT CreatePublisher(
            VARIANT Edition = argMissing2(),
            XlPictureAppearance Appearance = etapi::xlPrinter,
            VARIANT ContainsPICT = argMissing2(),
            VARIANT ContainsBIFF = argMissing2(),
            VARIANT ContainsRTF = argMissing2(),
            VARIANT ContainsVALU = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_CurrentArray(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_CurrentRegion(
            Range **RHS /Out/) = 0;

        virtual HRESULT Cut(
            VARIANT Destination = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT DataSeries(
            VARIANT Rowcol = argMissing2(),
            XlDataSeriesType Type = etapi::xlAutoFill,
            XlDataSeriesDate Date = etapi::xlDay,
            VARIANT Step = argMissing2(),
            VARIANT Stop = argMissing2(),
            VARIANT Trend = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get__Default(
            VARIANT RowIndex = argMissing2(),
            VARIANT ColumnIndex = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put__Default(
            VARIANT RowIndex = argMissing2(),
            VARIANT ColumnIndex = argMissing2(),
            long lcid = 0,
            VARIANT RHS = argMissing2()) = 0;

        virtual HRESULT Delete(
            VARIANT Shift = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

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
            VARIANT Name = argMissing2(),
            VARIANT Reference = argMissing2(),
            XlPictureAppearance Appearance = etapi::xlPrinter,
            XlPictureAppearance ChartSize = etapi::xlPrinter,
            VARIANT Format = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

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
            VARIANT After = argMissing2(),
            VARIANT LookIn = argMissing2(),
            VARIANT LookAt = argMissing2(),
            VARIANT SearchOrder = argMissing2(),
            XlSearchDirection SearchDirection = etapi::xlNext,
            VARIANT MatchCase = argMissing2(),
            VARIANT MatchByte = argMissing2(),
            VARIANT SearchFormat = argMissing2(),
            Range **RHS /Out/ = 0) = 0;

        virtual HRESULT FindNext(
            VARIANT After = argMissing2(),
            Range **RHS /Out/ = 0) = 0;

        virtual HRESULT FindPrevious(
            VARIANT After = argMissing2(),
            Range **RHS /Out/ = 0) = 0;

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
            VARIANT Start = argMissing2(),
            VARIANT End = argMissing2(),
            VARIANT By = argMissing2(),
            VARIANT Periods = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

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
            VARIANT Shift = argMissing2(),
            VARIANT CopyOrigin = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT RowIndex,
            VARIANT ColumnIndex = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_Item(
            VARIANT RowIndex,
            VARIANT ColumnIndex = argMissing2(),
            long lcid = 0,
            VARIANT RHS = argMissing2()) = 0;

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
            VARIANT Across = argMissing2()) = 0;

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
            VARIANT TowardPrecedent = argMissing2(),
            VARIANT ArrowNumber = argMissing2(),
            VARIANT LinkNumber = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get_Next(
            Range **RHS /Out/) = 0;

        virtual HRESULT NoteText(
            VARIANT Text = argMissing2(),
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            BSTR *RHS /Out/ = 0) = 0;

        virtual HRESULT get_NumberFormat(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            VARIANT RHS) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_Offset(
            VARIANT RowOffset = argMissing2(),
            VARIANT ColumnOffset = argMissing2(),
            Range **RHS /Out/ = 0) = 0;

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
            VARIANT ParseLine = argMissing2(),
            VARIANT Destination = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT _PasteSpecial(
            XlPasteType Paste,
            XlPasteSpecialOperation Operation,
            VARIANT SkipBlanks = argMissing2(),
            VARIANT Transpose = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

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
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_QueryTable(
            QueryTable **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            VARIANT Cell1,
            VARIANT Cell2 = argMissing2(),
            Range **RHS /Out/ = 0) = 0;

        virtual HRESULT RemoveSubtotal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Replace(
            VARIANT What,
            VARIANT Replacement,
            VARIANT LookAt = argMissing2(),
            VARIANT SearchOrder = argMissing2(),
            VARIANT MatchCase = argMissing2(),
            VARIANT MatchByte = argMissing2(),
            VARIANT SearchFormat = argMissing2(),
            VARIANT ReplaceFormat = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Resize(
            VARIANT RowSize = argMissing2(),
            VARIANT ColumnSize = argMissing2(),
            Range **RHS /Out/ = 0) = 0;

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
            VARIANT Arg1 = argMissing2(),
            VARIANT Arg2 = argMissing2(),
            VARIANT Arg3 = argMissing2(),
            VARIANT Arg4 = argMissing2(),
            VARIANT Arg5 = argMissing2(),
            VARIANT Arg6 = argMissing2(),
            VARIANT Arg7 = argMissing2(),
            VARIANT Arg8 = argMissing2(),
            VARIANT Arg9 = argMissing2(),
            VARIANT Arg10 = argMissing2(),
            VARIANT Arg11 = argMissing2(),
            VARIANT Arg12 = argMissing2(),
            VARIANT Arg13 = argMissing2(),
            VARIANT Arg14 = argMissing2(),
            VARIANT Arg15 = argMissing2(),
            VARIANT Arg16 = argMissing2(),
            VARIANT Arg17 = argMissing2(),
            VARIANT Arg18 = argMissing2(),
            VARIANT Arg19 = argMissing2(),
            VARIANT Arg20 = argMissing2(),
            VARIANT Arg21 = argMissing2(),
            VARIANT Arg22 = argMissing2(),
            VARIANT Arg23 = argMissing2(),
            VARIANT Arg24 = argMissing2(),
            VARIANT Arg25 = argMissing2(),
            VARIANT Arg26 = argMissing2(),
            VARIANT Arg27 = argMissing2(),
            VARIANT Arg28 = argMissing2(),
            VARIANT Arg29 = argMissing2(),
            VARIANT Arg30 = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;
*/
        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Show(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ShowDependents(
            VARIANT Remove = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ShowDetail(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ShowDetail(
            VARIANT RHS) = 0;

        virtual HRESULT ShowErrors(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ShowPrecedents(
            VARIANT Remove = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ShrinkToFit(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ShrinkToFit(
            VARIANT RHS) = 0;

        virtual HRESULT Sort(
            VARIANT Key1 = argMissing2(),
            XlSortOrder Order1 = etapi::xlAscending,
            VARIANT Key2 = argMissing2(),
            VARIANT Type = argMissing2(),
            XlSortOrder Order2 = etapi::xlAscending,
            VARIANT Key3 = argMissing2(),
            XlSortOrder Order3 = etapi::xlAscending,
            XlYesNoGuess Header = etapi::xlNo,
            VARIANT OrderCustom = argMissing2(),
            VARIANT MatchCase = argMissing2(),
            XlSortOrientation Orientation = etapi::xlSortRows,
            XlSortMethod SortMethod = etapi::xlPinYin,
            XlSortDataOption DataOption1 = etapi::xlSortNormal,
            XlSortDataOption DataOption2 = etapi::xlSortNormal,
            XlSortDataOption DataOption3 = etapi::xlSortNormal,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT SortSpecial(
            XlSortMethod SortMethod,
            VARIANT Key1 = argMissing2(),
            XlSortOrder Order1 = etapi::xlAscending,
            VARIANT Type = argMissing2(),
            VARIANT Key2 = argMissing2(),
            XlSortOrder Order2 = etapi::xlAscending,
            VARIANT Key3 = argMissing2(),
            XlSortOrder Order3 = etapi::xlAscending,
            XlYesNoGuess Header = etapi::xlNo,
            VARIANT OrderCustom = argMissing2(),
            VARIANT MatchCase = argMissing2(),
            XlSortOrientation Orientation = etapi::xlSortRows,
            XlSortDataOption DataOption1 = etapi::xlSortNormal ,
            XlSortDataOption DataOption2 = etapi::xlSortNormal,
            XlSortDataOption DataOption3 = etapi::xlSortNormal,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_SoundNote(
            SoundNote **RHS /Out/) = 0;

        virtual HRESULT SpecialCells(
            XlCellType Type,
            VARIANT Value = argMissing2(),
            Range **RHS /Out/ = 0) = 0;

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
            VARIANT Replace = argMissing2(),
            VARIANT PageBreaks = argMissing2(),
            XlSummaryRow SummaryBelowData = etapi::xlSummaryAbove,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Summary(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Table(
            VARIANT RowInput = argMissing2(),
            VARIANT ColumnInput = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Text(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT TextToColumns(
            VARIANT Destination = argMissing2(),
            XlTextParsingType DataType = etapi::xlDelimited,
            XlTextQualifier TextQualifier = etapi::xlTextQualifierNone,
            VARIANT ConsecutiveDelimiter = argMissing2(),
            VARIANT Tab = argMissing2(),
            VARIANT Semicolon = argMissing2(),
            VARIANT Comma = argMissing2(),
            VARIANT Space = argMissing2(),
            VARIANT Other = argMissing2(),
            VARIANT OtherChar = argMissing2(),
            VARIANT FieldInfo = argMissing2(),
            VARIANT DecimalSeparator = argMissing2(),
            VARIANT ThousandsSeparator = argMissing2(),
            VARIANT TrailingMinusNumbers = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

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
            VARIANT RangeValueDataType = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_Value(
            VARIANT RangeValueDataType = argMissing2(),
            long lcid = 0,
            VARIANT RHS = argMissing2()) = 0;

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
            VARIANT Text = argMissing2(),
            Comment **RHS /Out/ = 0) = 0;

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
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_PivotCell(
            PivotCell **RHS /Out/) = 0;

        virtual HRESULT Dirty() = 0;

        virtual HRESULT get_Errors(
            Errors **RHS /Out/) = 0;

        virtual HRESULT get_SmartTags(
            SmartTags **RHS /Out/) = 0;

        virtual HRESULT Speak(
            VARIANT SpeakDirection = argMissing2(),
            VARIANT SpeakFormulas = argMissing2()) = 0;

        virtual HRESULT PasteSpecial(
            XlPasteType Paste,
            XlPasteSpecialOperation Operation,
            VARIANT SkipBlanks = argMissing2(),
            VARIANT Transpose = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_AllowEdit(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ListObject(
            ListObject **RHS /Out/) = 0;

        virtual HRESULT get_XPath(
            XPath **RHS /Out/) = 0;

        virtual HRESULT get_ServerActions(
            Actions **RHS /Out/) = 0;

        virtual HRESULT RemoveDuplicates(
            VARIANT Columns = argMissing2(),
            XlYesNoGuess Header = etapi::xlNo) = 0;

        virtual HRESULT PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_MDX(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ExportAsFixedFormat(
            XlFixedFormatType Type,
            VARIANT Filename = argMissing2(),
            VARIANT Quality = argMissing2(),
            VARIANT IncludeDocProperties = argMissing2(),
            VARIANT IgnorePrintAreas = argMissing2(),
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT OpenAfterPublish = argMissing2(),
            VARIANT FixedFormatExtClassPtr = argMissing2()) = 0;

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
            VARIANT LineStyle = argMissing2(),
            XlBorderWeight Weight = etapi::xlMedium,
            XlColorIndex ColorIndex = etapi::xlColorIndexAutomatic,
            VARIANT Color = argMissing2(),
            VARIANT ThemeColor = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT AllocateChanges() = 0;

        virtual HRESULT DiscardChanges() = 0;

        virtual HRESULT FlashFill() = 0;

    };
};
