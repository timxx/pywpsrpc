/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct AxisTitle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Caption(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR prop) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            ChartCharacters **prop /Out/ = 0) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT prop) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT put_Left(
            double prop) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT put_Top(
            double prop) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT prop) = 0;

        virtual HRESULT get_ReadingOrder(
            long *prop /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long prop) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_IncludeInLayout(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeInLayout(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT get_Formula(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR prop) = 0;

        virtual HRESULT get_FormulaR1C1(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FormulaR1C1(
            BSTR prop) = 0;

        virtual HRESULT get_FormulaLocal(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FormulaLocal(
            BSTR prop) = 0;

        virtual HRESULT get_FormulaR1C1Local(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FormulaR1C1Local(
            BSTR prop) = 0;

    };
};
