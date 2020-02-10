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
            VARIANT Password) = 0;

        virtual HRESULT Protect(
            VARIANT Password,
            VARIANT DrawingObjects,
            VARIANT Contents,
            VARIANT Scenarios,
            VARIANT UserInterfaceOnly) = 0;

        virtual HRESULT get_ChartGroups(
            VARIANT *pvarIndex ,
            VARIANT varIgallery,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT _ApplyDataLabels(
            XlDataLabelsType Type,
            VARIANT IMsoLegendKey,
            VARIANT AutoText,
            VARIANT HasLeaderLines) = 0;

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
            XlDataLabelsType Type,
            VARIANT IMsoLegendKey,
            VARIANT AutoText,
            VARIANT HasLeaderLines,
            VARIANT ShowSeriesName,
            VARIANT ShowCategoryName,
            VARIANT ShowValue,
            VARIANT ShowPercentage,
            VARIANT ShowBubbleSize,
            VARIANT Separator) = 0;

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
            VARIANT TypeName) = 0;

        virtual HRESULT GetChartElement(
            long x,
            long y,
            long *ElementID /In,Out/,
            long *Arg1 /In,Out/,
            long *Arg2 /In,Out/) = 0;

        virtual HRESULT SetSourceData(
            BSTR Source,
            VARIANT PlotBy) = 0;

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
            VARIANT Type ,
            XlAxisGroup AxisGroup,
            IDispatch **ppAxes /Out/ = 0) = 0;

        virtual HRESULT put_HasAxis(
            VARIANT axisType,
            VARIANT AxisGroup,
            VARIANT pval) = 0;

        virtual HRESULT get_HasAxis(
            VARIANT axisType,
            VARIANT AxisGroup,
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Walls(
            VARIANT_BOOL fBackWall,
            IMsoWalls **ppwalls /Out/) = 0;

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
            VARIANT varFormat) = 0;

        virtual HRESULT get_AutoScaling(
            VARIANT_BOOL *f /Out/) = 0;

        virtual HRESULT put_AutoScaling(
            VARIANT_BOOL f) = 0;

        virtual HRESULT SetBackgroundPicture(
            BSTR bstr) = 0;

        virtual HRESULT ChartWizard(
            VARIANT varSource,
            VARIANT varGallery,
            VARIANT varFormat,
            VARIANT varPlotBy,
            VARIANT varCategoryLabels,
            VARIANT varSeriesLabels,
            VARIANT varHasLegend,
            VARIANT varTitle,
            VARIANT varCategoryTitle,
            VARIANT varValueTitle,
            VARIANT varExtraTitle,
            long LocaleID) = 0;

        virtual HRESULT CopyPicture(
            int Appearance,
            int Format,
            int Size,
            long LocaleID) = 0;

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
            VARIANT varType,
            long LocaleID) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *pShape /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape pShape) = 0;

        virtual HRESULT Export(
            BSTR bstr,
            VARIANT varFilterName,
            VARIANT varInteractive,
            VARIANT_BOOL *f /Out/) = 0;

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
            VARIANT varChartType) = 0;

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
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Bar3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT BarGroups(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Column3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT ColumnGroups(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Line3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT LineGroups(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Pie3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT PieGroups(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT DoughnutGroups(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT RadarGroups(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_SurfaceGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT XYGroups(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT Replace,
            VARIANT *RHS /Out/) = 0;

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
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

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

    struct IMsoChartTitle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Caption(
            BSTR pbstr) = 0;

        virtual HRESULT get_Caption(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start,
            VARIANT Length,
            IMsoCharacters **RHS /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **ppfont /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT Val) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *Val /Out/) = 0;

        virtual HRESULT get_Left(
            double *pval /Out/) = 0;

        virtual HRESULT put_Left(
            double pval) = 0;

        virtual HRESULT put_Orientation(
            VARIANT Val) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *Val /Out/) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT put_Text(
            BSTR pbstr) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Top(
            double *pval /Out/) = 0;

        virtual HRESULT put_Top(
            double pval) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT Val) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *Val /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            int *pval /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            int pval) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT Val) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *Val /Out/) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppinterior /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_IncludeInLayout(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeInLayout(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *pval /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition pval) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppval /Out/) = 0;

        virtual HRESULT get_Height(
            double *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Width(
            double *pval /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR pbstr) = 0;

        virtual HRESULT get_Formula(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_FormulaR1C1(
            BSTR pbstr) = 0;

        virtual HRESULT get_FormulaR1C1(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_FormulaLocal(
            BSTR pbstr) = 0;

        virtual HRESULT get_FormulaLocal(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_FormulaR1C1Local(
            BSTR pbstr) = 0;

        virtual HRESULT get_FormulaR1C1Local(
            BSTR *pbstr /Out/) = 0;
    };

    struct IMsoCharacters : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **RHS /Out/) = 0;

        virtual HRESULT Insert(
            BSTR bstr,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR RHS) = 0;

        virtual HRESULT get_PhoneticCharacters(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PhoneticCharacters(
            BSTR RHS) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct ChartFont : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Background(
            VARIANT pval) = 0;

        virtual HRESULT get_Background(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Bold(
            VARIANT pval) = 0;

        virtual HRESULT get_Bold(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT pval) = 0;

        virtual HRESULT get_Color(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT pval) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_FontStyle(
            VARIANT pval) = 0;

        virtual HRESULT get_FontStyle(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Italic(
            VARIANT pval) = 0;

        virtual HRESULT get_Italic(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Name(
            VARIANT pval) = 0;

        virtual HRESULT get_Name(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_OutlineFont(
            VARIANT pval) = 0;

        virtual HRESULT get_OutlineFont(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT pval) = 0;

        virtual HRESULT get_Shadow(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Size(
            VARIANT pval) = 0;

        virtual HRESULT get_Size(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_StrikeThrough(
            VARIANT pval) = 0;

        virtual HRESULT get_StrikeThrough(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Subscript(
            VARIANT pval) = 0;

        virtual HRESULT get_Subscript(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Superscript(
            VARIANT pval) = 0;

        virtual HRESULT get_Superscript(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Underline(
            VARIANT pval) = 0;

        virtual HRESULT get_Underline(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;
    };

    struct IMsoWalls : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *bstr /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_PictureType(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT put_PictureType(
            VARIANT pvar) = 0;

        virtual HRESULT Paste() = 0;

        virtual HRESULT get_PictureUnit(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT put_PictureUnit(
            VARIANT pvar) = 0;

        virtual HRESULT get_Thickness(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Thickness(
            long RHS) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoInterior : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Color(
            VARIANT pval) = 0;

        virtual HRESULT get_Color(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT pval) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT pval) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Pattern(
            VARIANT pval) = 0;

        virtual HRESULT get_Pattern(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_PatternColor(
            VARIANT pval) = 0;

        virtual HRESULT get_PatternColor(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_PatternColorIndex(
            VARIANT pval) = 0;

        virtual HRESULT get_PatternColorIndex(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;
    };

    struct IMsoFloor : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *bstr /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_PictureType(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT put_PictureType(
            VARIANT pvar) = 0;

        virtual HRESULT Paste() = 0;

        virtual HRESULT get_Thickness(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Thickness(
            long RHS) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct ChartFillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT OneColorGradient(
            int Style,
            int Variant,
            single Degree) = 0;

        virtual HRESULT TwoColorGradient(
            int Style,
            int Variant) = 0;

        virtual HRESULT PresetTextured(
            int PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT Patterned(
            int Pattern) = 0;

        virtual HRESULT UserPicture(
            VARIANT PictureFile,
            VARIANT PictureFormat,
            VARIANT PictureStackUnit,
            VARIANT PicturePlacement) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT PresetGradient(
            int Style,
            int Variant,
            int PresetGradientType) = 0;

        virtual HRESULT get_BackColor(
            ChartColorFormat **pval /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ChartColorFormat **pval /Out/) = 0;

        virtual HRESULT get_GradientColorType(
            int *pval /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *pval /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            int *pval /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            int *pval /Out/) = 0;

        virtual HRESULT get_Pattern(
            int *pval /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            int *pval /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            int *pval /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *pval /Out/) = 0;

        virtual HRESULT get_TextureType(
            int *pval /Out/) = 0;

        virtual HRESULT get_Type(
            int *pval /Out/) = 0;

        virtual HRESULT put_Visible(
            int pval) = 0;

        virtual HRESULT get_Visible(
            int *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;
    };

    struct ChartColorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_SchemeColor(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SchemeColor(
            long RHS) = 0;

        virtual HRESULT get_RGB(
            long *RHS /Out/) = 0;

        virtual HRESULT put_RGB(
            long RHS) = 0;

        virtual HRESULT get__Default(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoPlotArea : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *bstr /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Height(
            double *pd /Out/) = 0;

        virtual HRESULT put_Height(
            double pd) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_Left(
            double *pd /Out/) = 0;

        virtual HRESULT put_Left(
            double pd) = 0;

        virtual HRESULT get_Top(
            double *pd /Out/) = 0;

        virtual HRESULT put_Top(
            double pd) = 0;

        virtual HRESULT get_Width(
            double *pd /Out/) = 0;

        virtual HRESULT put_Width(
            double pd) = 0;

        virtual HRESULT get_InsideLeft(
            double *pd /Out/) = 0;

        virtual HRESULT put_InsideLeft(
            double pd) = 0;

        virtual HRESULT get_InsideTop(
            double *pd /Out/) = 0;

        virtual HRESULT put_InsideTop(
            double pd) = 0;

        virtual HRESULT get_InsideWidth(
            double *pd /Out/) = 0;

        virtual HRESULT put_InsideWidth(
            double pd) = 0;

        virtual HRESULT get_InsideHeight(
            double *pd /Out/) = 0;

        virtual HRESULT put_InsideHeight(
            double pd) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *pval /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition pval) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoBorder : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Color(
            VARIANT pval) = 0;

        virtual HRESULT get_Color(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT pval) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_LineStyle(
            VARIANT pval) = 0;

        virtual HRESULT get_LineStyle(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Weight(
            VARIANT pval) = 0;

        virtual HRESULT get_Weight(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;
    };

    struct IMsoCorners : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoLegend : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **RHS /Out/) = 0;

        virtual HRESULT LegendEntries(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Position(
            XlLegendPosition *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            XlLegendPosition RHS) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Clear(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **RHS /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **RHS /Out/) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_IncludeInLayout(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeInLayout(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoChartArea : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *bstr /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT Clear(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT ClearContents(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **ppfont /Out/) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *pf /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL pf) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Height(
            double *pd /Out/) = 0;

        virtual HRESULT put_Height(
            double pd) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_Left(
            double *pd /Out/) = 0;

        virtual HRESULT put_Left(
            double pd) = 0;

        virtual HRESULT get_Top(
            double *pd /Out/) = 0;

        virtual HRESULT put_Top(
            double pd) = 0;

        virtual HRESULT get_Width(
            double *pd /Out/) = 0;

        virtual HRESULT put_Width(
            double pd) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT pvar) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_RoundedCorners(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_RoundedCorners(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoDataTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT put_HasBorderHorizontal(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_HasBorderHorizontal(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT put_HasBorderVertical(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_HasBorderVertical(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT put_HasBorderOutline(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_HasBorderOutline(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppline /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **pfont /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoChartData : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Workbook(
            IDispatch **ppdispWorkbook /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_IsLinked(
            VARIANT_BOOL *pfIsLinked /Out/) = 0;

        virtual HRESULT BreakLink() = 0;

        virtual HRESULT ActivateChartDataWindow() = 0;
    };

    struct IMsoChartFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Fill(
            FillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **ppGlow /Out/) = 0;

        virtual HRESULT get_Line(
            LineFormat **ppline /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **ppPictureFormat /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **ppShadow /Out/) = 0;

        virtual HRESULT get_SoftEdge(
            SoftEdgeFormat **ppSoftEdge /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **ppTextFrame /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **ppThreeD /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **ppAdjustments /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            MsoAutoShapeType *AutoShapeType /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            MsoAutoShapeType AutoShapeType) = 0;
    };

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

    struct IMsoDownBars : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *bstr /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoDropLines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoHiLoLines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT get_Border(
            IMsoBorder **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct IMsoSeriesLines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *bstr /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };

    struct  IMsoUpBars : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *bstr /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;
    };
};