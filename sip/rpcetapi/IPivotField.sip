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
    struct IPivotField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Calculation(
            XlPivotFieldCalculation *RHS /Out/) = 0;

        virtual HRESULT put_Calculation(
            XlPivotFieldCalculation RHS) = 0;

        virtual HRESULT get_ChildField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_ChildItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_CurrentPage(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CurrentPage(
            VARIANT RHS) = 0;

        virtual HRESULT get_DataRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_DataType(
            XlPivotFieldDataType *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            BSTR RHS) = 0;

        virtual HRESULT get_Function(
            XlConsolidationFunction *RHS /Out/) = 0;

        virtual HRESULT put_Function(
            XlConsolidationFunction RHS) = 0;

        virtual HRESULT get_GroupLevel(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_HiddenItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_LabelRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR RHS) = 0;

        virtual HRESULT get_Orientation(
            XlPivotFieldOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlPivotFieldOrientation RHS) = 0;

        virtual HRESULT get_ShowAllItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAllItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ParentField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_ParentItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT PivotItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Position(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            VARIANT RHS) = 0;

        virtual HRESULT get_SourceName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Subtotals(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_Subtotals(
            VARIANT Index = argMissing2(),
            VARIANT RHS = argMissing2()) = 0;

        virtual HRESULT get_BaseField(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_BaseField(
            VARIANT RHS) = 0;

        virtual HRESULT get_BaseItem(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_BaseItem(
            VARIANT RHS) = 0;

        virtual HRESULT get_TotalLevels(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR RHS) = 0;

        virtual HRESULT get_VisibleItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT CalculatedItems(
            CalculatedItems **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_DragToColumn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToColumn(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DragToHide(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToHide(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DragToPage(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToPage(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DragToRow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToRow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DragToData(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToData(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR RHS) = 0;

        virtual HRESULT get_IsCalculated(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_MemoryUsed(
            long *RHS /Out/) = 0;

        virtual HRESULT get_ServerBased(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerBased(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT _AutoSort(
            long Order,
            BSTR Field) = 0;

        virtual HRESULT AutoShow(
            long Type,
            long Range,
            long Count,
            BSTR Field) = 0;

        virtual HRESULT get_AutoSortOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT get_AutoSortField(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_AutoShowType(
            long *RHS /Out/) = 0;

        virtual HRESULT get_AutoShowRange(
            long *RHS /Out/) = 0;

        virtual HRESULT get_AutoShowCount(
            long *RHS /Out/) = 0;

        virtual HRESULT get_AutoShowField(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_LayoutBlankLine(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LayoutBlankLine(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LayoutSubtotalLocation(
            XlSubtototalLocationType *RHS /Out/) = 0;

        virtual HRESULT put_LayoutSubtotalLocation(
            XlSubtototalLocationType RHS) = 0;

        virtual HRESULT get_LayoutPageBreak(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LayoutPageBreak(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LayoutForm(
            XlLayoutFormType *RHS /Out/) = 0;

        virtual HRESULT put_LayoutForm(
            XlLayoutFormType RHS) = 0;

        virtual HRESULT get_SubtotalName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SubtotalName(
            BSTR RHS) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_DrilledDown(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DrilledDown(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CubeField(
            CubeField **RHS /Out/) = 0;

        virtual HRESULT get_CurrentPageName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CurrentPageName(
            BSTR RHS) = 0;

        virtual HRESULT get_StandardFormula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_StandardFormula(
            BSTR RHS) = 0;

        virtual HRESULT get_HiddenItemsList(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_HiddenItemsList(
            VARIANT RHS) = 0;

        virtual HRESULT get_DatabaseSort(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DatabaseSort(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IsMemberProperty(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_PropertyParentField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_PropertyOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PropertyOrder(
            long RHS) = 0;

        virtual HRESULT get_EnableItemSelection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableItemSelection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CurrentPageList(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CurrentPageList(
            VARIANT RHS) = 0;

        virtual HRESULT AddPageItem(
            BSTR Item,
            VARIANT ClearList = argMissing2()) = 0;

        virtual HRESULT get_Hidden(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Hidden(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT DrillTo(
            BSTR Field) = 0;

        virtual HRESULT get_UseMemberPropertyAsCaption(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseMemberPropertyAsCaption(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MemberPropertyCaption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_MemberPropertyCaption(
            BSTR RHS) = 0;

        virtual HRESULT get_DisplayAsTooltip(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayAsTooltip(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayInReport(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayInReport(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayAsCaption(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_LayoutCompactRow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LayoutCompactRow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeNewItemsInFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeNewItemsInFilter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_VisibleItemsList(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VisibleItemsList(
            VARIANT RHS) = 0;

        virtual HRESULT get_PivotFilters(
            PivotFilters **RHS /Out/) = 0;

        virtual HRESULT get_AutoSortPivotLine(
            PivotLine **RHS /Out/) = 0;

        virtual HRESULT get_AutoSortCustomSubtotal(
            long *RHS /Out/) = 0;

        virtual HRESULT get_ShowingInAxis(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_EnableMultiplePageItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableMultiplePageItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AllItemsVisible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT ClearManualFilter() = 0;

        virtual HRESULT ClearAllFilters() = 0;

        virtual HRESULT ClearValueFilters() = 0;

        virtual HRESULT ClearLabelFilters() = 0;

        virtual HRESULT AutoSort(
            long Order,
            BSTR Field,
            VARIANT PivotLine = argMissing2(),
            VARIANT CustomSubtotal = argMissing2()) = 0;

        virtual HRESULT get_SourceCaption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ShowDetail(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowDetail(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RepeatLabels(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RepeatLabels(
            VARIANT_BOOL RHS) = 0;

    };
};
