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
    struct IModelTable : public IDispatch /Abstract/
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

        virtual HRESULT get_SourceName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ModelTableColumns(
            ModelTableColumns **RHS /Out/) = 0;

        virtual HRESULT get_SourceWorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

        virtual void _Dummy7() = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT get_RecordCount(
            long *RHS /Out/) = 0;

    };
};
