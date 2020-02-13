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
    struct IStyle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_AddIndent(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AddIndent(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT get_FormulaHidden(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FormulaHidden(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HorizontalAlignment(
            XlHAlign *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            XlHAlign RHS) = 0;

        virtual HRESULT get_IncludeAlignment(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeAlignment(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeBorder(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeBorder(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeFont(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeFont(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeNumber(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeNumber(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludePatterns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludePatterns(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeProtection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeProtection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IndentLevel(
            long *RHS /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            long RHS) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MergeCells(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_MergeCells(
            VARIANT RHS) = 0;

        virtual HRESULT get_Name(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR RHS) = 0;

        virtual HRESULT get_NumberFormatLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            BSTR RHS) = 0;

        virtual HRESULT get_Orientation(
            XlOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlOrientation RHS) = 0;

        virtual HRESULT get_ShrinkToFit(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShrinkToFit(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Value(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_VerticalAlignment(
            XlVAlign *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            XlVAlign RHS) = 0;

        virtual HRESULT get_WrapText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WrapText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get__Default(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

    };
};
