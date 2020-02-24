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
    struct Series : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_AxisGroup(
            XlAxisGroup *prop /Out/) = 0;

        virtual HRESULT put_AxisGroup(
            XlAxisGroup prop) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT DataLabels(
            VARIANT Index = argMissing2(),
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT ErrorBar(
            XlErrorBarDirection Direction,
            XlErrorBarInclude Include,
            XlErrorBarType Type,
            VARIANT Amount = argMissing2(),
            VARIANT MinusValues = argMissing2(),
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT get_ErrorBars(
            ErrorBars **prop /Out/) = 0;

        virtual HRESULT get_Explosion(
            long *prop /Out/) = 0;

        virtual HRESULT put_Explosion(
            long prop) = 0;

        virtual HRESULT get_Formula(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR prop) = 0;

        virtual HRESULT get_FormulaLocal(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FormulaLocal(
            BSTR prop) = 0;

        virtual HRESULT get_FormulaR1C1(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FormulaR1C1(
            BSTR prop) = 0;

        virtual HRESULT get_FormulaR1C1Local(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FormulaR1C1Local(
            BSTR prop) = 0;

        virtual HRESULT get_HasDataLabels(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasDataLabels(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasErrorBars(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasErrorBars(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MarkerBackgroundColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_MarkerBackgroundColor(
            long prop) = 0;

        virtual HRESULT get_MarkerBackgroundColorIndex(
            XlColorIndex *prop /Out/) = 0;

        virtual HRESULT put_MarkerBackgroundColorIndex(
            XlColorIndex prop) = 0;

        virtual HRESULT get_MarkerForegroundColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_MarkerForegroundColor(
            long prop) = 0;

        virtual HRESULT get_MarkerForegroundColorIndex(
            XlColorIndex *prop /Out/) = 0;

        virtual HRESULT put_MarkerForegroundColorIndex(
            XlColorIndex prop) = 0;

        virtual HRESULT get_MarkerSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_MarkerSize(
            long prop) = 0;

        virtual HRESULT get_MarkerStyle(
            XlMarkerStyle *prop /Out/) = 0;

        virtual HRESULT put_MarkerStyle(
            XlMarkerStyle prop) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT Paste(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_PictureType(
            XlChartPictureType *prop /Out/) = 0;

        virtual HRESULT put_PictureType(
            XlChartPictureType prop) = 0;

        virtual HRESULT get_PictureUnit(
            double *prop /Out/) = 0;

        virtual HRESULT put_PictureUnit(
            double prop) = 0;

        virtual HRESULT get_PlotOrder(
            long *prop /Out/) = 0;

        virtual HRESULT put_PlotOrder(
            long prop) = 0;

        virtual HRESULT Points(
            VARIANT Index = argMissing2(),
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Smooth(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Smooth(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Trendlines(
            VARIANT Index = argMissing2(),
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Type(
            long *prop /Out/) = 0;

        virtual HRESULT put_Type(
            long prop) = 0;

        virtual HRESULT get_ChartType(
            XlChartType *prop /Out/) = 0;

        virtual HRESULT put_ChartType(
            XlChartType prop) = 0;

        virtual HRESULT ApplyCustomType(
            XlChartType ChartType) = 0;

        virtual HRESULT get_Values(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Values(
            VARIANT prop) = 0;

        virtual HRESULT get_XValues(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_XValues(
            VARIANT prop) = 0;

        virtual HRESULT get_BubbleSizes(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_BubbleSizes(
            VARIANT prop) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *prop /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape prop) = 0;

        virtual HRESULT get_ApplyPictToSides(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyPictToSides(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyPictToFront(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyPictToFront(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyPictToEnd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyPictToEnd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Has3DEffect(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Has3DEffect(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasLeaderLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasLeaderLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LeaderLines(
            LeaderLines **prop /Out/) = 0;

        virtual HRESULT ApplyDataLabels(
            XlDataLabelsType Type = wpsapi::xlDataLabelsShowNone,
            VARIANT LegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            VARIANT ShowSeriesName = argMissing2(),
            VARIANT ShowCategoryName = argMissing2(),
            VARIANT ShowValue = argMissing2(),
            VARIANT ShowPercentage = argMissing2(),
            VARIANT ShowBubbleSize = argMissing2(),
            VARIANT Separator = argMissing2(),
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_PictureUnit2(
            double *prop /Out/) = 0;

        virtual HRESULT put_PictureUnit2(
            double prop) = 0;

        virtual HRESULT get_PlotColorIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_InvertColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_InvertColor(
            long prop) = 0;

        virtual HRESULT get_InvertColorIndex(
            XlColorIndex *prop /Out/) = 0;

        virtual HRESULT put_InvertColorIndex(
            XlColorIndex prop) = 0;

        virtual HRESULT get_IsFiltered(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IsFiltered(
            VARIANT_BOOL prop) = 0;

    };
};
