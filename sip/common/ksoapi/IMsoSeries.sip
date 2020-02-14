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
    struct IMsoSeries : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT  get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT  _ApplyDataLabels(
            XlDataLabelsType Type,
            VARIANT IMsoLegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT  get_AxisGroup(
            XlAxisGroup *RHS /Out/) = 0;

        virtual HRESULT  put_AxisGroup(
            XlAxisGroup RHS) = 0;

        virtual HRESULT  get_Border(
            IMsoBorder **RHS /Out/) = 0;

        virtual HRESULT  ClearFormats(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT  Copy(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT  DataLabels(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT  Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT  ErrorBar(
            XlErrorBarDirection Direction,
            XlErrorBarInclude Include,
            XlErrorBarType Type,
            VARIANT Amount = argMissing2(),
            VARIANT MinusValues = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT  get_ErrorBars(
            IMsoErrorBars **RHS /Out/) = 0;

        virtual HRESULT  get_Explosion(
            long *RHS /Out/) = 0;

        virtual HRESULT  put_Explosion(
            long RHS) = 0;

        virtual HRESULT  get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT  put_Formula(
            BSTR RHS) = 0;

        virtual HRESULT  get_FormulaLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT  put_FormulaLocal(
            BSTR RHS) = 0;

        virtual HRESULT  get_FormulaR1C1(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT  put_FormulaR1C1(
            BSTR RHS) = 0;

        virtual HRESULT  get_FormulaR1C1Local(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT  put_FormulaR1C1Local(
            BSTR RHS) = 0;

        virtual HRESULT  get_HasDataLabels(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_HasDataLabels(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  get_HasErrorBars(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_HasErrorBars(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  get_Interior(
            IMsoInterior **RHS /Out/) = 0;

        virtual HRESULT  get_Fill(
            ChartFillFormat **RHS /Out/) = 0;

        virtual HRESULT  get_InvertIfNegative(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_InvertIfNegative(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  get_MarkerBackgroundColor(
            long *RHS /Out/) = 0;

        virtual HRESULT  put_MarkerBackgroundColor(
            long RHS) = 0;

        virtual HRESULT  get_MarkerBackgroundColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT  put_MarkerBackgroundColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT  get_MarkerForegroundColor(
            long *RHS /Out/) = 0;

        virtual HRESULT  put_MarkerForegroundColor(
            long RHS) = 0;

        virtual HRESULT  get_MarkerForegroundColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT  put_MarkerForegroundColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT  get_MarkerSize(
            long *RHS /Out/) = 0;

        virtual HRESULT  put_MarkerSize(
            long RHS) = 0;

        virtual HRESULT  get_MarkerStyle(
            XlMarkerStyle *RHS /Out/) = 0;

        virtual HRESULT  put_MarkerStyle(
            XlMarkerStyle RHS) = 0;

        virtual HRESULT  get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT  put_Name(
            BSTR RHS) = 0;

        virtual HRESULT  Paste(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT  get_PictureType(
            XlChartPictureType *RHS /Out/) = 0;

        virtual HRESULT  put_PictureType(
            XlChartPictureType RHS) = 0;

        virtual HRESULT  get_PictureUnit(
            double *RHS /Out/) = 0;

        virtual HRESULT  put_PictureUnit(
            double RHS) = 0;

        virtual HRESULT  get_PlotOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT  put_PlotOrder(
            long RHS) = 0;

        virtual HRESULT  Points(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT  Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT  get_Smooth(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_Smooth(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  Trendlines(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT  get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT  put_Type(
            long RHS) = 0;

        virtual HRESULT  get_ChartType(
            XlChartType *RHS /Out/) = 0;

        virtual HRESULT  put_ChartType(
            XlChartType RHS) = 0;

        virtual HRESULT  ApplyCustomType(
            XlChartType ChartType) = 0;

        virtual HRESULT  get_Values(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT  put_Values(
            VARIANT RHS) = 0;

        virtual HRESULT  get_XValues(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT  put_XValues(
            VARIANT RHS) = 0;

        virtual HRESULT  get_BubbleSizes(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT  put_BubbleSizes(
            VARIANT RHS) = 0;

        virtual HRESULT  get_BarShape(
            XlBarShape *RHS /Out/) = 0;

        virtual HRESULT  put_BarShape(
            XlBarShape RHS) = 0;

        virtual HRESULT  get_ApplyPictToSides(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_ApplyPictToSides(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  get_ApplyPictToFront(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_ApplyPictToFront(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  get_ApplyPictToEnd(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_ApplyPictToEnd(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  get_Has3DEffect(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_Has3DEffect(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  get_HasLeaderLines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_HasLeaderLines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT  get_LeaderLines(
            IMsoLeaderLines **RHS /Out/) = 0;

        virtual HRESULT  ApplyDataLabels(
            XlDataLabelsType Type,
            VARIANT IMsoLegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            VARIANT ShowSeriesName = argMissing2(),
            VARIANT ShowCategoryName = argMissing2(),
            VARIANT ShowValue = argMissing2(),
            VARIANT ShowPercentage = argMissing2(),
            VARIANT ShowBubbleSize = argMissing2(),
            VARIANT Separator = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT  get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT  get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT  get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT  get_PictureUnit2(
            double *RHS /Out/) = 0;

        virtual HRESULT  put_PictureUnit2(
            double RHS) = 0;

        virtual HRESULT  get_PlotColorIndex(
            long *RHS /Out/) = 0;

        virtual HRESULT  get_InvertColor(
            long *RHS /Out/) = 0;

        virtual HRESULT  put_InvertColor(
            long RHS) = 0;

        virtual HRESULT  get_InvertColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT  put_InvertColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT  get_IsFiltered(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT  put_IsFiltered(
            VARIANT_BOOL RHS) = 0;

    };
};
