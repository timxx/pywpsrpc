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
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

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
            long lcid) = 0;

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
            VARIANT TypeName) = 0;

        virtual HRESULT GetChartElement(
            long x,
            long y,
            long *ElementID /Out/,
            long *Arg1 /Out/,
            long *Arg2 /Out/) = 0;

        virtual HRESULT SetSourceData(
            BSTR Source,
            VARIANT PlotBy) = 0;

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
            VARIANT Type,
            XlAxisGroup AxisGroup,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_HasAxis(
            VARIANT Index1,
            VARIANT Index2,
            long lcid,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_HasAxis(
            VARIANT Index1,
            VARIANT Index2,
            long lcid,
            VARIANT prop) = 0;

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
            VARIANT Format) = 0;

        virtual HRESULT get_AutoScaling(
            long lcid,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoScaling(
            long lcid,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT SetBackgroundPicture(
            BSTR FileName) = 0;

        virtual HRESULT ChartWizard(
            VARIANT Source,
            VARIANT Gallery,
            VARIANT Format,
            VARIANT PlotBy,
            VARIANT CategoryLabels,
            VARIANT SeriesLabels,
            VARIANT HasLegend,
            VARIANT Title,
            VARIANT CategoryTitle,
            VARIANT ValueTitle,
            VARIANT ExtraTitle,
            long lcid) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance,
            XlCopyPictureFormat Format,
            XlPictureAppearance Size,
            long lcid) = 0;

        virtual HRESULT get_DataTable(
            DataTable **prop /Out/) = 0;

        virtual HRESULT Paste(
            VARIANT Type,
            long lcid) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *prop /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape prop) = 0;

        virtual HRESULT Export(
            BSTR FileName,
            VARIANT FilterName,
            VARIANT Interactive,
            VARIANT_BOOL *prop /Out/) = 0;

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
            VARIANT ChartType) = 0;

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
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Bar3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT BarGroups(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Column3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT ColumnGroups(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Line3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT LineGroups(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Pie3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT PieGroups(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT DoughnutGroups(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT RadarGroups(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_SurfaceGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT XYGroups(
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Delete(
            long lcid,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT Before,
            VARIANT After,
            long lcid) = 0;

        virtual HRESULT Select(
            VARIANT Replace,
            long lcid,
            VARIANT *prop /Out/) = 0;

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
            VARIANT Index,
            long lcid,
            IDispatch **prop /Out/) = 0;

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

    struct ChartTitle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Caption(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR prop) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start,
            VARIANT Length,
            ChartCharacters **prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT prop) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT put_Left(
            double prop) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT put_Top(
            double prop) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT prop) = 0;

        virtual HRESULT get_ReadingOrder(
            long *prop /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long prop) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_IncludeInLayout(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeInLayout(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT get_Formula(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR prop) = 0;

        virtual HRESULT get_FormulaR1C1(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FormulaR1C1(
            BSTR prop) = 0;

        virtual HRESULT get_FormulaLocal(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FormulaLocal(
            BSTR prop) = 0;

        virtual HRESULT get_FormulaR1C1Local(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FormulaR1C1Local(
            BSTR prop) = 0;
    };

    struct Corners : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct ChartArea : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT Clear(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT ClearContents(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT put_Height(
            double prop) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT put_Left(
            double prop) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT put_Top(
            double prop) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT put_Width(
            double prop) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct DataTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasBorderHorizontal(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasBorderHorizontal(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasBorderVertical(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasBorderVertical(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasBorderOutline(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasBorderOutline(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct Walls : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_PictureType(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_PictureType(
            VARIANT prop) = 0;

        virtual HRESULT Paste() = 0;

        virtual HRESULT get_PictureUnit(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_PictureUnit(
            VARIANT prop) = 0;

        virtual HRESULT get_Thickness(
            long *prop /Out/) = 0;

        virtual HRESULT put_Thickness(
            long prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct Floor : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_PictureType(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_PictureType(
            VARIANT prop) = 0;

        virtual HRESULT Paste() = 0;

        virtual HRESULT get_Thickness(
            long *prop /Out/) = 0;

        virtual HRESULT put_Thickness(
            long prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct PlotArea : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT put_Height(
            double prop) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT put_Left(
            double prop) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT put_Top(
            double prop) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT put_Width(
            double prop) = 0;

        virtual HRESULT get_InsideLeft(
            double *prop /Out/) = 0;

        virtual HRESULT put_InsideLeft(
            double prop) = 0;

        virtual HRESULT get_InsideTop(
            double *prop /Out/) = 0;

        virtual HRESULT put_InsideTop(
            double prop) = 0;

        virtual HRESULT get_InsideWidth(
            double *prop /Out/) = 0;

        virtual HRESULT put_InsideWidth(
            double prop) = 0;

        virtual HRESULT get_InsideHeight(
            double *prop /Out/) = 0;

        virtual HRESULT put_InsideHeight(
            double prop) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

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

    struct Legend : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT LegendEntries(
            VARIANT Index,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Position(
            XlLegendPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            XlLegendPosition prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Clear(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT put_Height(
            double prop) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT put_Left(
            double prop) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT put_Top(
            double prop) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT put_Width(
            double prop) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_IncludeInLayout(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeInLayout(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct UpBars : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct DownBars : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct DropLines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct HiLoLines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct SeriesLines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct TickLabels : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR prop) = 0;

        virtual HRESULT get_NumberFormatLinked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NumberFormatLinked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT prop) = 0;

        virtual HRESULT get_Orientation(
            XlTickLabelOrientation *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlTickLabelOrientation prop) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            long *prop /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long prop) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Depth(
            long *prop /Out/) = 0;

        virtual HRESULT get_Offset(
            long *prop /Out/) = 0;

        virtual HRESULT put_Offset(
            long prop) = 0;

        virtual HRESULT get_Alignment(
            long *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            long prop) = 0;

        virtual HRESULT get_MultiLevel(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MultiLevel(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct ChartData : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Workbook(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_IsLinked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT BreakLink() = 0;

        virtual HRESULT ActivateChartDataWindow() = 0;
    };

    struct ChartFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Fill(
            FillFormat **prop /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **prop /Out/) = 0;

        virtual HRESULT get_Line(
            LineFormat **prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **prop /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **prop /Out/) = 0;

        virtual HRESULT get_SoftEdge(
            SoftEdgeFormat **prop /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            ksoapi::TextFrame2 **prop /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **prop /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            MsoAutoShapeType *prop /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            MsoAutoShapeType prop) = 0;
    };

    struct ChartBorder : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Color(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT prop) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT prop) = 0;

        virtual HRESULT get_LineStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_LineStyle(
            VARIANT prop) = 0;

        virtual HRESULT get_Weight(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Weight(
            VARIANT prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;
    };

    struct ChartFillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT OneColorGradient(
            MsoGradientStyle Style,
            long Variant,
            single Degree) = 0;

        virtual HRESULT TwoColorGradient(
            MsoGradientStyle Style,
            long Variant) = 0;

        virtual HRESULT PresetTextured(
            MsoPresetTexture PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT Patterned(
            MsoPatternType Pattern) = 0;

        virtual HRESULT UserPicture(
            VARIANT PictureFile,
            VARIANT PictureFormat,
            VARIANT PictureStackUnit,
            VARIANT PicturePlacement) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT PresetGradient(
            MsoGradientStyle Style,
            long Variant,
            MsoPresetGradientType PresetGradientType) = 0;

        virtual HRESULT get_BackColor(
            ChartColorFormat **prop /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ChartColorFormat **prop /Out/) = 0;

        virtual HRESULT get_GradientColorType(
            MsoGradientColorType *prop /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *prop /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            MsoGradientStyle *prop /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            long *prop /Out/) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *prop /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            MsoPresetGradientType *prop /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            MsoPresetTexture *prop /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_TextureType(
            MsoTextureType *prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoFillType *prop /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;
    };

    struct ChartColorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_SchemeColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_SchemeColor(
            long prop) = 0;

        virtual HRESULT get_RGB(
            long *prop /Out/) = 0;

        virtual HRESULT get__Default(
            long *prop /Out/) = 0;

        virtual HRESULT get_Type(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct Interior : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Color(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT prop) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT prop) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT prop) = 0;

        virtual HRESULT get_Pattern(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Pattern(
            VARIANT prop) = 0;

        virtual HRESULT get_PatternColor(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_PatternColor(
            VARIANT prop) = 0;

        virtual HRESULT get_PatternColorIndex(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_PatternColorIndex(
            VARIANT prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;
    };

    struct ChartCharacters : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR prop) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT Insert(
            BSTR String,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_PhoneticCharacters(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PhoneticCharacters(
            BSTR prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;
    };

    struct ChartFont : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Background(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Background(
            VARIANT prop) = 0;

        virtual HRESULT get_Bold(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Bold(
            VARIANT prop) = 0;

        virtual HRESULT get_Color(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT prop) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT prop) = 0;

        virtual HRESULT get_FontStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_FontStyle(
            VARIANT prop) = 0;

        virtual HRESULT get_Italic(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Italic(
            VARIANT prop) = 0;

        virtual HRESULT get_Name(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Name(
            VARIANT prop) = 0;

        virtual HRESULT get_OutlineFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_OutlineFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT prop) = 0;

        virtual HRESULT get_Size(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Size(
            VARIANT prop) = 0;

        virtual HRESULT get_StrikeThrough(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_StrikeThrough(
            VARIANT prop) = 0;

        virtual HRESULT get_Subscript(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Subscript(
            VARIANT prop) = 0;

        virtual HRESULT get_Superscript(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Superscript(
            VARIANT prop) = 0;

        virtual HRESULT get_Underline(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Underline(
            VARIANT prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;
    };
};