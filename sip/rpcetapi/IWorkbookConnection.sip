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
    struct IWorkbookConnection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Description(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Description(
            BSTR RHS) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            BSTR RHS) = 0;

        virtual HRESULT get_Type(
            XlConnectionType *RHS /Out/) = 0;

        virtual HRESULT get_OLEDBConnection(
            OLEDBConnection **RHS /Out/) = 0;

        virtual HRESULT get_ODBCConnection(
            ODBCConnection **RHS /Out/) = 0;

        virtual HRESULT get_Ranges(
            Ranges **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT get_ModelConnection(
            ModelConnection **RHS /Out/) = 0;

        virtual HRESULT get_WorksheetDataConnection(
            WorksheetDataConnection **RHS /Out/) = 0;

        virtual HRESULT get_RefreshWithRefreshAll(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RefreshWithRefreshAll(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextConnection(
            TextConnection **RHS /Out/) = 0;

        virtual HRESULT get_DataFeedConnection(
            DataFeedConnection **RHS /Out/) = 0;

        virtual HRESULT get_InModel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ModelTables(
            ModelTables **RHS /Out/) = 0;

    };
};
