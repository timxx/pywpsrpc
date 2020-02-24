/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct OfficeDataSourceObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ConnectString(
            BSTR *pbstrConnect /Out/) = 0;

        virtual HRESULT put_ConnectString(
            BSTR pbstrConnect) = 0;

        virtual HRESULT get_Table(
            BSTR *pbstrTable /Out/) = 0;

        virtual HRESULT put_Table(
            BSTR pbstrTable) = 0;

        virtual HRESULT get_DataSource(
            BSTR *pbstrSrc /Out/) = 0;

        virtual HRESULT put_DataSource(
            BSTR pbstrSrc) = 0;

        virtual HRESULT get_Columns(
            IDispatch **ppColumns /Out/) = 0;

        virtual HRESULT get_RowCount(
            long *pcRows /Out/) = 0;

        virtual HRESULT get_Filters(
            IDispatch **ppFilters /Out/) = 0;

        virtual HRESULT Move(
            MsoMoveRow MsoMoveRow,
            int RowNbr = 0,
            int *rval /Out/ = 0) = 0;

        virtual HRESULT Open(
            BSTR bstrSrc = 0,
            BSTR bstrConnect = 0,
            BSTR bstrTable = 0,
            long fOpenExclusive = 0,
            long fNeverPrompt = 1) = 0;

        virtual HRESULT SetSortOrder(
            BSTR SortField1,
            VARIANT_BOOL SortAscending1 = -1,
            BSTR SortField2 = 0,
            VARIANT_BOOL SortAscending2 = -1,
            BSTR SortField3 = 0,
            VARIANT_BOOL SortAscending3 = -1) = 0;

        virtual HRESULT ApplyFilter() = 0;

    };
};
