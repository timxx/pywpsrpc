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
    struct ChartGroup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_DownBars(
            DownBars **ppdownbars /Out/) = 0;

        virtual HRESULT get_DropLines(
            DropLines **ppdroplines /Out/) = 0;

        virtual HRESULT put_HasDropLines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasDropLines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasHiLoLines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasHiLoLines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasRadarAxisLabels(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasRadarAxisLabels(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasSeriesLines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasSeriesLines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasUpDownBars(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasUpDownBars(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_HiLoLines(
            HiLoLines **ppHiLoLines /Out/) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            IDispatch **ppSeriesCollection /Out/ = 0) = 0;

        virtual HRESULT get_SeriesLines(
            SeriesLines **ppSeriesLines /Out/) = 0;

        virtual HRESULT get_UpBars(
            UpBars **ppUpBars /Out/) = 0;

        virtual HRESULT put_VaryByCategories(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_VaryByCategories(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SizeRepresents(
            XlSizeRepresents *RHS /Out/) = 0;

        virtual HRESULT put_SizeRepresents(
            XlSizeRepresents RHS) = 0;

        virtual HRESULT put_ShowNegativeBubbles(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowNegativeBubbles(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SplitType(
            XlChartSplitType RHS) = 0;

        virtual HRESULT get_SplitType(
            XlChartSplitType *RHS /Out/) = 0;

        virtual HRESULT get_SplitValue(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_SplitValue(
            VARIANT RHS) = 0;

        virtual HRESULT get_Has3DShading(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Has3DShading(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_AxisGroup(
            XlAxisGroup *RHS /Out/) = 0;

        virtual HRESULT put_AxisGroup(
            XlAxisGroup RHS) = 0;

        virtual HRESULT get_BubbleScale(
            long *RHS /Out/) = 0;

        virtual HRESULT put_BubbleScale(
            long RHS) = 0;

        virtual HRESULT get_DoughnutHoleSize(
            long *RHS /Out/) = 0;

        virtual HRESULT put_DoughnutHoleSize(
            long RHS) = 0;

        virtual HRESULT get_FirstSliceAngle(
            long *RHS /Out/) = 0;

        virtual HRESULT put_FirstSliceAngle(
            long RHS) = 0;

        virtual HRESULT get_GapWidth(
            long *RHS /Out/) = 0;

        virtual HRESULT put_GapWidth(
            long RHS) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Overlap(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Overlap(
            long RHS) = 0;

        virtual HRESULT get_RadarAxisLabels(
            TickLabels **RHS /Out/) = 0;

        virtual HRESULT get_Subtype(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Subtype(
            long RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            long RHS) = 0;

        virtual HRESULT get_SecondPlotSize(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SecondPlotSize(
            long RHS) = 0;

        virtual HRESULT CategoryCollection(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT FullCategoryCollection(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

    };
};
