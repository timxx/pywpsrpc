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
    struct ChartGroup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_AxisGroup(
            XlAxisGroup *prop /Out/) = 0;

        virtual HRESULT put_AxisGroup(
            XlAxisGroup prop) = 0;

        virtual HRESULT get_DoughnutHoleSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_DoughnutHoleSize(
            long prop) = 0;

        virtual HRESULT get_DownBars(
            DownBars **prop /Out/) = 0;

        virtual HRESULT get_DropLines(
            DropLines **prop /Out/) = 0;

        virtual HRESULT get_FirstSliceAngle(
            long *prop /Out/) = 0;

        virtual HRESULT put_FirstSliceAngle(
            long prop) = 0;

        virtual HRESULT get_GapWidth(
            long *prop /Out/) = 0;

        virtual HRESULT put_GapWidth(
            long prop) = 0;

        virtual HRESULT get_HasDropLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasDropLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasHiLoLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasHiLoLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasRadarAxisLabels(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasRadarAxisLabels(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasSeriesLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasSeriesLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasUpDownBars(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasUpDownBars(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HiLoLines(
            HiLoLines **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Overlap(
            long *prop /Out/) = 0;

        virtual HRESULT put_Overlap(
            long prop) = 0;

        virtual HRESULT get_RadarAxisLabels(
            TickLabels **prop /Out/) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_SeriesLines(
            SeriesLines **prop /Out/) = 0;

        virtual HRESULT get_SubType(
            long *prop /Out/) = 0;

        virtual HRESULT put_SubType(
            long prop) = 0;

        virtual HRESULT get_Type(
            long *prop /Out/) = 0;

        virtual HRESULT put_Type(
            long prop) = 0;

        virtual HRESULT get_UpBars(
            UpBars **prop /Out/) = 0;

        virtual HRESULT get_VaryByCategories(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_VaryByCategories(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SizeRepresents(
            XlSizeRepresents *prop /Out/) = 0;

        virtual HRESULT put_SizeRepresents(
            XlSizeRepresents prop) = 0;

        virtual HRESULT get_BubbleScale(
            long *prop /Out/) = 0;

        virtual HRESULT put_BubbleScale(
            long prop) = 0;

        virtual HRESULT get_ShowNegativeBubbles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowNegativeBubbles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SplitType(
            XlChartSplitType *prop /Out/) = 0;

        virtual HRESULT put_SplitType(
            XlChartSplitType prop) = 0;

        virtual HRESULT get_SplitValue(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_SplitValue(
            VARIANT prop) = 0;

        virtual HRESULT get_SecondPlotSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_SecondPlotSize(
            long prop) = 0;

        virtual HRESULT get_Has3DShading(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Has3DShading(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT CategoryCollection(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT FullCategoryCollection(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

    };
};
