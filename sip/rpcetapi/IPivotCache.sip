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
    struct IPivotCache : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BackgroundQuery(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundQuery(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Connection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Connection(
            VARIANT RHS) = 0;

        virtual HRESULT get_EnableRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_MemoryUsed(
            long *RHS /Out/) = 0;

        virtual HRESULT get_OptimizeCache(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_OptimizeCache(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RecordCount(
            long *RHS /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT get_RefreshDate(
            DATE *RHS /Out/) = 0;

        virtual HRESULT get_RefreshName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_RefreshOnFileOpen(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RefreshOnFileOpen(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Sql(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Sql(
            VARIANT RHS) = 0;

        virtual HRESULT get_SavePassword(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SavePassword(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceData(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_SourceData(
            VARIANT RHS) = 0;

        virtual HRESULT get_CommandText(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CommandText(
            VARIANT RHS) = 0;

        virtual HRESULT get_CommandType(
            XlCmdType *RHS /Out/) = 0;

        virtual HRESULT put_CommandType(
            XlCmdType RHS) = 0;

        virtual HRESULT get_QueryType(
            XlQueryType *RHS /Out/) = 0;

        virtual HRESULT get_MaintainConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MaintainConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RefreshPeriod(
            long *RHS /Out/) = 0;

        virtual HRESULT put_RefreshPeriod(
            long RHS) = 0;

        virtual HRESULT get_Recordset(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT putref_Recordset(
            IDispatch *RHS) = 0;

        virtual HRESULT ResetTimer() = 0;

        virtual HRESULT get_LocalConnection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_LocalConnection(
            VARIANT RHS) = 0;

        virtual HRESULT CreatePivotTable(
            VARIANT TableDestination,
            VARIANT TableName = argMissing2(),
            VARIANT ReadData = argMissing2(),
            VARIANT DefaultVersion = argMissing2(),
            PivotTable **RHS /Out/ = 0) = 0;

        virtual HRESULT get_UseLocalConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseLocalConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ADOConnection(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_IsConnected(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT MakeConnection() = 0;

        virtual HRESULT get_OLAP(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SourceType(
            XlPivotTableSourceType *RHS /Out/) = 0;

        virtual HRESULT get_MissingItemsLimit(
            XlPivotTableMissingItems *RHS /Out/) = 0;

        virtual HRESULT put_MissingItemsLimit(
            XlPivotTableMissingItems RHS) = 0;

        virtual HRESULT get_SourceConnectionFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceConnectionFile(
            BSTR RHS) = 0;

        virtual HRESULT get_SourceDataFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_RobustConnect(
            XlRobustConnect *RHS /Out/) = 0;

        virtual HRESULT put_RobustConnect(
            XlRobustConnect RHS) = 0;

        virtual HRESULT SaveAsODC(
            BSTR ODCFileName,
            VARIANT Description = argMissing2(),
            VARIANT Keywords = argMissing2()) = 0;

        virtual HRESULT get_WorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_Version(
            XlPivotTableVersionList *RHS /Out/) = 0;

        virtual HRESULT get_UpgradeOnRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UpgradeOnRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT CreatePivotChart(
            VARIANT ChartDestination,
            VARIANT XlChartType = argMissing2(),
            VARIANT Left = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT Width = argMissing2(),
            VARIANT Height = argMissing2(),
            Shape **RHS /Out/ = 0) = 0;

    };
};
