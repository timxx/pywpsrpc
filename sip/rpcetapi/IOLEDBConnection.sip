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
    struct IOLEDBConnection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ADOConnection(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BackgroundQuery(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundQuery(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT CancelRefresh() = 0;

        virtual HRESULT get_CommandText(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CommandText(
            VARIANT RHS) = 0;

        virtual HRESULT get_CommandType(
            XlCmdType *RHS /Out/) = 0;

        virtual HRESULT put_CommandType(
            XlCmdType RHS) = 0;

        virtual HRESULT get_Connection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Connection(
            VARIANT RHS) = 0;

        virtual HRESULT get_EnableRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LocalConnection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_LocalConnection(
            VARIANT RHS) = 0;

        virtual HRESULT get_MaintainConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MaintainConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT MakeConnection() = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT get_RefreshDate(
            DATE *RHS /Out/) = 0;

        virtual HRESULT get_Refreshing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RefreshOnFileOpen(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RefreshOnFileOpen(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RefreshPeriod(
            long *RHS /Out/) = 0;

        virtual HRESULT put_RefreshPeriod(
            long RHS) = 0;

        virtual HRESULT get_RobustConnect(
            XlRobustConnect *RHS /Out/) = 0;

        virtual HRESULT put_RobustConnect(
            XlRobustConnect RHS) = 0;

        virtual HRESULT SaveAsODC(
            BSTR ODCFileName,
            VARIANT Description,
            VARIANT Keywords) = 0;

        virtual HRESULT get_SavePassword(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SavePassword(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceConnectionFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceConnectionFile(
            BSTR RHS) = 0;

        virtual HRESULT get_SourceDataFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceDataFile(
            BSTR RHS) = 0;

        virtual HRESULT get_OLAP(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_UseLocalConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseLocalConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MaxDrillthroughRecords(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MaxDrillthroughRecords(
            long RHS) = 0;

        virtual HRESULT get_IsConnected(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ServerCredentialsMethod(
            XlCredentialsMethod *RHS /Out/) = 0;

        virtual HRESULT put_ServerCredentialsMethod(
            XlCredentialsMethod RHS) = 0;

        virtual HRESULT get_ServerSSOApplicationID(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ServerSSOApplicationID(
            BSTR RHS) = 0;

        virtual HRESULT get_AlwaysUseConnectionFile(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AlwaysUseConnectionFile(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ServerFillColor(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerFillColor(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ServerFontStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerFontStyle(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ServerNumberFormat(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerNumberFormat(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ServerTextColor(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerTextColor(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RetrieveInOfficeUILang(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RetrieveInOfficeUILang(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Reconnect() = 0;

        virtual HRESULT get_CalculatedMembers(
            CalculatedMembers **RHS /Out/) = 0;

        virtual HRESULT get_LocaleID(
            long *RHS /Out/) = 0;

        virtual HRESULT put_LocaleID(
            long RHS) = 0;

    };
};
