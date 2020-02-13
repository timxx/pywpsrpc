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
    struct ICellFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **RHS /Out/) = 0;

        virtual HRESULT putref_Borders(
            Borders *RHS) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT putref_Font(
            Font *RHS) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT putref_Interior(
            Interior *RHS) = 0;

        virtual HRESULT get_NumberFormat(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_AddIndent(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AddIndent(
            VARIANT RHS) = 0;

        virtual HRESULT get_IndentLevel(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            VARIANT RHS) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT RHS) = 0;

        virtual HRESULT get_ShrinkToFit(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ShrinkToFit(
            VARIANT RHS) = 0;

        virtual HRESULT get_WrapText(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_WrapText(
            VARIANT RHS) = 0;

        virtual HRESULT get_Locked(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT RHS) = 0;

        virtual HRESULT get_FormulaHidden(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FormulaHidden(
            VARIANT RHS) = 0;

        virtual HRESULT get_MergeCells(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_MergeCells(
            VARIANT RHS) = 0;

        virtual HRESULT Clear() = 0;

    };
};
