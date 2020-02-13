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
    struct IPivotLayout : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ColumnFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_DataFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_PageFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_RowFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_HiddenFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_VisibleFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_PivotFields(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_CubeFields(
            CubeFields **RHS /Out/) = 0;

        virtual HRESULT get_PivotCache(
            PivotCache **RHS /Out/) = 0;

        virtual HRESULT get_PivotTable(
            PivotTable **RHS /Out/) = 0;

        virtual HRESULT get_InnerDetail(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_InnerDetail(
            BSTR RHS) = 0;

        virtual HRESULT AddFields(
            VARIANT RowFields,
            VARIANT ColumnFields,
            VARIANT PageFields,
            VARIANT AppendField) = 0;

    };
};
