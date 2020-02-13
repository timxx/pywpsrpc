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

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT AddFields(
            VARIANT RowFields,
            VARIANT ColumnFields,
            VARIANT PageFields,
            VARIANT AddToTable,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ColumnFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ColumnGrand(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ColumnGrand(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ColumnRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT ShowPages(
            VARIANT PageField,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_DataBodyRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_DataFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

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
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_InnerDetail(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_InnerDetail(
            BSTR RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_PageFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_PageRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_PageRangeCells(
            Range **RHS /Out/) = 0;

        virtual HRESULT PivotFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_RefreshDate(
            DATE *RHS /Out/) = 0;

        virtual HRESULT get_RefreshName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT RefreshTable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RowFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

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
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

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
            VARIANT SourceType,
            VARIANT SourceData,
            VARIANT TableDestination,
            VARIANT TableName,
            VARIANT RowGrand,
            VARIANT ColumnGrand,
            VARIANT SaveData,
            VARIANT HasAutoFormat,
            VARIANT AutoPage,
            VARIANT Reserved,
            VARIANT BackgroundQuery,
            VARIANT OptimizeCache,
            VARIANT PageFieldOrder,
            VARIANT PageFieldWrapCount,
            VARIANT ReadData,
            VARIANT Connection) = 0;

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
            XlPTSelectionMode Mode,
            VARIANT UseStandardName) = 0;

        virtual HRESULT get_PivotSelectionStandard(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PivotSelectionStandard(
            BSTR RHS) = 0;
/*
        virtual HRESULT GetPivotData(
            VARIANT DataField,
            VARIANT Field1,
            VARIANT Item1,
            VARIANT Field2,
            VARIANT Item2,
            VARIANT Field3,
            VARIANT Item3,
            VARIANT Field4,
            VARIANT Item4,
            VARIANT Field5,
            VARIANT Item5,
            VARIANT Field6,
            VARIANT Item6,
            VARIANT Field7,
            VARIANT Item7,
            VARIANT Field8,
            VARIANT Item8,
            VARIANT Field9,
            VARIANT Item9,
            VARIANT Field10,
            VARIANT Item10,
            VARIANT Field11,
            VARIANT Item11,
            VARIANT Field12,
            VARIANT Item12,
            VARIANT Field13,
            VARIANT Item13,
            VARIANT Field14,
            VARIANT Item14,
            Range **RHS /Out/) = 0;
*/
        virtual HRESULT get_DataPivotField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_EnableDataValueEditing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableDataValueEditing(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT AddDataField(
            IDispatch *Field,
            VARIANT Caption,
            VARIANT Function,
            PivotField **RHS /Out/) = 0;

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
/*
        virtual HRESULT Dummy15(
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
            VARIANT Measures,
            VARIANT Levels,
            VARIANT Members,
            VARIANT Properties,
            BSTR *RHS /Out/) = 0;

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
            VARIANT rowline,
            VARIANT columnline,
            PivotValueCell **RHS /Out/) = 0;

        virtual HRESULT get_Hidden(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_PivotChart(
            Shape **RHS /Out/) = 0;

        virtual HRESULT DrillDown(
            PivotItem *PivotItem,
            VARIANT PivotLine) = 0;

        virtual HRESULT DrillUp(
            PivotItem *PivotItem,
            VARIANT PivotLine,
            VARIANT LevelUniqueName) = 0;

        virtual HRESULT DrillTo(
            PivotItem *PivotItem,
            CubeField *CubeField,
            VARIANT PivotLine) = 0;

        virtual HRESULT Dummy2(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT *RHS /Out/) = 0;

    };
};
