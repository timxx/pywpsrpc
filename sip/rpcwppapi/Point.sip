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
    struct Point : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **RHS /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_DataLabel(
            DataLabel **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Explosion(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Explosion(
            long RHS) = 0;

        virtual HRESULT get_HasDataLabel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasDataLabel(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MarkerBackgroundColor(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MarkerBackgroundColor(
            long RHS) = 0;

        virtual HRESULT get_MarkerBackgroundColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT put_MarkerBackgroundColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT get_MarkerForegroundColor(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MarkerForegroundColor(
            long RHS) = 0;

        virtual HRESULT get_MarkerForegroundColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT put_MarkerForegroundColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT get_MarkerSize(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MarkerSize(
            long RHS) = 0;

        virtual HRESULT get_MarkerStyle(
            XlMarkerStyle *RHS /Out/) = 0;

        virtual HRESULT put_MarkerStyle(
            XlMarkerStyle RHS) = 0;

        virtual HRESULT Paste(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_PictureType(
            XlChartPictureType *RHS /Out/) = 0;

        virtual HRESULT put_PictureType(
            XlChartPictureType RHS) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ApplyPictToSides(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ApplyPictToSides(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ApplyPictToFront(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ApplyPictToFront(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ApplyPictToEnd(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ApplyPictToEnd(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SecondaryPlot(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SecondaryPlot(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **RHS /Out/) = 0;

        virtual HRESULT get_Has3DEffect(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Has3DEffect(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_PictureUnit2(
            double *RHS /Out/) = 0;

        virtual HRESULT put_PictureUnit2(
            double RHS) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT _ApplyDataLabels(
            XlDataLabelsType Type,
            VARIANT LegendKey,
            VARIANT AutoText,
            VARIANT HasLeaderLines,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ApplyDataLabels(
            XlDataLabelsType Type,
            VARIANT LegendKey,
            VARIANT AutoText,
            VARIANT HasLeaderLines,
            VARIANT ShowSeriesName,
            VARIANT ShowCategoryName,
            VARIANT ShowValue,
            VARIANT ShowPercentage,
            VARIANT ShowBubbleSize,
            VARIANT Separator,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_PictureUnit(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PictureUnit(
            long RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Height(
            double *pval /Out/) = 0;

        virtual HRESULT get_Width(
            double *pval /Out/) = 0;

        virtual HRESULT get_Left(
            double *pval /Out/) = 0;

        virtual HRESULT get_Top(
            double *pval /Out/) = 0;

        virtual HRESULT PieSliceLocation(
            XlPieSliceLocation loc,
            XlPieSliceIndex Index,
            double *pval /Out/) = 0;

    };
};
