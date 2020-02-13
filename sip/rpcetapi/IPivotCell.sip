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
    struct IPivotCell : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_PivotCellType(
            XlPivotCellType *RHS /Out/) = 0;

        virtual HRESULT get_PivotTable(
            PivotTable **RHS /Out/) = 0;

        virtual HRESULT get_DataField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_PivotField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_PivotItem(
            PivotItem **RHS /Out/) = 0;

        virtual HRESULT get_RowItems(
            PivotItemList **RHS /Out/) = 0;

        virtual HRESULT get_ColumnItems(
            PivotItemList **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Dummy18(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_CustomSubtotalFunction(
            XlConsolidationFunction *RHS /Out/) = 0;

        virtual HRESULT get_PivotRowLine(
            PivotLine **RHS /Out/) = 0;

        virtual HRESULT get_PivotColumnLine(
            PivotLine **RHS /Out/) = 0;

        virtual HRESULT AllocateChange() = 0;

        virtual HRESULT DiscardChange() = 0;

        virtual HRESULT get_DataSourceValue(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_CellChanged(
            XlCellChangedState *RHS /Out/) = 0;

        virtual HRESULT get_MDX(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ServerActions(
            Actions **RHS /Out/) = 0;

    };
};
