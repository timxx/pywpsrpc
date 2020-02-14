/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct AxisTitle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            ChartCharacters **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Font(
            ChartFont **ppfont /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT put_Orientation(
            VARIANT RHS) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT put_Text(
            BSTR RHS) = 0;

        virtual HRESULT get_Text(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppinterior /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **ppborder /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_IncludeInLayout(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeInLayout(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

        virtual HRESULT get_Height(
            double *Height /Out/) = 0;

        virtual HRESULT get_Width(
            double *Width /Out/) = 0;

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
