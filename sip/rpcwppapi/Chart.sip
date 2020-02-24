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
    struct Chart : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT ApplyDataLabels(
            XlDataLabelsType Type = wppapi::xlDataLabelsShowNone,
            VARIANT LegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            VARIANT ShowSeriesName = argMissing2(),
            VARIANT ShowCategoryName = argMissing2(),
            VARIANT ShowValue = argMissing2(),
            VARIANT ShowPercentage = argMissing2(),
            VARIANT ShowBubbleSize = argMissing2(),
            VARIANT Separator = argMissing2()) = 0;

        virtual HRESULT get_ChartType(
            XlChartType *RHS /Out/) = 0;

        virtual HRESULT put_ChartType(
            XlChartType RHS) = 0;

        virtual HRESULT get_HasDataTable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasDataTable(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ApplyCustomType(
            XlChartType ChartType,
            VARIANT TypeName = argMissing2()) = 0;

        virtual HRESULT GetChartElement(
            long X,
            long Y,
            long *ElementID /In,Out/,
            long *Arg1 /In,Out/,
            long *Arg2 /In,Out/) = 0;

        virtual HRESULT SetSourceData(
            BSTR Source,
            VARIANT PlotBy = argMissing2()) = 0;

        virtual HRESULT get_PlotBy(
            XlRowCol *PlotBy /Out/) = 0;

        virtual HRESULT put_PlotBy(
            XlRowCol PlotBy) = 0;

        virtual HRESULT AutoFormat(
            long Gallery,
            VARIANT Format = argMissing2()) = 0;

        virtual HRESULT SetBackgroundPicture(
            BSTR FileName) = 0;

        virtual HRESULT get_DataTable(
            DataTable **RHS /Out/) = 0;

        virtual HRESULT Paste(
            VARIANT Type = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *RHS /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape RHS) = 0;

        virtual HRESULT SetDefaultChart(
            VARIANT Name) = 0;

        virtual HRESULT ApplyChartTemplate(
            BSTR FileName) = 0;

        virtual HRESULT SaveChartTemplate(
            BSTR FileName) = 0;

        virtual HRESULT get_SideWall(
            Walls **RHS /Out/) = 0;

        virtual HRESULT get_BackWall(
            Walls **RHS /Out/) = 0;

        virtual HRESULT get_ChartStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ChartStyle(
            VARIANT RHS) = 0;

        virtual HRESULT ClearToMatchStyle() = 0;

        virtual HRESULT get_HasPivotFields(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasPivotFields(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT put_ShowDataLabelsOverMaximum(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowDataLabelsOverMaximum(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT ApplyLayout(
            long Layout,
            VARIANT ChartType = argMissing2()) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT get_ChartData(
            ChartData **ppchartdata /Out/) = 0;

        virtual HRESULT get_Shapes(
            Shapes **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Area3DGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT AreaGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Bar3DGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT BarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Column3DGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT ColumnGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Line3DGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT LineGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Pie3DGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT PieGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT DoughnutGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT RadarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_SurfaceGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT XYGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT _ApplyDataLabels(
            XlDataLabelsType Type = wppapi::xlDataLabelsShowNone,
            VARIANT LegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT put_AutoScaling(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoScaling(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Axes(
            VARIANT Type = argMissing2(),
            XlAxisGroup AxisGroup = wppapi::xlPrimary,
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_ChartArea(
            long lcid,
            ChartArea **ChartArea /Out/) = 0;

        virtual HRESULT ChartGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_ChartTitle(
            long lcid,
            ChartTitle **RHS /Out/) = 0;

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

        virtual HRESULT Copy(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance = wppapi::xlPrinter,
            XlCopyPictureFormat Format = wppapi::xlPicture,
            XlPictureAppearance Size = wppapi::xlPrinter,
            long LocaleID = 0) = 0;

        virtual HRESULT get_Corners(
            long lcid,
            Corners **RHS /Out/) = 0;

        virtual HRESULT Delete(
            long lcid) = 0;

        virtual HRESULT get_DepthPercent(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_DepthPercent(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_DisplayBlanksAs(
            long lcid,
            XlDisplayBlanksAs *RHS /Out/) = 0;

        virtual HRESULT put_DisplayBlanksAs(
            long lcid,
            XlDisplayBlanksAs RHS) = 0;

        virtual HRESULT get_Elevation(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_Elevation(
            long lcid,
            long RHS) = 0;

        virtual HRESULT Export(
            BSTR FileName,
            VARIANT FilterName = argMissing2(),
            VARIANT Interactive = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Floor(
            long lcid,
            Floor **RHS /Out/) = 0;

        virtual HRESULT get_GapDepth(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_GapDepth(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_HasAxis(
            VARIANT Index1 = argMissing2(),
            VARIANT Index2 = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_HasAxis(
            VARIANT Index1 = argMissing2(),
            VARIANT Index2 = argMissing2(),
            long lcid = 0,
            VARIANT RHS = argMissing2()) = 0;

        virtual HRESULT get_HasLegend(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasLegend(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasTitle(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasTitle(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HeightPercent(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_HeightPercent(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_Legend(
            long lcid,
            Legend **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Perspective(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_Perspective(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_PlotArea(
            long lcid,
            PlotArea **RHS /Out/) = 0;

        virtual HRESULT get_PlotVisibleOnly(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PlotVisibleOnly(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RightAngleAxes(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RightAngleAxes(
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get_Rotation(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Rotation(
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT SetElement(
            MsoChartElementType Element) = 0;

        virtual HRESULT get_Subtype(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_Subtype(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_Type(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_Walls(
            long lcid,
            Walls **RHS /Out/) = 0;

        virtual HRESULT get_Format(
            ChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_ShowReportFilterFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowReportFilterFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT get_ShowLegendFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowLegendFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT get_ShowAxisFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowAxisFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT get_ShowValueFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowValueFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT get_ShowAllFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowAllFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *AlternativeText /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR AlternativeText) = 0;

        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

        virtual HRESULT FullSeriesCollection(
            VARIANT Index = argMissing2(),
            IDispatch **ppFullSeriesCollection /Out/ = 0) = 0;

        virtual HRESULT get_CategoryLabelLevel(
            XlCategoryLabelLevel *plevel /Out/) = 0;

        virtual HRESULT put_CategoryLabelLevel(
            XlCategoryLabelLevel plevel) = 0;

        virtual HRESULT get_SeriesNameLevel(
            XlSeriesNameLevel *plevel /Out/) = 0;

        virtual HRESULT put_SeriesNameLevel(
            XlSeriesNameLevel plevel) = 0;

        virtual HRESULT get_HasHiddenContent(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT DeleteHiddenContent() = 0;

        virtual HRESULT get_ChartColor(
            VARIANT *pColor /Out/) = 0;

        virtual HRESULT put_ChartColor(
            VARIANT pColor) = 0;

        virtual HRESULT ClearToMatchColorStyle() = 0;

    };
};
