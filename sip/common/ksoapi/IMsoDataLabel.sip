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
    struct IMsoDataLabel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **RHS /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **RHS /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            IMsoCharacters **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Font(
            ChartFont **RHS /Out/) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT RHS) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Text(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_AutoText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR RHS) = 0;

        virtual HRESULT get_NumberFormatLinked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLinked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Type(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            VARIANT RHS) = 0;

        virtual HRESULT get_Position(
            XlDataLabelPosition *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            XlDataLabelPosition RHS) = 0;

        virtual HRESULT get_ShowSeriesName(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowSeriesName(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowCategoryName(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowCategoryName(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowValue(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowValue(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowPercentage(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowPercentage(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowBubbleSize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowBubbleSize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Separator(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Separator(
            VARIANT RHS) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get__Height(
            double *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get__Width(
            double *pval /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR pbstr) = 0;

        virtual HRESULT get_Formula(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_FormulaR1C1(
            BSTR pbstr) = 0;

        virtual HRESULT get_FormulaR1C1(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_FormulaLocal(
            BSTR pbstr) = 0;

        virtual HRESULT get_FormulaLocal(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_FormulaR1C1Local(
            BSTR pbstr) = 0;

        virtual HRESULT get_FormulaR1C1Local(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_ShowRange(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowRange(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Height(
            double *pHeight /Out/) = 0;

        virtual HRESULT put_Height(
            double pHeight) = 0;

        virtual HRESULT get_Width(
            double *pWidth /Out/) = 0;

        virtual HRESULT put_Width(
            double pWidth) = 0;

    };
};
