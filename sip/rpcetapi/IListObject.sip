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
    struct IListObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Publish(
            VARIANT Target,
            VARIANT_BOOL LinkSource,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT Unlink() = 0;

        virtual HRESULT Unlist() = 0;

        virtual HRESULT UpdateChanges(
            XlListConflict iConflictType = etapi::xlListConflictDialog) = 0;

        virtual HRESULT Resize(
            Range *Range) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_DataBodyRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_DisplayRightToLeft(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_HeaderRowRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_InsertRowRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ListColumns(
            ListColumns **RHS /Out/) = 0;

        virtual HRESULT get_ListRows(
            ListRows **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_QueryTable(
            QueryTable **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ShowAutoFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAutoFilter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTotals(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTotals(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceType(
            XlListObjectSourceType *RHS /Out/) = 0;

        virtual HRESULT get_TotalsRowRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_SharePointURL(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_XmlMap(
            XmlMap **RHS /Out/) = 0;

        virtual HRESULT get_DisplayName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_DisplayName(
            BSTR RHS) = 0;

        virtual HRESULT get_ShowHeaders(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowHeaders(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoFilter(
            AutoFilter **RHS /Out/) = 0;

        virtual HRESULT get_TableStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TableStyle(
            VARIANT RHS) = 0;

        virtual HRESULT get_ShowTableStyleFirstColumn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleFirstColumn(
            VARIANT_BOOL RHS) = 0;

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

        virtual HRESULT get_Sort(
            Sort **RHS /Out/) = 0;

        virtual HRESULT get_Comment(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Comment(
            BSTR RHS) = 0;

        virtual HRESULT ExportToVisio() = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR RHS) = 0;

        virtual HRESULT get_Summary(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Summary(
            BSTR RHS) = 0;

        virtual HRESULT get_TableObject(
            TableObject **RHS /Out/) = 0;

        virtual HRESULT get_Slicers(
            Slicers **RHS /Out/) = 0;

        virtual HRESULT get_ShowAutoFilterDropDown(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAutoFilterDropDown(
            VARIANT_BOOL RHS) = 0;

    };
};
