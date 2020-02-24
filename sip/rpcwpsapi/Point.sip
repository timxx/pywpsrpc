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
    struct Point : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_DataLabel(
            DataLabel **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Explosion(
            long *prop /Out/) = 0;

        virtual HRESULT put_Explosion(
            long prop) = 0;

        virtual HRESULT get_HasDataLabel(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasDataLabel(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

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

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

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

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SecondaryPlot(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SecondaryPlot(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

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

        virtual HRESULT get_Has3DEffect(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Has3DEffect(
            VARIANT_BOOL prop) = 0;

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

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT PieSliceLocation(
            XlPieSliceLocation loc,
            XlPieSliceIndex Index = wpsapi::xlOuterCounterClockwisePoint,
            double *prop /Out/ = 0) = 0;

    };
};
