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
    struct CubeField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_CubeFieldType(
            XlCubeFieldType *RHS /Out/) = 0;

        virtual HRESULT get__Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Orientation(
            XlPivotFieldOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlPivotFieldOrientation RHS) = 0;

        virtual HRESULT get_Position(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            long RHS) = 0;

        virtual HRESULT get_TreeviewControl(
            TreeviewControl **RHS /Out/) = 0;

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

        virtual HRESULT get_HiddenLevels(
            long *RHS /Out/) = 0;

        virtual HRESULT put_HiddenLevels(
            long RHS) = 0;

        virtual HRESULT get_HasMemberProperties(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_LayoutForm(
            XlLayoutFormType *RHS /Out/) = 0;

        virtual HRESULT put_LayoutForm(
            XlLayoutFormType RHS) = 0;

        virtual HRESULT get_PivotFields(
            PivotFields **RHS /Out/) = 0;

        virtual HRESULT _AddMemberPropertyField(
            BSTR Property,
            VARIANT PropertyOrder) = 0;

        virtual HRESULT get_EnableMultiplePageItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableMultiplePageItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LayoutSubtotalLocation(
            XlSubtototalLocationType *RHS /Out/) = 0;

        virtual HRESULT put_LayoutSubtotalLocation(
            XlSubtototalLocationType RHS) = 0;

        virtual HRESULT get_ShowInFieldList(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowInFieldList(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT AddMemberPropertyField(
            BSTR Property,
            VARIANT PropertyOrder,
            VARIANT PropertyDisplayedIn) = 0;

        virtual HRESULT get_IncludeNewItemsInFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeNewItemsInFilter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CubeFieldSubType(
            XlCubeFieldSubType *RHS /Out/) = 0;

        virtual HRESULT get_AllItemsVisible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT ClearManualFilter() = 0;

        virtual HRESULT CreatePivotFields() = 0;

        virtual HRESULT get_CurrentPageName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CurrentPageName(
            BSTR RHS) = 0;

        virtual HRESULT get_IsDate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_FlattenHierarchies(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FlattenHierarchies(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HierarchizeDistinct(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HierarchizeDistinct(
            VARIANT_BOOL RHS) = 0;

    };
};
