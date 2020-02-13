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
    struct ITableObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_RowNumbers(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RowNumbers(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FetchedRowOverflow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RefreshStyle(
            XlCellInsertionMode *RHS /Out/) = 0;

        virtual HRESULT put_RefreshStyle(
            XlCellInsertionMode RHS) = 0;

        virtual HRESULT get_EnableRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Destination(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ResultRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Refresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_EnableEditing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableEditing(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PreserveColumnInfo(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveColumnInfo(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PreserveFormatting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveFormatting(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AdjustColumnWidth(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AdjustColumnWidth(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ListObject(
            ListObject **RHS /Out/) = 0;

        virtual HRESULT get_WorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

    };
};
