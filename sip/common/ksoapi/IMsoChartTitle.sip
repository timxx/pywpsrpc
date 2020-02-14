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
    struct IMsoChartTitle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Caption(
            BSTR pbstr) = 0;

        virtual HRESULT get_Caption(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            IMsoCharacters **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Font(
            ChartFont **ppfont /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT Val) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *Val /Out/) = 0;

        virtual HRESULT get_Left(
            double *pval /Out/) = 0;

        virtual HRESULT put_Left(
            double pval) = 0;

        virtual HRESULT put_Orientation(
            VARIANT Val) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *Val /Out/) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT put_Text(
            BSTR pbstr) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Top(
            double *pval /Out/) = 0;

        virtual HRESULT put_Top(
            double pval) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT Val) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *Val /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            int *pval /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            int pval) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT Val) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *Val /Out/) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppinterior /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_IncludeInLayout(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeInLayout(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *pval /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition pval) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppval /Out/) = 0;

        virtual HRESULT get_Height(
            double *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Width(
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

    };
};
