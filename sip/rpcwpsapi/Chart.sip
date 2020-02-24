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
    struct Chart : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_HasTitle(
            long lcid,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasTitle(
            long lcid,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ChartTitle(
            long lcid,
            ChartTitle **prop /Out/) = 0;

        virtual HRESULT get_DepthPercent(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_DepthPercent(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_Elevation(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_Elevation(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_GapDepth(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_GapDepth(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_HeightPercent(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_HeightPercent(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_Perspective(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_Perspective(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_RightAngleAxes(
            long lcid,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_RightAngleAxes(
            long lcid,
            VARIANT prop) = 0;

        virtual HRESULT get_Rotation(
            long lcid,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Rotation(
            long lcid,
            VARIANT prop) = 0;

        virtual HRESULT get_DisplayBlanksAs(
            long lcid,
            XlDisplayBlanksAs *prop /Out/) = 0;

        virtual HRESULT put_DisplayBlanksAs(
            long lcid,
            XlDisplayBlanksAs prop) = 0;

        virtual HRESULT get_ChartGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_SubType(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_SubType(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_Type(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_Type(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_Corners(
            long lcid,
            Corners **prop /Out/) = 0;

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
            long lcid = 0) = 0;

        virtual HRESULT get_ChartType(
            XlChartType *prop /Out/) = 0;

        virtual HRESULT put_ChartType(
            XlChartType prop) = 0;

        virtual HRESULT get_HasDataTable(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasDataTable(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ApplyCustomType(
            XlChartType ChartType,
            VARIANT TypeName = argMissing2()) = 0;

        virtual HRESULT GetChartElement(
            long x,
            long y,
            long *ElementID /Out/,
            long *Arg1 /Out/,
            long *Arg2 /Out/) = 0;

        virtual HRESULT SetSourceData(
            BSTR Source,
            VARIANT PlotBy = argMissing2()) = 0;

        virtual HRESULT get_PlotBy(
            XlRowCol *prop /Out/) = 0;

        virtual HRESULT put_PlotBy(
            XlRowCol prop) = 0;

        virtual HRESULT get_HasLegend(
            long lcid,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasLegend(
            long lcid,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Legend(
            long lcid,
            Legend **prop /Out/) = 0;

        virtual HRESULT Axes(
            VARIANT Type = argMissing2(),
            XlAxisGroup AxisGroup = wpsapi::xlPrimary,
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_HasAxis(
            VARIANT Index1 = argMissing2(),
            VARIANT Index2 = argMissing2(),
            long lcid = 0,
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT put_HasAxis(
            VARIANT Index1 = argMissing2(),
            VARIANT Index2 = argMissing2(),
            long lcid = 0,
            VARIANT prop = argMissing2()) = 0;

        virtual HRESULT get_Walls(
            long lcid,
            Walls **prop /Out/) = 0;

        virtual HRESULT get_Floor(
            long lcid,
            Floor **prop /Out/) = 0;

        virtual HRESULT get_PlotArea(
            long lcid,
            PlotArea **prop /Out/) = 0;

        virtual HRESULT get_PlotVisibleOnly(
            long lcid,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PlotVisibleOnly(
            long lcid,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ChartArea(
            long lcid,
            ChartArea **prop /Out/) = 0;

        virtual HRESULT AutoFormat(
            long Gallery,
            VARIANT Format = argMissing2()) = 0;

        virtual HRESULT get_AutoScaling(
            long lcid,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoScaling(
            long lcid,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT SetBackgroundPicture(
            BSTR FileName) = 0;

        virtual HRESULT ChartWizard(
            VARIANT Source = argMissing2(),
            VARIANT Gallery = argMissing2(),
            VARIANT Format = argMissing2(),
            VARIANT PlotBy = argMissing2(),
            VARIANT CategoryLabels = argMissing2(),
            VARIANT SeriesLabels = argMissing2(),
            VARIANT HasLegend = argMissing2(),
            VARIANT Title = argMissing2(),
            VARIANT CategoryTitle = argMissing2(),
            VARIANT ValueTitle = argMissing2(),
            VARIANT ExtraTitle = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance = wpsapi::xlPrinter,
            XlCopyPictureFormat Format = wpsapi::xlPicture,
            XlPictureAppearance Size = wpsapi::xlPrinter,
            long lcid = 0) = 0;

        virtual HRESULT get_DataTable(
            DataTable **prop /Out/) = 0;

        virtual HRESULT Paste(
            VARIANT Type = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *prop /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape prop) = 0;

        virtual HRESULT Export(
            BSTR FileName,
            VARIANT FilterName = argMissing2(),
            VARIANT Interactive = argMissing2(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT SetDefaultChart(
            VARIANT Name) = 0;

        virtual HRESULT ApplyChartTemplate(
            BSTR FileName) = 0;

        virtual HRESULT SaveChartTemplate(
            BSTR FileName) = 0;

        virtual HRESULT get_SideWall(
            Walls **prop /Out/) = 0;

        virtual HRESULT get_BackWall(
            Walls **prop /Out/) = 0;

        virtual HRESULT get_ChartStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ChartStyle(
            VARIANT prop) = 0;

        virtual HRESULT ClearToMatchStyle() = 0;

        virtual HRESULT get_PivotLayout(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_HasPivotFields(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasPivotFields(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowDataLabelsOverMaximum(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowDataLabelsOverMaximum(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ApplyLayout(
            long Layout,
            VARIANT ChartType = argMissing2()) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT SetElement(
            MsoChartElementType Element) = 0;

        virtual HRESULT get_ChartData(
            ChartData **prop /Out/) = 0;

        virtual HRESULT get_Shapes(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Area3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT AreaGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Bar3DGroup(
            long lcid = 0,
            ChartGroup **prop /Out/ = 0) = 0;

        virtual HRESULT BarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Column3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT ColumnGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Line3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT LineGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Pie3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT PieGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT DoughnutGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT RadarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_SurfaceGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT XYGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT Delete(
            long lcid,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            long lcid = 0,
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT get_ShowReportFilterFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowReportFilterFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowLegendFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowLegendFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowAxisFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowAxisFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowValueFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowValueFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowAllFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowAllFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT FullSeriesCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_CategoryLabelLevel(
            XlCategoryLabelLevel *prop /Out/) = 0;

        virtual HRESULT put_CategoryLabelLevel(
            XlCategoryLabelLevel prop) = 0;

        virtual HRESULT get_SeriesNameLevel(
            XlSeriesNameLevel *prop /Out/) = 0;

        virtual HRESULT put_SeriesNameLevel(
            XlSeriesNameLevel prop) = 0;

        virtual HRESULT get_HasHiddenContent(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT DeleteHiddenContent() = 0;

        virtual HRESULT get_ChartColor(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ChartColor(
            VARIANT prop) = 0;

        virtual HRESULT ClearToMatchColorStyle() = 0;

    };
};
