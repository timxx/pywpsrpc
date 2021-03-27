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
            XlAutoFillType Type = etapi::xlFillDefault,
            VARIANT *RHS /Out/ = 0) = 0;

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
            XlRangeAutoFormat Format = etapi::xlRangeAutoFormatNone,
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
            XlPictureAppearance Appearance = etapi::xlPrinter,
            XlCopyPictureFormat Format = etapi::xlPicture,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

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
            XlPasteType Paste = etapi::xlPasteAll,
            XlPasteSpecialOperation Operation = etapi::xlPasteSpecialOperationNone,
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

        etapi::Range* Range(
            VARIANT Cell1,
            VARIANT Cell2 = argMissing2());
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(*a0, *a1, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            sipRes = prop;
        %End

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

        virtual HRESULT Run(
            /*VARIANT Arg1 = argMissing2(),
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
            VARIANT *RHS /Out/ = 0*/) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            Run(self, Arg1: Any = None, Arg2: Any = None, Arg3: Any = None, Arg4: Any = None, Arg5: Any = None, Arg6: Any = None, Arg7: Any = None, Arg8: Any = None, Arg9: Any = None, Arg10: Any = None, Arg11: Any = None, Arg12: Any = None, Arg13: Any = None, Arg14: Any = None, Arg15: Any = None, Arg16: Any = None, Arg17: Any = None, Arg18: Any = None, Arg19: Any = None, Arg20: Any = None, Arg21: Any = None, Arg22: Any = None, Arg23: Any = None, Arg24: Any = None, Arg25: Any = None, Arg26: Any = None, Arg27: Any = None, Arg28: Any = None, Arg29: Any = None, Arg30: Any = None) -> Tuple[int, Any]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount > 30)
            {
                PyErr_Format(PyExc_TypeError,
                    "Run() takes from 0 to 30 positional arguments but %d were given\n",
                    posArgsCount);
                return nullptr;
            }

            VARIANT* args[30];
            for (int i = posArgsCount; i < 30; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes))
                return nullptr;

            static const char * const s_kwds[] =
            {
                "Arg1", "Arg2", "Arg3", "Arg4", "Arg5",
                "Arg6", "Arg7", "Arg8", "Arg9", "Arg10",
                "Arg11", "Arg12", "Arg13", "Arg14", "Arg15",
                "Arg16", "Arg17", "Arg18", "Arg19", "Arg20",
                "Arg21", "Arg22", "Arg23", "Arg24", "Arg25",
                "Arg26", "Arg27", "Arg28", "Arg29", "Arg30"
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

            if (!parseVariantKwds(sipKwds, s_kwds, kwdsCount, args, posArgsCount, indexes))
                return nullptr;

            etapi::IRange *sipCpp = reinterpret_cast<etapi::IRange *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi_IRange));

            VARIANT *prop = new VARIANT;
            VariantInit(prop);

            HRESULT hr = sipCpp->Run(
                *args[0], *args[1], *args[2], *args[3], *args[4], *args[5],
                *args[6], *args[7], *args[8], *args[9], *args[10],
                *args[11], *args[12], *args[13], *args[14], *args[15],
                *args[16], *args[17], *args[18], *args[19], *args[20],
                *args[21], *args[22], *args[23], *args[24], *args[25],
                *args[26], *args[27], *args[28], *args[29],
                prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return sipBuildResult(0, "(iN)", hr, prop, sipType_VARIANT, SIP_NULLPTR);
        %End

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
            XlSortMethod SortMethod = etapi::xlPinYin,
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
            XlSubscribeToFormat Format = etapi::xlSubscribeToPicture,
            VARIANT *RHS /Out/ = 0) = 0;

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
            XlPasteType Paste = etapi::xlPasteAll,
            XlPasteSpecialOperation Operation = etapi::xlPasteSpecialOperationNone,
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

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        VARIANT getAddIndent();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_AddIndent(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddIndent(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AddIndent(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AddIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AddIndent, get=getAddIndent, set=setAddIndent)

        Areas* getAreas();
        %MethodCode
            etapi::Areas *prop = nullptr;
            HRESULT hr = sipCpp->get_Areas(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Areas()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Areas, get=getAreas)

        Borders* getBorders();
        %MethodCode
            etapi::Borders *prop = nullptr;
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

        %Property(name=Borders, get=getBorders)

        Range* getCells();
        %MethodCode
            etapi::Range *prop = nullptr;
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

        long getColumn();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Column(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Column()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Column, get=getColumn)

        Range* getColumns();
        %MethodCode
            etapi::Range *prop = nullptr;
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

        VARIANT getColumnWidth();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ColumnWidth(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColumnWidth(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColumnWidth(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColumnWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColumnWidth, get=getColumnWidth, set=setColumnWidth)

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        Range* getCurrentArray();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_CurrentArray(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CurrentArray()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CurrentArray, get=getCurrentArray)

        Range* getCurrentRegion();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_CurrentRegion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CurrentRegion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CurrentRegion, get=getCurrentRegion)

        Range* getDependents();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Dependents(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dependents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Dependents, get=getDependents)

        Range* getDirectDependents();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_DirectDependents(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DirectDependents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DirectDependents, get=getDirectDependents)

        Range* getDirectPrecedents();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_DirectPrecedents(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DirectPrecedents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DirectPrecedents, get=getDirectPrecedents)

        Range* getEntireColumn();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_EntireColumn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EntireColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EntireColumn, get=getEntireColumn)

        Range* getEntireRow();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_EntireRow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EntireRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EntireRow, get=getEntireRow)

        Font* getFont();
        %MethodCode
            etapi::Font *prop = nullptr;
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

        %Property(name=Font, get=getFont)

        VARIANT getFormula();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Formula(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Formula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormula(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Formula(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Formula()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Formula, get=getFormula, set=setFormula)

        VARIANT getFormulaArray();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_FormulaArray(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaArray()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaArray(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaArray(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaArray()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaArray, get=getFormulaArray, set=setFormulaArray)

        XlFormulaLabel getFormulaLabel();
        %MethodCode
            etapi::XlFormulaLabel prop = (etapi::XlFormulaLabel)0;
            HRESULT hr = sipCpp->get_FormulaLabel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaLabel(XlFormulaLabel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaLabel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaLabel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaLabel, get=getFormulaLabel, set=setFormulaLabel)

        VARIANT getFormulaHidden();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_FormulaHidden(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaHidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaHidden(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaHidden(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaHidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaHidden, get=getFormulaHidden, set=setFormulaHidden)

        VARIANT getFormulaLocal();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_FormulaLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaLocal(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaLocal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaLocal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaLocal, get=getFormulaLocal, set=setFormulaLocal)

        VARIANT getFormulaR1C1();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_FormulaR1C1(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaR1C1()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaR1C1(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaR1C1(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaR1C1()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaR1C1, get=getFormulaR1C1, set=setFormulaR1C1)

        VARIANT getFormulaR1C1Local();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_FormulaR1C1Local(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaR1C1Local()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaR1C1Local(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaR1C1Local(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaR1C1Local()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaR1C1Local, get=getFormulaR1C1Local, set=setFormulaR1C1Local)

        VARIANT getHasArray();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_HasArray(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasArray()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasArray, get=getHasArray)

        VARIANT getHasFormula();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_HasFormula(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasFormula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasFormula, get=getHasFormula)

        VARIANT getHeight();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Height(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Height, get=getHeight)

        VARIANT getHidden();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Hidden(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHidden(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Hidden(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Hidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Hidden, get=getHidden, set=setHidden)

        VARIANT getHorizontalAlignment();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_HorizontalAlignment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalAlignment(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalAlignment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalAlignment, get=getHorizontalAlignment, set=setHorizontalAlignment)

        VARIANT getIndentLevel();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_IndentLevel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IndentLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIndentLevel(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IndentLevel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IndentLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IndentLevel, get=getIndentLevel, set=setIndentLevel)

        Interior* getInterior();
        %MethodCode
            etapi::Interior *prop = nullptr;
            HRESULT hr = sipCpp->get_Interior(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Interior()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Interior, get=getInterior)

        VARIANT getLeft();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Left(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Left, get=getLeft)

        long getListHeaderRows();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ListHeaderRows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListHeaderRows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListHeaderRows, get=getListHeaderRows)

        XlLocationInTable getLocationInTable();
        %MethodCode
            etapi::XlLocationInTable prop = (etapi::XlLocationInTable)0;
            HRESULT hr = sipCpp->get_LocationInTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LocationInTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LocationInTable, get=getLocationInTable)

        VARIANT getLocked();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Locked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Locked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocked(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Locked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Locked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Locked, get=getLocked, set=setLocked)

        Range* getMergeArea();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_MergeArea(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MergeArea()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MergeArea, get=getMergeArea)

        VARIANT getMergeCells();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_MergeCells(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MergeCells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMergeCells(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MergeCells(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MergeCells()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MergeCells, get=getMergeCells, set=setMergeCells)

        VARIANT getName();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        Range* getNext();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Next(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Next()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Next, get=getNext)

        VARIANT getNumberFormat();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_NumberFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormat(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormat, get=getNumberFormat, set=setNumberFormat)

        VARIANT getNumberFormatLocal();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_NumberFormatLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormatLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormatLocal(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormatLocal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormatLocal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormatLocal, get=getNumberFormatLocal, set=setNumberFormatLocal)

        VARIANT getOrientation();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Orientation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Orientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrientation(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Orientation(*a0);
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

        VARIANT getOutlineLevel();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_OutlineLevel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutlineLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutlineLevel(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutlineLevel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutlineLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutlineLevel, get=getOutlineLevel, set=setOutlineLevel)

        long getPageBreak();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PageBreak(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageBreak()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageBreak(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageBreak(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageBreak()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageBreak, get=getPageBreak, set=setPageBreak)

        PivotField* getPivotField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotField, get=getPivotField)

        PivotItem* getPivotItem();
        %MethodCode
            etapi::PivotItem *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotItem(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotItem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotItem, get=getPivotItem)

        PivotTable* getPivotTable();
        %MethodCode
            etapi::PivotTable *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotTable, get=getPivotTable)

        Range* getPrecedents();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Precedents(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Precedents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Precedents, get=getPrecedents)

        VARIANT getPrefixCharacter();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_PrefixCharacter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrefixCharacter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrefixCharacter, get=getPrefixCharacter)

        Range* getPrevious();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Previous(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Previous()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Previous, get=getPrevious)

        QueryTable* getQueryTable();
        %MethodCode
            etapi::QueryTable *prop = nullptr;
            HRESULT hr = sipCpp->get_QueryTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_QueryTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=QueryTable, get=getQueryTable)

        long getRow();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Row(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Row()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Row, get=getRow)

        VARIANT getRowHeight();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_RowHeight(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRowHeight(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RowHeight(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RowHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RowHeight, get=getRowHeight, set=setRowHeight)

        Range* getRows();
        %MethodCode
            etapi::Range *prop = nullptr;
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

        VARIANT getShowDetail();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ShowDetail(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDetail()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDetail(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDetail(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDetail()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDetail, get=getShowDetail, set=setShowDetail)

        VARIANT getShrinkToFit();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ShrinkToFit(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShrinkToFit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShrinkToFit(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShrinkToFit(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShrinkToFit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShrinkToFit, get=getShrinkToFit, set=setShrinkToFit)

        SoundNote* getSoundNote();
        %MethodCode
            etapi::SoundNote *prop = nullptr;
            HRESULT hr = sipCpp->get_SoundNote(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SoundNote()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SoundNote, get=getSoundNote)

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

        PyObject* setStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(*a0);
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

        VARIANT getSummary();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Summary(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Summary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Summary, get=getSummary)

        VARIANT getText();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
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

        %Property(name=Text, get=getText)

        VARIANT getTop();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Top(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Top, get=getTop)

        VARIANT getUseStandardHeight();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_UseStandardHeight(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseStandardHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseStandardHeight(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseStandardHeight(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseStandardHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseStandardHeight, get=getUseStandardHeight, set=setUseStandardHeight)

        VARIANT getUseStandardWidth();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_UseStandardWidth(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseStandardWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseStandardWidth(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseStandardWidth(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseStandardWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseStandardWidth, get=getUseStandardWidth, set=setUseStandardWidth)

        Validation* getValidation();
        %MethodCode
            etapi::Validation *prop = nullptr;
            HRESULT hr = sipCpp->get_Validation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Validation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Validation, get=getValidation)

        VARIANT getValue();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Value(argMissing2(), 0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setValue(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Value(argMissing2(), 0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Value()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Value, get=getValue, set=setValue)

        VARIANT getValue2();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Value2(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setValue2(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Value2(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Value2()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Value2, get=getValue2, set=setValue2)

        VARIANT getVerticalAlignment();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_VerticalAlignment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalAlignment(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalAlignment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalAlignment, get=getVerticalAlignment, set=setVerticalAlignment)

        VARIANT getWidth();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Width(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Width, get=getWidth)

        Worksheet* getWorksheet();
        %MethodCode
            etapi::Worksheet *prop = nullptr;
            HRESULT hr = sipCpp->get_Worksheet(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Worksheet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Worksheet, get=getWorksheet)

        VARIANT getWrapText();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_WrapText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WrapText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWrapText(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WrapText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WrapText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WrapText, get=getWrapText, set=setWrapText)

        Comment* getComment();
        %MethodCode
            etapi::Comment *prop = nullptr;
            HRESULT hr = sipCpp->get_Comment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Comment, get=getComment)

        Phonetic* getPhonetic();
        %MethodCode
            etapi::Phonetic *prop = nullptr;
            HRESULT hr = sipCpp->get_Phonetic(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Phonetic()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Phonetic, get=getPhonetic)

        FormatConditions* getFormatConditions();
        %MethodCode
            etapi::FormatConditions *prop = nullptr;
            HRESULT hr = sipCpp->get_FormatConditions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormatConditions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FormatConditions, get=getFormatConditions)

        long getReadingOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ReadingOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingOrder(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingOrder, get=getReadingOrder, set=setReadingOrder)

        Hyperlinks* getHyperlinks();
        %MethodCode
            etapi::Hyperlinks *prop = nullptr;
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

        Phonetics* getPhonetics();
        %MethodCode
            etapi::Phonetics *prop = nullptr;
            HRESULT hr = sipCpp->get_Phonetics(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Phonetics()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Phonetics, get=getPhonetics)

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

        PivotCell* getPivotCell();
        %MethodCode
            etapi::PivotCell *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotCell, get=getPivotCell)

        Errors* getErrors();
        %MethodCode
            etapi::Errors *prop = nullptr;
            HRESULT hr = sipCpp->get_Errors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Errors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Errors, get=getErrors)

        SmartTags* getSmartTags();
        %MethodCode
            etapi::SmartTags *prop = nullptr;
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

        VARIANT_BOOL getAllowEdit();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowEdit(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowEdit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowEdit, get=getAllowEdit)

        ListObject* getListObject();
        %MethodCode
            etapi::ListObject *prop = nullptr;
            HRESULT hr = sipCpp->get_ListObject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListObject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListObject, get=getListObject)

        XPath* getXPath();
        %MethodCode
            etapi::XPath *prop = nullptr;
            HRESULT hr = sipCpp->get_XPath(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XPath, get=getXPath)

        Actions* getServerActions();
        %MethodCode
            etapi::Actions *prop = nullptr;
            HRESULT hr = sipCpp->get_ServerActions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerActions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ServerActions, get=getServerActions)

        BSTR getMDX();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MDX(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MDX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MDX, get=getMDX)

        VARIANT getCountLarge();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CountLarge(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CountLarge()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CountLarge, get=getCountLarge)

        SparklineGroups* getSparklineGroups();
        %MethodCode
            etapi::SparklineGroups *prop = nullptr;
            HRESULT hr = sipCpp->get_SparklineGroups(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SparklineGroups()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SparklineGroups, get=getSparklineGroups)

        DisplayFormat* getDisplayFormat();
        %MethodCode
            etapi::DisplayFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_DisplayFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DisplayFormat, get=getDisplayFormat)
    };
};
