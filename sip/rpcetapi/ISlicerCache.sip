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
    struct ISlicerCache : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_OLAP(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SourceType(
            XlPivotTableSourceType *RHS /Out/) = 0;

        virtual HRESULT get_WorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_Slicers(
            Slicers **RHS /Out/) = 0;

        virtual HRESULT get_PivotTables(
            SlicerPivotTables **RHS /Out/) = 0;

        virtual HRESULT get_SlicerCacheLevels(
            SlicerCacheLevels **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_VisibleSlicerItems(
            SlicerItems **RHS /Out/) = 0;

        virtual HRESULT get_VisibleSlicerItemsList(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VisibleSlicerItemsList(
            VARIANT RHS) = 0;

        virtual HRESULT get_SlicerItems(
            SlicerItems **RHS /Out/) = 0;

        virtual HRESULT get_CrossFilterType(
            XlSlicerCrossFilterType *RHS /Out/) = 0;

        virtual HRESULT put_CrossFilterType(
            XlSlicerCrossFilterType RHS) = 0;

        virtual HRESULT get_SortItems(
            XlSlicerSort *RHS /Out/) = 0;

        virtual HRESULT put_SortItems(
            XlSlicerSort RHS) = 0;

        virtual HRESULT get_SourceName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SortUsingCustomLists(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SortUsingCustomLists(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowAllItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAllItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ClearManualFilter() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_TimelineState(
            TimelineState **RHS /Out/) = 0;

        virtual HRESULT ClearAllFilters() = 0;

        virtual HRESULT get_SlicerCacheType(
            XlSlicerCacheType *RHS /Out/) = 0;

        virtual HRESULT get_FilterCleared(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_List(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RequireManualUpdate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RequireManualUpdate(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ListObject(
            ListObject **RHS /Out/) = 0;

        virtual HRESULT ClearDateFilter() = 0;

    };
};
