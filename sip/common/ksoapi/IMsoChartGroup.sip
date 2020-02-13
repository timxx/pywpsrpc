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
    struct IMsoChartGroup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_AxisGroup(
            int piGroup) = 0;

        virtual HRESULT get_AxisGroup(
            int *piGroup /Out/) = 0;

        virtual HRESULT put_DoughnutHoleSize(
            int pDoughnutHoleSize) = 0;

        virtual HRESULT get_DoughnutHoleSize(
            int *pDoughnutHoleSize /Out/) = 0;

        virtual HRESULT get_DownBars(
            IMsoDownBars **ppdownbars /Out/) = 0;

        virtual HRESULT get_DropLines(
            IMsoDropLines **ppdroplines /Out/) = 0;

        virtual HRESULT put_FirstSliceAngle(
            int pFirstSliceAngle) = 0;

        virtual HRESULT get_FirstSliceAngle(
            int *pFirstSliceAngle /Out/) = 0;

        virtual HRESULT put_GapWidth(
            int pGapWidth) = 0;

        virtual HRESULT get_GapWidth(
            int *pGapWidth /Out/) = 0;

        virtual HRESULT put_HasDropLines(
            VARIANT_BOOL pfHasDropLines) = 0;

        virtual HRESULT get_HasDropLines(
            VARIANT_BOOL *pfHasDropLines /Out/) = 0;

        virtual HRESULT put_HasHiLoLines(
            VARIANT_BOOL pfHasHiLoLines) = 0;

        virtual HRESULT get_HasHiLoLines(
            VARIANT_BOOL *pfHasHiLoLines /Out/) = 0;

        virtual HRESULT put_HasRadarAxisLabels(
            VARIANT_BOOL pfHasRadarAxisLabels) = 0;

        virtual HRESULT get_HasRadarAxisLabels(
            VARIANT_BOOL *pfHasRadarAxisLabels /Out/) = 0;

        virtual HRESULT put_HasSeriesLines(
            VARIANT_BOOL pfHasSeriesLines) = 0;

        virtual HRESULT get_HasSeriesLines(
            VARIANT_BOOL *pfHasSeriesLines /Out/) = 0;

        virtual HRESULT put_HasUpDownBars(
            VARIANT_BOOL pfHasUpDownBars) = 0;

        virtual HRESULT get_HasUpDownBars(
            VARIANT_BOOL *pfHasUpDownBars /Out/) = 0;

        virtual HRESULT get_HiLoLines(
            IMsoHiLoLines **ppHiLoLines /Out/) = 0;

        virtual HRESULT get_Index(
            int *pIndex /Out/) = 0;

        virtual HRESULT put_Overlap(
            int pOverlap) = 0;

        virtual HRESULT get_Overlap(
            int *pOverlap /Out/) = 0;

        virtual HRESULT get_RadarAxisLabels(
            IDispatch **ppRadarAxisLabels /Out/) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index,
            IDispatch **ppSeriesCollection /Out/) = 0;

        virtual HRESULT get_SeriesLines(
            IMsoSeriesLines **ppSeriesLines /Out/) = 0;

        virtual HRESULT put_SubType(
            int pSubType) = 0;

        virtual HRESULT get_SubType(
            int *pSubType /Out/) = 0;

        virtual HRESULT put_Type(
            int ptype) = 0;

        virtual HRESULT get_Type(
            int *ptype /Out/) = 0;

        virtual HRESULT get_UpBars(
            IMsoUpBars **ppUpBars /Out/) = 0;

        virtual HRESULT put_VaryByCategories(
            VARIANT_BOOL pfVaryByCategories) = 0;

        virtual HRESULT get_VaryByCategories(
            VARIANT_BOOL *pfVaryByCategories /Out/) = 0;

        virtual HRESULT get_SizeRepresents(
            XlSizeRepresents *pXlSizeRepresents /Out/) = 0;

        virtual HRESULT put_SizeRepresents(
            XlSizeRepresents pXlSizeRepresents) = 0;

        virtual HRESULT put_BubbleScale(
            int pbubblescale) = 0;

        virtual HRESULT get_BubbleScale(
            int *pbubblescale /Out/) = 0;

        virtual HRESULT put_ShowNegativeBubbles(
            VARIANT_BOOL pfShowNegativeBubbles) = 0;

        virtual HRESULT get_ShowNegativeBubbles(
            VARIANT_BOOL *pfShowNegativeBubbles /Out/) = 0;

        virtual HRESULT put_SplitType(
            XlChartSplitType pChartSplitType) = 0;

        virtual HRESULT get_SplitType(
            XlChartSplitType *pChartSplitType /Out/) = 0;

        virtual HRESULT get_SplitValue(
            VARIANT *pSplitValue /Out/) = 0;

        virtual HRESULT put_SplitValue(
            VARIANT pSplitValue) = 0;

        virtual HRESULT get_SecondPlotSize(
            int *pSecondPlotSize /Out/) = 0;

        virtual HRESULT put_SecondPlotSize(
            int pSecondPlotSize) = 0;

        virtual HRESULT get_Has3DShading(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Has3DShading(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT CategoryCollection(
            VARIANT Index,
            IDispatch **ppcatcollection /Out/) = 0;

        virtual HRESULT FullCategoryCollection(
            VARIANT Index,
            IDispatch **ppcatcollection /Out/) = 0;

    };
};
