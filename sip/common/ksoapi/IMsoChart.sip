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
    struct IMsoChart : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT put_HasTitle(
            VARIANT_BOOL fTitle) = 0;

        virtual HRESULT get_HasTitle(
            VARIANT_BOOL *fTitle /Out/) = 0;

        virtual HRESULT get_ChartTitle(
            IMsoChartTitle **pval /Out/) = 0;

        virtual HRESULT get_DepthPercent(
            int *pwDepthPercent /Out/) = 0;

        virtual HRESULT put_DepthPercent(
            int pwDepthPercent) = 0;

        virtual HRESULT get_Elevation(
            int *pwElevation /Out/) = 0;

        virtual HRESULT put_Elevation(
            int pwElevation) = 0;

        virtual HRESULT get_GapDepth(
            int *pwGapDepth /Out/) = 0;

        virtual HRESULT put_GapDepth(
            int pwGapDepth) = 0;

        virtual HRESULT get_HeightPercent(
            int *pwHeightPercent /Out/) = 0;

        virtual HRESULT put_HeightPercent(
            int pwHeightPercent) = 0;

        virtual HRESULT get_Perspective(
            int *pwPerspective /Out/) = 0;

        virtual HRESULT put_Perspective(
            int pwPerspective) = 0;

        virtual HRESULT get_RightAngleAxes(
            VARIANT *pvarRightAngleAxes /Out/) = 0;

        virtual HRESULT put_RightAngleAxes(
            VARIANT pvarRightAngleAxes) = 0;

        virtual HRESULT get_Rotation(
            VARIANT *pvarRotation /Out/) = 0;

        virtual HRESULT put_Rotation(
            VARIANT pvarRotation) = 0;

        virtual HRESULT put_DisplayBlanksAs(
            XlDisplayBlanksAs pres) = 0;

        virtual HRESULT get_DisplayBlanksAs(
            XlDisplayBlanksAs *pres /Out/) = 0;

        virtual HRESULT put_ProtectData(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectData(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT put_ProtectFormatting(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectFormatting(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT put_ProtectGoalSeek(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectGoalSeek(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT put_ProtectSelection(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectSelection(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT put_ProtectChartObjects(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectChartObjects(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT UnProtect(
            VARIANT Password = argMissing2()) = 0;

        virtual HRESULT Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2()) = 0;

        virtual HRESULT get_ChartGroups(
            VARIANT *pvarIndex = argMissing(),
            VARIANT varIgallery = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT _ApplyDataLabels(
            XlDataLabelsType Type = ksoapi::xlDataLabelsShowNone,
            VARIANT IMsoLegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2()) = 0;

        virtual HRESULT get_SubType(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SubType(
            long RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            long RHS) = 0;

        virtual HRESULT get_Corners(
            IMsoCorners **RHS /Out/) = 0;

        virtual HRESULT ApplyDataLabels(
            XlDataLabelsType Type = ksoapi::xlDataLabelsShowNone,
            VARIANT IMsoLegendKey = argMissing2(),
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
            long x,
            long y,
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

        virtual HRESULT get_HasLegend(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasLegend(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Legend(
            IMsoLegend **RHS /Out/) = 0;

        virtual HRESULT Axes(
            VARIANT Type = argMissing2(),
            XlAxisGroup AxisGroup = ksoapi::xlPrimary,
            IDispatch **ppAxes /Out/ = 0) = 0;

        virtual HRESULT put_HasAxis(
            VARIANT axisType = argMissing2(),
            VARIANT AxisGroup = argMissing2(),
            VARIANT pval = argMissing2()) = 0;

        virtual HRESULT get_HasAxis(
            VARIANT axisType = argMissing2(),
            VARIANT AxisGroup = argMissing2(),
            VARIANT *pval /Out/ = 0) = 0;

        virtual HRESULT get_Walls(
            VARIANT_BOOL fBackWall = VARIANT_FALSE,
            IMsoWalls **ppwalls /Out/ = 0) = 0;

        virtual HRESULT get_Floor(
            IMsoFloor **ppfloor /Out/) = 0;

        virtual HRESULT get_PlotArea(
            IMsoPlotArea **ppplotarea /Out/) = 0;

        virtual HRESULT get_PlotVisibleOnly(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PlotVisibleOnly(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ChartArea(
            IMsoChartArea **ppchartarea /Out/) = 0;

        virtual HRESULT AutoFormat(
            long rGallery,
            VARIANT varFormat = argMissing2()) = 0;

        virtual HRESULT get_AutoScaling(
            VARIANT_BOOL *f /Out/) = 0;

        virtual HRESULT put_AutoScaling(
            VARIANT_BOOL f) = 0;

        virtual HRESULT SetBackgroundPicture(
            BSTR bstr) = 0;

        virtual HRESULT ChartWizard(
            VARIANT varSource = argMissing2(),
            VARIANT varGallery = argMissing2(),
            VARIANT varFormat = argMissing2(),
            VARIANT varPlotBy = argMissing2(),
            VARIANT varCategoryLabels = argMissing2(),
            VARIANT varSeriesLabels = argMissing2(),
            VARIANT varHasLegend = argMissing2(),
            VARIANT varTitle = argMissing2(),
            VARIANT varCategoryTitle = argMissing2(),
            VARIANT varValueTitle = argMissing2(),
            VARIANT varExtraTitle = argMissing2(),
            long LocaleID = 0) = 0;

        virtual HRESULT CopyPicture(
            int Appearance = 0,
            int Format = 0,
            int Size = 0,
            long LocaleID = 0) = 0;

        virtual HRESULT get_DataTable(
            IMsoDataTable **RHS /Out/) = 0;

        virtual HRESULT Evaluate(
            VARIANT varName,
            long LocaleID,
            long *ObjType /Out/,
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT _Evaluate(
            VARIANT varName,
            long LocaleID,
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT Paste(
            VARIANT varType = argMissing2(),
            long LocaleID = 0) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *pShape /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape pShape) = 0;

        virtual HRESULT Export(
            BSTR bstr,
            VARIANT varFilterName = argMissing2(),
            VARIANT varInteractive = argMissing2(),
            VARIANT_BOOL *f /Out/ = 0) = 0;

        virtual HRESULT SetDefaultChart(
            VARIANT varName) = 0;

        virtual HRESULT ApplyChartTemplate(
            BSTR bstrFileName) = 0;

        virtual HRESULT SaveChartTemplate(
            BSTR bstrFileName) = 0;

        virtual HRESULT get_SideWall(
            IMsoWalls **RHS /Out/) = 0;

        virtual HRESULT get_BackWall(
            IMsoWalls **RHS /Out/) = 0;

        virtual HRESULT get_ChartStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ChartStyle(
            VARIANT RHS) = 0;

        virtual HRESULT ClearToMatchStyle() = 0;

        virtual HRESULT get_PivotLayout(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_HasPivotFields(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasPivotFields(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT RefreshPivotTable() = 0;

        virtual HRESULT put_ShowDataLabelsOverMaximum(
            VARIANT_BOOL pRHS) = 0;

        virtual HRESULT get_ShowDataLabelsOverMaximum(
            VARIANT_BOOL *pRHS /Out/) = 0;

        virtual HRESULT ApplyLayout(
            long Layout,
            VARIANT varChartType = argMissing2()) = 0;

        virtual HRESULT get_Selection(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT SetElement(
            MsoChartElementType RHS) = 0;

        virtual HRESULT get_ChartData(
            IMsoChartData **ppchartdata /Out/) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Shapes(
            Shapes **ppShapes /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Area3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT AreaGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Bar3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT BarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Column3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT ColumnGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Line3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT LineGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Pie3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

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
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT XYGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

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

        virtual HRESULT put_ProtectChartSheetFormatting(
            VARIANT_BOOL rhs) = 0;

        virtual HRESULT FullSeriesCollection(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT put_CategoryLabelLevel(
            XlCategoryLabelLevel plevel) = 0;

        virtual HRESULT get_CategoryLabelLevel(
            XlCategoryLabelLevel *plevel /Out/) = 0;

        virtual HRESULT put_SeriesNameLevel(
            XlSeriesNameLevel plevel) = 0;

        virtual HRESULT get_SeriesNameLevel(
            XlSeriesNameLevel *plevel /Out/) = 0;

        virtual HRESULT get_HasHiddenContent(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT DeleteHiddenContent() = 0;

        virtual HRESULT get_ChartColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ChartColor(
            VARIANT RHS) = 0;

        virtual HRESULT ClearToMatchColorStyle() = 0;

    };
};
