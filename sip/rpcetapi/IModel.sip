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
    struct IModel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ModelTables(
            ModelTables **RHS /Out/) = 0;

        virtual HRESULT get_ModelRelationships(
            ModelRelationships **RHS /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT AddConnection(
            WorkbookConnection *ConnectionToDataSource,
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT CreateModelWorkbookConnection(
            VARIANT ModelTable,
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_DataModelConnection(
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Initialize() = 0;

    };
};
