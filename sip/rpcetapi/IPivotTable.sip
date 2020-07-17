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
    struct IPivotTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT AddFields(
            VARIANT RowFields = argMissing2(),
            VARIANT ColumnFields = argMissing2(),
            VARIANT PageFields = argMissing2(),
            VARIANT AddToTable = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ColumnFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_ColumnGrand(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ColumnGrand(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ColumnRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT ShowPages(
            VARIANT PageField = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_DataBodyRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_DataFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_DataLabelRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            BSTR RHS) = 0;

        virtual HRESULT get_HasAutoFormat(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasAutoFormat(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HiddenFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_InnerDetail(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_InnerDetail(
            BSTR RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_PageFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_PageRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_PageRangeCells(
            Range **RHS /Out/) = 0;

        virtual HRESULT PivotFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_RefreshDate(
            DATE *RHS /Out/) = 0;

        virtual HRESULT get_RefreshName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT RefreshTable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RowFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_RowGrand(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RowGrand(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RowRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_SaveData(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SaveData(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceData(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_SourceData(
            VARIANT RHS) = 0;

        virtual HRESULT get_TableRange1(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_TableRange2(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR RHS) = 0;

        virtual HRESULT get_VisibleFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_CacheIndex(
            long *RHS /Out/) = 0;

        virtual HRESULT put_CacheIndex(
            long RHS) = 0;

        virtual HRESULT CalculatedFields(
            CalculatedFields **RHS /Out/) = 0;

        virtual HRESULT get_DisplayErrorString(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayErrorString(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayNullString(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayNullString(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableDrilldown(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableDrilldown(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableFieldDialog(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableFieldDialog(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableWizard(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableWizard(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ErrorString(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ErrorString(
            BSTR RHS) = 0;

        virtual HRESULT GetData(
            BSTR Name,
            double *RHS /Out/) = 0;

        virtual HRESULT ListFormulas() = 0;

        virtual HRESULT get_ManualUpdate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ManualUpdate(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MergeLabels(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MergeLabels(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NullString(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NullString(
            BSTR RHS) = 0;

        virtual HRESULT PivotCache(
            PivotCache **RHS /Out/) = 0;

        virtual HRESULT get_PivotFormulas(
            PivotFormulas **RHS /Out/) = 0;

        virtual HRESULT PivotTableWizard(
            VARIANT SourceType = argMissing2(),
            VARIANT SourceData = argMissing2(),
            VARIANT TableDestination = argMissing2(),
            VARIANT TableName = argMissing2(),
            VARIANT RowGrand = argMissing2(),
            VARIANT ColumnGrand = argMissing2(),
            VARIANT SaveData = argMissing2(),
            VARIANT HasAutoFormat = argMissing2(),
            VARIANT AutoPage = argMissing2(),
            VARIANT Reserved = argMissing2(),
            VARIANT BackgroundQuery = argMissing2(),
            VARIANT OptimizeCache = argMissing2(),
            VARIANT PageFieldOrder = argMissing2(),
            VARIANT PageFieldWrapCount = argMissing2(),
            VARIANT ReadData = argMissing2(),
            VARIANT Connection = argMissing2()) = 0;

        virtual HRESULT get_SubtotalHiddenPageItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SubtotalHiddenPageItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PageFieldOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PageFieldOrder(
            long RHS) = 0;

        virtual HRESULT get_PageFieldStyle(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PageFieldStyle(
            BSTR RHS) = 0;

        virtual HRESULT get_PageFieldWrapCount(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PageFieldWrapCount(
            long RHS) = 0;

        virtual HRESULT get_PreserveFormatting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveFormatting(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT _PivotSelect(
            BSTR Name,
            XlPTSelectionMode Mode = etapi::xlDataAndLabel) = 0;

        virtual HRESULT get_PivotSelection(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PivotSelection(
            BSTR RHS) = 0;

        virtual HRESULT get_SelectionMode(
            XlPTSelectionMode *RHS /Out/) = 0;

        virtual HRESULT put_SelectionMode(
            XlPTSelectionMode RHS) = 0;

        virtual HRESULT get_TableStyle(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TableStyle(
            BSTR RHS) = 0;

        virtual HRESULT get_Tag(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Tag(
            BSTR RHS) = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT get_VacatedStyle(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_VacatedStyle(
            BSTR RHS) = 0;

        virtual HRESULT Format(
            XlPivotFormatType Format) = 0;

        virtual HRESULT get_PrintTitles(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintTitles(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CubeFields(
            CubeFields **RHS /Out/) = 0;

        virtual HRESULT get_GrandTotalName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_GrandTotalName(
            BSTR RHS) = 0;

        virtual HRESULT get_SmallGrid(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SmallGrid(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RepeatItemsOnEachPrintedPage(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RepeatItemsOnEachPrintedPage(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TotalsAnnotation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TotalsAnnotation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT PivotSelect(
            BSTR Name,
            XlPTSelectionMode Mode = etapi::xlLabelOnly,
            VARIANT UseStandardName = argMissing2()) = 0;

        virtual HRESULT get_PivotSelectionStandard(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PivotSelectionStandard(
            BSTR RHS) = 0;

        virtual HRESULT GetPivotData(
            /* VARIANT DataField = argMissing2(),
            VARIANT Field1 = argMissing2(),
            VARIANT Item1 = argMissing2(),
            VARIANT Field2 = argMissing2(),
            VARIANT Item2 = argMissing2(),
            VARIANT Field3 = argMissing2(),
            VARIANT Item3 = argMissing2(),
            VARIANT Field4 = argMissing2(),
            VARIANT Item4 = argMissing2(),
            VARIANT Field5 = argMissing2(),
            VARIANT Item5 = argMissing2(),
            VARIANT Field6 = argMissing2(),
            VARIANT Item6 = argMissing2(),
            VARIANT Field7 = argMissing2(),
            VARIANT Item7 = argMissing2(),
            VARIANT Field8 = argMissing2(),
            VARIANT Item8 = argMissing2(),
            VARIANT Field9 = argMissing2(),
            VARIANT Item9 = argMissing2(),
            VARIANT Field10 = argMissing2(),
            VARIANT Item10 = argMissing2(),
            VARIANT Field11 = argMissing2(),
            VARIANT Item11 = argMissing2(),
            VARIANT Field12 = argMissing2(),
            VARIANT Item12 = argMissing2(),
            VARIANT Field13 = argMissing2(),
            VARIANT Item13 = argMissing2(),
            VARIANT Field14 = argMissing2(),
            VARIANT Item14 = argMissing2(),
            Range **RHS /Out/ = 0 */) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            GetPivotData(self, DataField: Any = None, Field1: Any = None, Item1: Any = None ... Field14: Any = None, Item14: Any = None) -> Tuple[int, etapi.Range]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount > 29)
            {
                PyErr_Format(PyExc_TypeError,
                    "GetPivotData() takes from 0 to 29 positional arguments but %d were given\n",
                    posArgsCount);
                return nullptr;
            }

            VARIANT* args[29];
            for (int i = posArgsCount; i < 29; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes))
                return nullptr;

            static const char * const s_kwds[] =
            {
                "DataField",
                "Field1", "Item1",
                "Field2", "Item2",
                "Field3", "Item3",
                "Field4", "Item4",
                "Field5", "Item5",
                "Field6", "Item6",
                "Field7", "Item7",
                "Field8", "Item8",
                "Field9", "Item9",
                "Field10", "Item10",
                "Field11", "Item11",
                "Field12", "Item12",
                "Field13", "Item13",
                "Field14", "Item14"
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

            if (!parseVariantKwds(sipKwds, s_kwds, kwdsCount, args, posArgsCount, indexes))
                return nullptr;

            etapi::IPivotTable *sipCpp = reinterpret_cast<etapi::IPivotTable *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi_IPivotTable));

            etapi::Range *prop = nullptr;

            HRESULT hr = sipCpp->GetPivotData(
                *args[0], *args[1], *args[2], *args[3], *args[4], *args[5],
                *args[6], *args[7], *args[8], *args[9], *args[10],
                *args[11], *args[12], *args[13], *args[14], *args[15],
                *args[16], *args[17], *args[18], *args[19], *args[20],
                *args[21], *args[22], *args[23], *args[24], *args[25],
                *args[26], *args[27], *args[28],
                &prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return sipBuildResult(0, "(iD)", hr, prop, sipType_etapi_Range, SIP_NULLPTR);
        %End

        virtual HRESULT get_DataPivotField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_EnableDataValueEditing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableDataValueEditing(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT AddDataField(
            IDispatch *Field,
            VARIANT Caption = argMissing2(),
            VARIANT Function = argMissing2(),
            PivotField **RHS /Out/ = 0) = 0;

        virtual HRESULT get_MDX(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ViewCalculatedMembers(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ViewCalculatedMembers(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CalculatedMembers(
            CalculatedMembers **RHS /Out/) = 0;

        virtual HRESULT get_DisplayImmediateItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayImmediateItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Dummy15(
            /* VARIANT Arg1,
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
            VARIANT *RHS /Out/ = 0 */) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            Dummy15(self, Any, Arg2: Any = None ... Arg30: Any = None) -> Tuple[int, Any]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount < 1 || posArgsCount > 30)
            {
                PyErr_Format(PyExc_TypeError,
                    "Dummy15() takes from 1 to 30 positional arguments but %d were given\n",
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
                "Arg2", "Arg3", "Arg4", "Arg5",
                "Arg6", "Arg7", "Arg8", "Arg9", "Arg10",
                "Arg11", "Arg12", "Arg13", "Arg14", "Arg15",
                "Arg16", "Arg17", "Arg18", "Arg19", "Arg20",
                "Arg21", "Arg22", "Arg23", "Arg24", "Arg25",
                "Arg26", "Arg27", "Arg28", "Arg29", "Arg30"
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

            if (!parseVariantKwds(sipKwds, s_kwds, kwdsCount, args, posArgsCount, indexes, 1))
                return nullptr;

            etapi::IPivotTable *sipCpp = reinterpret_cast<etapi::IPivotTable *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi_IPivotTable));

            VARIANT *prop = new VARIANT;
            VariantInit(prop);

            HRESULT hr = sipCpp->Dummy15(
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

        virtual HRESULT get_EnableFieldList(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableFieldList(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_VisualTotals(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_VisualTotals(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowPageMultipleItemLabel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowPageMultipleItemLabel(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Version(
            XlPivotTableVersionList *RHS /Out/) = 0;

        virtual HRESULT CreateCubeFile(
            BSTR File,
            VARIANT Measures = argMissing2(),
            VARIANT Levels = argMissing2(),
            VARIANT Members = argMissing2(),
            VARIANT Properties = argMissing2(),
            BSTR *RHS /Out/ = 0) = 0;

        virtual HRESULT get_DisplayEmptyRow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayEmptyRow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayEmptyColumn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayEmptyColumn(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowCellBackgroundFromOLAP(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowCellBackgroundFromOLAP(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PivotColumnAxis(
            PivotAxis **RHS /Out/) = 0;

        virtual HRESULT get_PivotRowAxis(
            PivotAxis **RHS /Out/) = 0;

        virtual HRESULT get_ShowDrillIndicators(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowDrillIndicators(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PrintDrillIndicators(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintDrillIndicators(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayMemberPropertyTooltips(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayMemberPropertyTooltips(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayContextTooltips(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayContextTooltips(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ClearTable() = 0;

        virtual HRESULT get_CompactRowIndent(
            long *RHS /Out/) = 0;

        virtual HRESULT put_CompactRowIndent(
            long RHS) = 0;

        virtual HRESULT get_LayoutRowDefault(
            XlLayoutRowType *RHS /Out/) = 0;

        virtual HRESULT put_LayoutRowDefault(
            XlLayoutRowType RHS) = 0;

        virtual HRESULT get_DisplayFieldCaptions(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayFieldCaptions(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT RowAxisLayout(
            XlLayoutRowType RowLayout) = 0;

        virtual HRESULT SubtotalLocation(
            XlSubtototalLocationType Location) = 0;

        virtual HRESULT get_ActiveFilters(
            PivotFilters **RHS /Out/) = 0;

        virtual HRESULT get_InGridDropZones(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InGridDropZones(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ClearAllFilters() = 0;

        virtual HRESULT get_TableStyle2(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TableStyle2(
            VARIANT RHS) = 0;

        virtual HRESULT get_ShowTableStyleLastColumn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleLastColumn(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTableStyleRowStripes(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleRowStripes(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTableStyleColumnStripes(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleColumnStripes(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTableStyleRowHeaders(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleRowHeaders(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTableStyleColumnHeaders(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleColumnHeaders(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ConvertToFormulas(
            VARIANT_BOOL ConvertFilters) = 0;

        virtual HRESULT get_AllowMultipleFilters(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AllowMultipleFilters(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CompactLayoutRowHeader(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CompactLayoutRowHeader(
            BSTR RHS) = 0;

        virtual HRESULT get_CompactLayoutColumnHeader(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CompactLayoutColumnHeader(
            BSTR RHS) = 0;

        virtual HRESULT get_FieldListSortAscending(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FieldListSortAscending(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SortUsingCustomLists(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SortUsingCustomLists(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ChangeConnection(
            WorkbookConnection *conn) = 0;

        virtual HRESULT ChangePivotCache(
            VARIANT PivotCache) = 0;

        virtual HRESULT get_Location(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Location(
            BSTR RHS) = 0;

        virtual HRESULT get_EnableWriteback(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableWriteback(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Allocation(
            XlAllocation *RHS /Out/) = 0;

        virtual HRESULT put_Allocation(
            XlAllocation RHS) = 0;

        virtual HRESULT get_AllocationValue(
            XlAllocationValue *RHS /Out/) = 0;

        virtual HRESULT put_AllocationValue(
            XlAllocationValue RHS) = 0;

        virtual HRESULT get_AllocationMethod(
            XlAllocationMethod *RHS /Out/) = 0;

        virtual HRESULT put_AllocationMethod(
            XlAllocationMethod RHS) = 0;

        virtual HRESULT get_AllocationWeightExpression(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_AllocationWeightExpression(
            BSTR RHS) = 0;

        virtual HRESULT AllocateChanges() = 0;

        virtual HRESULT CommitChanges() = 0;

        virtual HRESULT DiscardChanges() = 0;

        virtual HRESULT RefreshDataSourceValues() = 0;

        virtual HRESULT RepeatAllLabels(
            XlPivotFieldRepeatLabels Repeat) = 0;

        virtual HRESULT get_ChangeList(
            PivotTableChangeList **RHS /Out/) = 0;

        virtual HRESULT get_Slicers(
            Slicers **RHS /Out/) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR RHS) = 0;

        virtual HRESULT get_Summary(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Summary(
            BSTR RHS) = 0;

        virtual HRESULT get_VisualTotalsForSets(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_VisualTotalsForSets(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowValuesRow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowValuesRow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CalculatedMembersInFilters(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CalculatedMembersInFilters(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT PivotValueCell(
            VARIANT rowline = argMissing2(),
            VARIANT columnline = argMissing2(),
            PivotValueCell **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Hidden(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_PivotChart(
            Shape **RHS /Out/) = 0;

        virtual HRESULT DrillDown(
            PivotItem *PivotItem,
            VARIANT PivotLine = argMissing2()) = 0;

        virtual HRESULT DrillUp(
            PivotItem *PivotItem,
            VARIANT PivotLine = argMissing2(),
            VARIANT LevelUniqueName = argMissing2()) = 0;

        virtual HRESULT DrillTo(
            PivotItem *PivotItem,
            CubeField *CubeField,
            VARIANT PivotLine = argMissing2()) = 0;

        virtual HRESULT Dummy2(
            VARIANT Arg1,
            VARIANT Arg2 = argMissing2(),
            VARIANT Arg3 = argMissing2(),
            VARIANT Arg4 = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

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

        VARIANT_BOOL getColumnGrand();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ColumnGrand(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnGrand()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColumnGrand(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColumnGrand(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColumnGrand()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColumnGrand, get=getColumnGrand, set=setColumnGrand)

        Range* getColumnRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_ColumnRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColumnRange, get=getColumnRange)

        Range* getDataBodyRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_DataBodyRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataBodyRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataBodyRange, get=getDataBodyRange)

        Range* getDataLabelRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_DataLabelRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataLabelRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataLabelRange, get=getDataLabelRange)

        BSTR get_Default();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__Default(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Default()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* set_Default(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put__Default(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__Default()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_Default, get=get_Default, set=set_Default)

        VARIANT_BOOL getHasAutoFormat();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasAutoFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasAutoFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasAutoFormat(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasAutoFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasAutoFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasAutoFormat, get=getHasAutoFormat, set=setHasAutoFormat)

        BSTR getInnerDetail();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_InnerDetail(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InnerDetail()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInnerDetail(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InnerDetail(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InnerDetail()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InnerDetail, get=getInnerDetail, set=setInnerDetail)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
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

        PyObject* setName(BSTR prop);
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

        Range* getPageRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_PageRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PageRange, get=getPageRange)

        Range* getPageRangeCells();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_PageRangeCells(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageRangeCells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PageRangeCells, get=getPageRangeCells)

        DATE getRefreshDate();
        %MethodCode
            DATE prop = 0;
            HRESULT hr = sipCpp->get_RefreshDate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefreshDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RefreshDate, get=getRefreshDate)

        BSTR getRefreshName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RefreshName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefreshName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RefreshName, get=getRefreshName)

        VARIANT_BOOL getRowGrand();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RowGrand(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowGrand()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRowGrand(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RowGrand(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RowGrand()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RowGrand, get=getRowGrand, set=setRowGrand)

        Range* getRowRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_RowRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RowRange, get=getRowRange)

        VARIANT_BOOL getSaveData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SaveData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveData, get=getSaveData, set=setSaveData)

        VARIANT getSourceData();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_SourceData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSourceData(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SourceData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SourceData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SourceData, get=getSourceData, set=setSourceData)

        Range* getTableRange1();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_TableRange1(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableRange1()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TableRange1, get=getTableRange1)

        Range* getTableRange2();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_TableRange2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableRange2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TableRange2, get=getTableRange2)

        BSTR getValue();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Value(prop);
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

        PyObject* setValue(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Value(*a0);
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

        long getCacheIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CacheIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CacheIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCacheIndex(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CacheIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CacheIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CacheIndex, get=getCacheIndex, set=setCacheIndex)

        VARIANT_BOOL getDisplayErrorString();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayErrorString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayErrorString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayErrorString(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayErrorString(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayErrorString()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayErrorString, get=getDisplayErrorString, set=setDisplayErrorString)

        VARIANT_BOOL getDisplayNullString();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayNullString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayNullString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayNullString(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayNullString(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayNullString()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayNullString, get=getDisplayNullString, set=setDisplayNullString)

        VARIANT_BOOL getEnableDrilldown();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableDrilldown(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableDrilldown()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableDrilldown(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableDrilldown(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableDrilldown()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableDrilldown, get=getEnableDrilldown, set=setEnableDrilldown)

        VARIANT_BOOL getEnableFieldDialog();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableFieldDialog(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableFieldDialog()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableFieldDialog(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableFieldDialog(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableFieldDialog()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableFieldDialog, get=getEnableFieldDialog, set=setEnableFieldDialog)

        VARIANT_BOOL getEnableWizard();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableWizard(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableWizard()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableWizard(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableWizard(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableWizard()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableWizard, get=getEnableWizard, set=setEnableWizard)

        BSTR getErrorString();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ErrorString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ErrorString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setErrorString(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ErrorString(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ErrorString()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ErrorString, get=getErrorString, set=setErrorString)

        VARIANT_BOOL getManualUpdate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ManualUpdate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ManualUpdate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setManualUpdate(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ManualUpdate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ManualUpdate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ManualUpdate, get=getManualUpdate, set=setManualUpdate)

        VARIANT_BOOL getMergeLabels();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MergeLabels(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MergeLabels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMergeLabels(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MergeLabels(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MergeLabels()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MergeLabels, get=getMergeLabels, set=setMergeLabels)

        BSTR getNullString();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NullString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NullString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNullString(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NullString(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NullString()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NullString, get=getNullString, set=setNullString)

        PivotFormulas* getPivotFormulas();
        %MethodCode
            etapi::PivotFormulas *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotFormulas(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotFormulas()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotFormulas, get=getPivotFormulas)

        VARIANT_BOOL getSubtotalHiddenPageItems();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SubtotalHiddenPageItems(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SubtotalHiddenPageItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubtotalHiddenPageItems(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SubtotalHiddenPageItems(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SubtotalHiddenPageItems()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SubtotalHiddenPageItems, get=getSubtotalHiddenPageItems, set=setSubtotalHiddenPageItems)

        long getPageFieldOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PageFieldOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageFieldOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageFieldOrder(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageFieldOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageFieldOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageFieldOrder, get=getPageFieldOrder, set=setPageFieldOrder)

        BSTR getPageFieldStyle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PageFieldStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageFieldStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageFieldStyle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageFieldStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageFieldStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageFieldStyle, get=getPageFieldStyle, set=setPageFieldStyle)

        long getPageFieldWrapCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PageFieldWrapCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageFieldWrapCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageFieldWrapCount(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageFieldWrapCount(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageFieldWrapCount()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageFieldWrapCount, get=getPageFieldWrapCount, set=setPageFieldWrapCount)

        VARIANT_BOOL getPreserveFormatting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PreserveFormatting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreserveFormatting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreserveFormatting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreserveFormatting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreserveFormatting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreserveFormatting, get=getPreserveFormatting, set=setPreserveFormatting)

        BSTR getPivotSelection();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PivotSelection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPivotSelection(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PivotSelection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PivotSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PivotSelection, get=getPivotSelection, set=setPivotSelection)

        XlPTSelectionMode getSelectionMode();
        %MethodCode
            etapi::XlPTSelectionMode prop = (etapi::XlPTSelectionMode)0;
            HRESULT hr = sipCpp->get_SelectionMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SelectionMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSelectionMode(XlPTSelectionMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SelectionMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SelectionMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SelectionMode, get=getSelectionMode, set=setSelectionMode)

        BSTR getTableStyle();
        %MethodCode
            BSTR *prop = new BSTR;
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

        PyObject* setTableStyle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TableStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TableStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TableStyle, get=getTableStyle, set=setTableStyle)

        BSTR getTag();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Tag(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tag()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTag(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Tag(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Tag()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Tag, get=getTag, set=setTag)

        BSTR getVacatedStyle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_VacatedStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VacatedStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVacatedStyle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VacatedStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VacatedStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VacatedStyle, get=getVacatedStyle, set=setVacatedStyle)

        VARIANT_BOOL getPrintTitles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintTitles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintTitles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintTitles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintTitles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintTitles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintTitles, get=getPrintTitles, set=setPrintTitles)

        CubeFields* getCubeFields();
        %MethodCode
            etapi::CubeFields *prop = nullptr;
            HRESULT hr = sipCpp->get_CubeFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CubeFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CubeFields, get=getCubeFields)

        BSTR getGrandTotalName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_GrandTotalName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GrandTotalName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGrandTotalName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GrandTotalName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GrandTotalName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GrandTotalName, get=getGrandTotalName, set=setGrandTotalName)

        VARIANT_BOOL getSmallGrid();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SmallGrid(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmallGrid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmallGrid(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SmallGrid(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SmallGrid()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SmallGrid, get=getSmallGrid, set=setSmallGrid)

        VARIANT_BOOL getRepeatItemsOnEachPrintedPage();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RepeatItemsOnEachPrintedPage(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RepeatItemsOnEachPrintedPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRepeatItemsOnEachPrintedPage(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RepeatItemsOnEachPrintedPage(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RepeatItemsOnEachPrintedPage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RepeatItemsOnEachPrintedPage, get=getRepeatItemsOnEachPrintedPage, set=setRepeatItemsOnEachPrintedPage)

        VARIANT_BOOL getTotalsAnnotation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TotalsAnnotation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TotalsAnnotation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTotalsAnnotation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TotalsAnnotation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TotalsAnnotation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TotalsAnnotation, get=getTotalsAnnotation, set=setTotalsAnnotation)

        BSTR getPivotSelectionStandard();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PivotSelectionStandard(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotSelectionStandard()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPivotSelectionStandard(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PivotSelectionStandard(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PivotSelectionStandard()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PivotSelectionStandard, get=getPivotSelectionStandard, set=setPivotSelectionStandard)

        PivotField* getDataPivotField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_DataPivotField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataPivotField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataPivotField, get=getDataPivotField)

        VARIANT_BOOL getEnableDataValueEditing();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableDataValueEditing(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableDataValueEditing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableDataValueEditing(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableDataValueEditing(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableDataValueEditing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableDataValueEditing, get=getEnableDataValueEditing, set=setEnableDataValueEditing)

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

        VARIANT_BOOL getViewCalculatedMembers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ViewCalculatedMembers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ViewCalculatedMembers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setViewCalculatedMembers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ViewCalculatedMembers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ViewCalculatedMembers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ViewCalculatedMembers, get=getViewCalculatedMembers, set=setViewCalculatedMembers)

        CalculatedMembers* getCalculatedMembers();
        %MethodCode
            etapi::CalculatedMembers *prop = nullptr;
            HRESULT hr = sipCpp->get_CalculatedMembers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalculatedMembers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CalculatedMembers, get=getCalculatedMembers)

        VARIANT_BOOL getDisplayImmediateItems();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayImmediateItems(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayImmediateItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayImmediateItems(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayImmediateItems(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayImmediateItems()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayImmediateItems, get=getDisplayImmediateItems, set=setDisplayImmediateItems)

        VARIANT_BOOL getEnableFieldList();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableFieldList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableFieldList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableFieldList(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableFieldList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableFieldList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableFieldList, get=getEnableFieldList, set=setEnableFieldList)

        VARIANT_BOOL getVisualTotals();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_VisualTotals(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisualTotals()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisualTotals(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VisualTotals(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VisualTotals()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VisualTotals, get=getVisualTotals, set=setVisualTotals)

        VARIANT_BOOL getShowPageMultipleItemLabel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowPageMultipleItemLabel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowPageMultipleItemLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowPageMultipleItemLabel(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowPageMultipleItemLabel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowPageMultipleItemLabel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowPageMultipleItemLabel, get=getShowPageMultipleItemLabel, set=setShowPageMultipleItemLabel)

        XlPivotTableVersionList getVersion();
        %MethodCode
            etapi::XlPivotTableVersionList prop = (etapi::XlPivotTableVersionList)0;
            HRESULT hr = sipCpp->get_Version(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Version()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Version, get=getVersion)

        VARIANT_BOOL getDisplayEmptyRow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayEmptyRow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayEmptyRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayEmptyRow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayEmptyRow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayEmptyRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayEmptyRow, get=getDisplayEmptyRow, set=setDisplayEmptyRow)

        VARIANT_BOOL getDisplayEmptyColumn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayEmptyColumn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayEmptyColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayEmptyColumn(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayEmptyColumn(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayEmptyColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayEmptyColumn, get=getDisplayEmptyColumn, set=setDisplayEmptyColumn)

        VARIANT_BOOL getShowCellBackgroundFromOLAP();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowCellBackgroundFromOLAP(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowCellBackgroundFromOLAP()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowCellBackgroundFromOLAP(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowCellBackgroundFromOLAP(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowCellBackgroundFromOLAP()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowCellBackgroundFromOLAP, get=getShowCellBackgroundFromOLAP, set=setShowCellBackgroundFromOLAP)

        PivotAxis* getPivotColumnAxis();
        %MethodCode
            etapi::PivotAxis *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotColumnAxis(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotColumnAxis()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotColumnAxis, get=getPivotColumnAxis)

        PivotAxis* getPivotRowAxis();
        %MethodCode
            etapi::PivotAxis *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotRowAxis(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotRowAxis()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotRowAxis, get=getPivotRowAxis)

        VARIANT_BOOL getShowDrillIndicators();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowDrillIndicators(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDrillIndicators()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDrillIndicators(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDrillIndicators(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDrillIndicators()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDrillIndicators, get=getShowDrillIndicators, set=setShowDrillIndicators)

        VARIANT_BOOL getPrintDrillIndicators();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintDrillIndicators(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintDrillIndicators()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintDrillIndicators(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintDrillIndicators(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintDrillIndicators()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintDrillIndicators, get=getPrintDrillIndicators, set=setPrintDrillIndicators)

        VARIANT_BOOL getDisplayMemberPropertyTooltips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayMemberPropertyTooltips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayMemberPropertyTooltips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayMemberPropertyTooltips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayMemberPropertyTooltips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayMemberPropertyTooltips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayMemberPropertyTooltips, get=getDisplayMemberPropertyTooltips, set=setDisplayMemberPropertyTooltips)

        VARIANT_BOOL getDisplayContextTooltips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayContextTooltips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayContextTooltips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayContextTooltips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayContextTooltips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayContextTooltips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayContextTooltips, get=getDisplayContextTooltips, set=setDisplayContextTooltips)

        long getCompactRowIndent();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CompactRowIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CompactRowIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCompactRowIndent(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CompactRowIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CompactRowIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CompactRowIndent, get=getCompactRowIndent, set=setCompactRowIndent)

        XlLayoutRowType getLayoutRowDefault();
        %MethodCode
            etapi::XlLayoutRowType prop = (etapi::XlLayoutRowType)0;
            HRESULT hr = sipCpp->get_LayoutRowDefault(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LayoutRowDefault()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayoutRowDefault(XlLayoutRowType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LayoutRowDefault(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LayoutRowDefault()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LayoutRowDefault, get=getLayoutRowDefault, set=setLayoutRowDefault)

        VARIANT_BOOL getDisplayFieldCaptions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayFieldCaptions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFieldCaptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayFieldCaptions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayFieldCaptions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayFieldCaptions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayFieldCaptions, get=getDisplayFieldCaptions, set=setDisplayFieldCaptions)

        PivotFilters* getActiveFilters();
        %MethodCode
            etapi::PivotFilters *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveFilters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveFilters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveFilters, get=getActiveFilters)

        VARIANT_BOOL getInGridDropZones();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InGridDropZones(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InGridDropZones()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInGridDropZones(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InGridDropZones(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InGridDropZones()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InGridDropZones, get=getInGridDropZones, set=setInGridDropZones)

        VARIANT getTableStyle2();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_TableStyle2(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableStyle2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTableStyle2(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TableStyle2(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TableStyle2()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TableStyle2, get=getTableStyle2, set=setTableStyle2)

        VARIANT_BOOL getShowTableStyleLastColumn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTableStyleLastColumn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTableStyleLastColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTableStyleLastColumn(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTableStyleLastColumn(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTableStyleLastColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTableStyleLastColumn, get=getShowTableStyleLastColumn, set=setShowTableStyleLastColumn)

        VARIANT_BOOL getShowTableStyleRowStripes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTableStyleRowStripes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTableStyleRowStripes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTableStyleRowStripes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTableStyleRowStripes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTableStyleRowStripes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTableStyleRowStripes, get=getShowTableStyleRowStripes, set=setShowTableStyleRowStripes)

        VARIANT_BOOL getShowTableStyleColumnStripes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTableStyleColumnStripes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTableStyleColumnStripes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTableStyleColumnStripes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTableStyleColumnStripes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTableStyleColumnStripes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTableStyleColumnStripes, get=getShowTableStyleColumnStripes, set=setShowTableStyleColumnStripes)

        VARIANT_BOOL getShowTableStyleRowHeaders();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTableStyleRowHeaders(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTableStyleRowHeaders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTableStyleRowHeaders(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTableStyleRowHeaders(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTableStyleRowHeaders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTableStyleRowHeaders, get=getShowTableStyleRowHeaders, set=setShowTableStyleRowHeaders)

        VARIANT_BOOL getShowTableStyleColumnHeaders();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTableStyleColumnHeaders(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTableStyleColumnHeaders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTableStyleColumnHeaders(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTableStyleColumnHeaders(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTableStyleColumnHeaders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTableStyleColumnHeaders, get=getShowTableStyleColumnHeaders, set=setShowTableStyleColumnHeaders)

        VARIANT_BOOL getAllowMultipleFilters();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowMultipleFilters(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowMultipleFilters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowMultipleFilters(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowMultipleFilters(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowMultipleFilters()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowMultipleFilters, get=getAllowMultipleFilters, set=setAllowMultipleFilters)

        BSTR getCompactLayoutRowHeader();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CompactLayoutRowHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CompactLayoutRowHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCompactLayoutRowHeader(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CompactLayoutRowHeader(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CompactLayoutRowHeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CompactLayoutRowHeader, get=getCompactLayoutRowHeader, set=setCompactLayoutRowHeader)

        BSTR getCompactLayoutColumnHeader();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CompactLayoutColumnHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CompactLayoutColumnHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCompactLayoutColumnHeader(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CompactLayoutColumnHeader(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CompactLayoutColumnHeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CompactLayoutColumnHeader, get=getCompactLayoutColumnHeader, set=setCompactLayoutColumnHeader)

        VARIANT_BOOL getFieldListSortAscending();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FieldListSortAscending(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FieldListSortAscending()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFieldListSortAscending(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FieldListSortAscending(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FieldListSortAscending()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FieldListSortAscending, get=getFieldListSortAscending, set=setFieldListSortAscending)

        VARIANT_BOOL getSortUsingCustomLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SortUsingCustomLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortUsingCustomLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSortUsingCustomLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SortUsingCustomLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SortUsingCustomLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SortUsingCustomLists, get=getSortUsingCustomLists, set=setSortUsingCustomLists)

        BSTR getLocation();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Location(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Location()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocation(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Location(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Location()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Location, get=getLocation, set=setLocation)

        VARIANT_BOOL getEnableWriteback();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableWriteback(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableWriteback()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableWriteback(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableWriteback(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableWriteback()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableWriteback, get=getEnableWriteback, set=setEnableWriteback)

        XlAllocation getAllocation();
        %MethodCode
            etapi::XlAllocation prop = (etapi::XlAllocation)0;
            HRESULT hr = sipCpp->get_Allocation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Allocation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllocation(XlAllocation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Allocation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Allocation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Allocation, get=getAllocation, set=setAllocation)

        XlAllocationValue getAllocationValue();
        %MethodCode
            etapi::XlAllocationValue prop = (etapi::XlAllocationValue)0;
            HRESULT hr = sipCpp->get_AllocationValue(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllocationValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllocationValue(XlAllocationValue prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllocationValue(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllocationValue()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllocationValue, get=getAllocationValue, set=setAllocationValue)

        XlAllocationMethod getAllocationMethod();
        %MethodCode
            etapi::XlAllocationMethod prop = (etapi::XlAllocationMethod)0;
            HRESULT hr = sipCpp->get_AllocationMethod(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllocationMethod()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllocationMethod(XlAllocationMethod prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllocationMethod(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllocationMethod()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllocationMethod, get=getAllocationMethod, set=setAllocationMethod)

        BSTR getAllocationWeightExpression();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AllocationWeightExpression(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllocationWeightExpression()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllocationWeightExpression(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllocationWeightExpression(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllocationWeightExpression()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllocationWeightExpression, get=getAllocationWeightExpression, set=setAllocationWeightExpression)

        PivotTableChangeList* getChangeList();
        %MethodCode
            etapi::PivotTableChangeList *prop = nullptr;
            HRESULT hr = sipCpp->get_ChangeList(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChangeList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChangeList, get=getChangeList)

        Slicers* getSlicers();
        %MethodCode
            etapi::Slicers *prop = nullptr;
            HRESULT hr = sipCpp->get_Slicers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Slicers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Slicers, get=getSlicers)

        BSTR getAlternativeText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AlternativeText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlternativeText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlternativeText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlternativeText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlternativeText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlternativeText, get=getAlternativeText, set=setAlternativeText)

        BSTR getSummary();
        %MethodCode
            BSTR *prop = new BSTR;
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

        PyObject* setSummary(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Summary(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Summary()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Summary, get=getSummary, set=setSummary)

        VARIANT_BOOL getVisualTotalsForSets();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_VisualTotalsForSets(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisualTotalsForSets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisualTotalsForSets(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VisualTotalsForSets(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VisualTotalsForSets()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VisualTotalsForSets, get=getVisualTotalsForSets, set=setVisualTotalsForSets)

        VARIANT_BOOL getShowValuesRow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowValuesRow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowValuesRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowValuesRow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowValuesRow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowValuesRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowValuesRow, get=getShowValuesRow, set=setShowValuesRow)

        VARIANT_BOOL getCalculatedMembersInFilters();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CalculatedMembersInFilters(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalculatedMembersInFilters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCalculatedMembersInFilters(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CalculatedMembersInFilters(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CalculatedMembersInFilters()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CalculatedMembersInFilters, get=getCalculatedMembersInFilters, set=setCalculatedMembersInFilters)

        VARIANT_BOOL getHidden();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
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

        %Property(name=Hidden, get=getHidden)

        Shape* getPivotChart();
        %MethodCode
            etapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotChart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotChart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotChart, get=getPivotChart)
    };
};
