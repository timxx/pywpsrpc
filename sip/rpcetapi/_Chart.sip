/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct _Chart : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Activate(
            long lcid) = 0;

        virtual HRESULT Copy(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Delete(
            long lcid) = 0;

        virtual HRESULT get_CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get__CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__CodeName(
            BSTR RHS) = 0;

        virtual HRESULT get_Index(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT Move(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Next(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_OnDoubleClick(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnDoubleClick(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetActivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetActivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetDeactivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetDeactivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_PageSetup(
            PageSetup **RHS /Out/) = 0;

        virtual HRESULT get_Previous(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT __PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT _Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_ProtectContents(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ProtectDrawingObjects(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ProtectionMode(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual void _Dummy23() = 0;

        virtual HRESULT _SaveAs(
            BSTR Filename,
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Unprotect(
            VARIANT Password = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Visible(
            long lcid,
            XlSheetVisibility *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            long lcid,
            XlSheetVisibility RHS) = 0;

        virtual HRESULT get_Shapes(
            Shapes **RHS /Out/) = 0;

        virtual HRESULT _ApplyDataLabels(
            XlDataLabelsType Type = etapi::xlDataLabelsShowNone,
            VARIANT LegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Arcs(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Area3DGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT AreaGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT AutoFormat(
            long Gallery,
            VARIANT Format = argMissing2()) = 0;

        virtual HRESULT get_AutoScaling(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaling(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Axes(
            VARIANT Type = argMissing2(),
            XlAxisGroup AxisGroup = etapi::xlPrimary,
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT SetBackgroundPicture(
            BSTR Filename) = 0;

        virtual HRESULT get_Bar3DGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT BarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Buttons(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_ChartArea(
            long lcid,
            ChartArea **RHS /Out/) = 0;

        virtual HRESULT ChartGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT ChartObjects(
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

        virtual HRESULT CheckBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT CheckSpelling(
            VARIANT CustomDictionary = argMissing2(),
            VARIANT IgnoreUppercase = argMissing2(),
            VARIANT AlwaysSuggest = argMissing2(),
            VARIANT SpellLang = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Column3DGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT ColumnGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance = etapi::xlPrinter,
            XlCopyPictureFormat Format = etapi::xlPicture,
            XlPictureAppearance Size = etapi::xlPrinter,
            long lcid = 0) = 0;

        virtual HRESULT get_Corners(
            long lcid,
            Corners **RHS /Out/) = 0;

        virtual HRESULT CreatePublisher(
            VARIANT Edition = argMissing2(),
            XlPictureAppearance Appearance = etapi::xlPrinter,
            XlPictureAppearance Size = etapi::xlPrinter,
            VARIANT ContainsPICT = argMissing2(),
            VARIANT ContainsBIFF = argMissing2(),
            VARIANT ContainsRTF = argMissing2(),
            VARIANT ContainsVALU = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_DataTable(
            DataTable **RHS /Out/) = 0;

        virtual HRESULT get_DepthPercent(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_DepthPercent(
            long lcid,
            long RHS) = 0;

        virtual HRESULT Deselect(
            long lcid) = 0;

        virtual HRESULT get_DisplayBlanksAs(
            long lcid,
            XlDisplayBlanksAs *RHS /Out/) = 0;

        virtual HRESULT put_DisplayBlanksAs(
            long lcid,
            XlDisplayBlanksAs RHS) = 0;

        virtual HRESULT DoughnutGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Drawings(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT DrawingObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT DropDowns(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Elevation(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_Elevation(
            long lcid,
            long RHS) = 0;

        virtual HRESULT Evaluate(
            VARIANT Name,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _Evaluate(
            VARIANT Name,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Floor(
            long lcid,
            Floor **RHS /Out/) = 0;

        virtual HRESULT get_GapDepth(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_GapDepth(
            long lcid,
            long RHS) = 0;

        virtual HRESULT GroupBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT GroupObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

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

        virtual HRESULT get_HasDataTable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasDataTable(
            VARIANT_BOOL RHS) = 0;

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

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **RHS /Out/) = 0;

        virtual HRESULT Labels(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Legend(
            long lcid,
            Legend **RHS /Out/) = 0;

        virtual HRESULT get_Line3DGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT LineGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Lines(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT ListBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Location(
            XlChartLocation Where,
            VARIANT Name = argMissing2(),
            Chart **RHS /Out/ = 0) = 0;

        virtual HRESULT OLEObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT OptionButtons(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Ovals(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Paste(
            VARIANT Type = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Perspective(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_Perspective(
            long lcid,
            long RHS) = 0;

        virtual HRESULT Pictures(
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

        virtual HRESULT get_PlotArea(
            long lcid,
            PlotArea **RHS /Out/) = 0;

        virtual HRESULT get_PlotVisibleOnly(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PlotVisibleOnly(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT RadarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Rectangles(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

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

        virtual HRESULT ScrollBars(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_SizeWithWindow(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SizeWithWindow(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowWindow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowWindow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Spinners(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_SubType(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_SubType(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_SurfaceGroup(
            long lcid,
            ChartGroup **RHS /Out/) = 0;

        virtual HRESULT TextBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Type(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_ChartType(
            XlChartType *RHS /Out/) = 0;

        virtual HRESULT put_ChartType(
            XlChartType RHS) = 0;

        virtual HRESULT ApplyCustomType(
            XlChartType ChartType,
            VARIANT TypeName = argMissing2()) = 0;

        virtual HRESULT get_Walls(
            long lcid,
            Walls **RHS /Out/) = 0;

        virtual HRESULT get_WallsAndGridlines2D(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WallsAndGridlines2D(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT XYGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *RHS /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape RHS) = 0;

        virtual HRESULT get_PlotBy(
            XlRowCol *RHS /Out/) = 0;

        virtual HRESULT put_PlotBy(
            XlRowCol RHS) = 0;

        virtual HRESULT CopyChartBuild() = 0;

        virtual HRESULT get_ProtectFormatting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ProtectFormatting(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ProtectData(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ProtectData(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ProtectGoalSeek(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ProtectGoalSeek(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ProtectSelection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ProtectSelection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT GetChartElement(
            long x,
            long y,
            long *ElementID,
            long *Arg1,
            long *Arg2) = 0;

        virtual HRESULT SetSourceData(
            Range *Source,
            VARIANT PlotBy = argMissing2()) = 0;

        virtual HRESULT Export(
            BSTR Filename,
            VARIANT FilterName = argMissing2(),
            VARIANT Interactive = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT get_PivotLayout(
            PivotLayout **RHS /Out/) = 0;

        virtual HRESULT get_HasPivotFields(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasPivotFields(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Scripts(
            ksoapi::Scripts **RHS /Out/) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Tab(
            Tab **RHS /Out/) = 0;

        virtual HRESULT get_MailEnvelope(
            ksoapi::MsoEnvelope **RHS /Out/) = 0;

        virtual HRESULT ApplyDataLabels(
            XlDataLabelsType Type = etapi::xlDataLabelsShowNone,
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

        virtual HRESULT SaveAs(
            BSTR Filename,
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            VARIANT Local = argMissing2()) = 0;

        virtual HRESULT Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2()) = 0;

        virtual HRESULT ApplyLayout(
            long Layout,
            VARIANT ChartType = argMissing2()) = 0;

        virtual HRESULT SetElement(
            MsoChartElementType Element) = 0;

        virtual HRESULT get_ShowDataLabelsOverMaximum(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowDataLabelsOverMaximum(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SideWall(
            Walls **RHS /Out/) = 0;

        virtual HRESULT get_BackWall(
            Walls **RHS /Out/) = 0;

        virtual HRESULT PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT ApplyChartTemplate(
            BSTR Filename) = 0;

        virtual HRESULT SaveChartTemplate(
            BSTR Filename) = 0;

        virtual HRESULT SetDefaultChart(
            VARIANT Name) = 0;

        virtual HRESULT ExportAsFixedFormat(
            XlFixedFormatType Type,
            VARIANT Filename = argMissing2(),
            VARIANT Quality = argMissing2(),
            VARIANT IncludeDocProperties = argMissing2(),
            VARIANT IgnorePrintAreas = argMissing2(),
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT OpenAfterPublish = argMissing2(),
            VARIANT FixedFormatExtClassPtr = argMissing2()) = 0;

        virtual HRESULT get_ChartStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ChartStyle(
            VARIANT RHS) = 0;

        virtual HRESULT ClearToMatchStyle() = 0;

        virtual HRESULT get_PrintedCommentPages(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Dummy24(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Dummy24(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Dummy25(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Dummy25(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowReportFilterFieldButtons(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowReportFilterFieldButtons(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowLegendFieldButtons(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowLegendFieldButtons(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowAxisFieldButtons(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAxisFieldButtons(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowValueFieldButtons(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowValueFieldButtons(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowAllFieldButtons(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAllFieldButtons(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT FullSeriesCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_CategoryLabelLevel(
            XlCategoryLabelLevel *RHS /Out/) = 0;

        virtual HRESULT put_CategoryLabelLevel(
            XlCategoryLabelLevel RHS) = 0;

        virtual HRESULT get_SeriesNameLevel(
            XlSeriesNameLevel *RHS /Out/) = 0;

        virtual HRESULT put_SeriesNameLevel(
            XlSeriesNameLevel RHS) = 0;

        virtual HRESULT get_HasHiddenContent(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT DeleteHiddenContent() = 0;

        virtual HRESULT get_ChartColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ChartColor(
            VARIANT RHS) = 0;

        virtual HRESULT ClearToMatchColorStyle() = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        BSTR getCodeName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CodeName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CodeName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CodeName, get=getCodeName)

        BSTR get_CodeName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__CodeName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__CodeName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* set_CodeName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put__CodeName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__CodeName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_CodeName, get=get_CodeName, set=set_CodeName)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        IDispatch* getNext();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Next(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Next()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Next, get=getNext)

        BSTR getOnDoubleClick();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnDoubleClick(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnDoubleClick()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnDoubleClick(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnDoubleClick(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnDoubleClick()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnDoubleClick, get=getOnDoubleClick, set=setOnDoubleClick)

        BSTR getOnSheetActivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetActivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetActivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetActivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetActivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetActivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetActivate, get=getOnSheetActivate, set=setOnSheetActivate)

        BSTR getOnSheetDeactivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetDeactivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetDeactivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetDeactivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetDeactivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetDeactivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetDeactivate, get=getOnSheetDeactivate, set=setOnSheetDeactivate)

        PageSetup* getPageSetup();
        %MethodCode
            etapi::PageSetup *prop = nullptr;
            HRESULT hr = sipCpp->get_PageSetup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageSetup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PageSetup, get=getPageSetup)

        IDispatch* getPrevious();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Previous(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Previous()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Previous, get=getPrevious)

        VARIANT_BOOL getProtectContents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectContents(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectContents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectContents, get=getProtectContents)

        VARIANT_BOOL getProtectDrawingObjects();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectDrawingObjects(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectDrawingObjects()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectDrawingObjects, get=getProtectDrawingObjects)

        VARIANT_BOOL getProtectionMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectionMode(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectionMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectionMode, get=getProtectionMode)

        XlSheetVisibility getVisible();
        %MethodCode
            etapi::XlSheetVisibility prop = (etapi::XlSheetVisibility)0;
            HRESULT hr = sipCpp->get_Visible(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(XlSheetVisibility prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

        Shapes* getShapes();
        %MethodCode
            etapi::Shapes *prop = nullptr;
            HRESULT hr = sipCpp->get_Shapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shapes, get=getShapes)

        ChartGroup* getArea3DGroup();
        %MethodCode
            etapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Area3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Area3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Area3DGroup, get=getArea3DGroup)

        VARIANT_BOOL getAutoScaling();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoScaling(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoScaling()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoScaling(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoScaling(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoScaling()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoScaling, get=getAutoScaling, set=setAutoScaling)

        ChartGroup* getBar3DGroup();
        %MethodCode
            etapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Bar3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bar3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Bar3DGroup, get=getBar3DGroup)

        ChartArea* getChartArea();
        %MethodCode
            etapi::ChartArea *prop = nullptr;
            HRESULT hr = sipCpp->get_ChartArea(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartArea()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChartArea, get=getChartArea)

        ChartTitle* getChartTitle();
        %MethodCode
            etapi::ChartTitle *prop = nullptr;
            HRESULT hr = sipCpp->get_ChartTitle(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChartTitle, get=getChartTitle)

        ChartGroup* getColumn3DGroup();
        %MethodCode
            etapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Column3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Column3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Column3DGroup, get=getColumn3DGroup)

        Corners* getCorners();
        %MethodCode
            etapi::Corners *prop = nullptr;
            HRESULT hr = sipCpp->get_Corners(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Corners()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Corners, get=getCorners)

        DataTable* getDataTable();
        %MethodCode
            etapi::DataTable *prop = nullptr;
            HRESULT hr = sipCpp->get_DataTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataTable, get=getDataTable)

        long getDepthPercent();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DepthPercent(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DepthPercent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDepthPercent(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DepthPercent(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DepthPercent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DepthPercent, get=getDepthPercent, set=setDepthPercent)

        XlDisplayBlanksAs getDisplayBlanksAs();
        %MethodCode
            etapi::XlDisplayBlanksAs prop = (etapi::XlDisplayBlanksAs)0;
            HRESULT hr = sipCpp->get_DisplayBlanksAs(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayBlanksAs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayBlanksAs(XlDisplayBlanksAs prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayBlanksAs(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayBlanksAs()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayBlanksAs, get=getDisplayBlanksAs, set=setDisplayBlanksAs)

        long getElevation();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Elevation(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Elevation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setElevation(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Elevation(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Elevation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Elevation, get=getElevation, set=setElevation)

        Floor* getFloor();
        %MethodCode
            etapi::Floor *prop = nullptr;
            HRESULT hr = sipCpp->get_Floor(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Floor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Floor, get=getFloor)

        long getGapDepth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_GapDepth(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GapDepth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGapDepth(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GapDepth(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GapDepth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GapDepth, get=getGapDepth, set=setGapDepth)

        VARIANT_BOOL getHasDataTable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasDataTable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasDataTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasDataTable(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasDataTable(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasDataTable()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasDataTable, get=getHasDataTable, set=setHasDataTable)

        VARIANT_BOOL getHasLegend();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasLegend(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasLegend()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasLegend(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasLegend(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasLegend()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasLegend, get=getHasLegend, set=setHasLegend)

        VARIANT_BOOL getHasTitle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasTitle(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasTitle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasTitle(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasTitle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasTitle, get=getHasTitle, set=setHasTitle)

        long getHeightPercent();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HeightPercent(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeightPercent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeightPercent(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeightPercent(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeightPercent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeightPercent, get=getHeightPercent, set=setHeightPercent)

        Hyperlinks* getHyperlinks();
        %MethodCode
            etapi::Hyperlinks *prop = nullptr;
            HRESULT hr = sipCpp->get_Hyperlinks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hyperlinks, get=getHyperlinks)

        Legend* getLegend();
        %MethodCode
            etapi::Legend *prop = nullptr;
            HRESULT hr = sipCpp->get_Legend(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Legend()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Legend, get=getLegend)

        ChartGroup* getLine3DGroup();
        %MethodCode
            etapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Line3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Line3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Line3DGroup, get=getLine3DGroup)

        long getPerspective();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Perspective(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Perspective()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPerspective(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Perspective(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Perspective()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Perspective, get=getPerspective, set=setPerspective)

        ChartGroup* getPie3DGroup();
        %MethodCode
            etapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Pie3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Pie3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Pie3DGroup, get=getPie3DGroup)

        PlotArea* getPlotArea();
        %MethodCode
            etapi::PlotArea *prop = nullptr;
            HRESULT hr = sipCpp->get_PlotArea(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlotArea()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PlotArea, get=getPlotArea)

        VARIANT_BOOL getPlotVisibleOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PlotVisibleOnly(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlotVisibleOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlotVisibleOnly(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PlotVisibleOnly(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PlotVisibleOnly()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PlotVisibleOnly, get=getPlotVisibleOnly, set=setPlotVisibleOnly)

        VARIANT getRightAngleAxes();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_RightAngleAxes(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightAngleAxes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightAngleAxes(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightAngleAxes(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightAngleAxes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightAngleAxes, get=getRightAngleAxes, set=setRightAngleAxes)

        VARIANT getRotation();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Rotation(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rotation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRotation(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Rotation(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Rotation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Rotation, get=getRotation, set=setRotation)

        VARIANT_BOOL getSizeWithWindow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SizeWithWindow(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SizeWithWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSizeWithWindow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SizeWithWindow(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SizeWithWindow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SizeWithWindow, get=getSizeWithWindow, set=setSizeWithWindow)

        VARIANT_BOOL getShowWindow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowWindow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowWindow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowWindow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowWindow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowWindow, get=getShowWindow, set=setShowWindow)

        long getSubType();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SubType(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SubType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubType(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SubType(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SubType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SubType, get=getSubType, set=setSubType)

        ChartGroup* getSurfaceGroup();
        %MethodCode
            etapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_SurfaceGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SurfaceGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SurfaceGroup, get=getSurfaceGroup)

        long getType();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Type(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setType(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        XlChartType getChartType();
        %MethodCode
            etapi::XlChartType prop = (etapi::XlChartType)0;
            HRESULT hr = sipCpp->get_ChartType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartType(XlChartType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartType, get=getChartType, set=setChartType)

        Walls* getWalls();
        %MethodCode
            etapi::Walls *prop = nullptr;
            HRESULT hr = sipCpp->get_Walls(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Walls()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Walls, get=getWalls)

        VARIANT_BOOL getWallsAndGridlines2D();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WallsAndGridlines2D(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WallsAndGridlines2D()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWallsAndGridlines2D(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WallsAndGridlines2D(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WallsAndGridlines2D()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WallsAndGridlines2D, get=getWallsAndGridlines2D, set=setWallsAndGridlines2D)

        XlBarShape getBarShape();
        %MethodCode
            etapi::XlBarShape prop = (etapi::XlBarShape)0;
            HRESULT hr = sipCpp->get_BarShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BarShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBarShape(XlBarShape prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BarShape(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BarShape()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BarShape, get=getBarShape, set=setBarShape)

        XlRowCol getPlotBy();
        %MethodCode
            etapi::XlRowCol prop = (etapi::XlRowCol)0;
            HRESULT hr = sipCpp->get_PlotBy(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlotBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlotBy(XlRowCol prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PlotBy(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PlotBy()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PlotBy, get=getPlotBy, set=setPlotBy)

        VARIANT_BOOL getProtectFormatting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectFormatting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectFormatting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectFormatting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectFormatting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectFormatting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectFormatting, get=getProtectFormatting, set=setProtectFormatting)

        VARIANT_BOOL getProtectData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectData, get=getProtectData, set=setProtectData)

        VARIANT_BOOL getProtectGoalSeek();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectGoalSeek(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectGoalSeek()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectGoalSeek(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectGoalSeek(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectGoalSeek()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectGoalSeek, get=getProtectGoalSeek, set=setProtectGoalSeek)

        VARIANT_BOOL getProtectSelection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectSelection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectSelection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectSelection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectSelection, get=getProtectSelection, set=setProtectSelection)

        PivotLayout* getPivotLayout();
        %MethodCode
            etapi::PivotLayout *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotLayout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotLayout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotLayout, get=getPivotLayout)

        VARIANT_BOOL getHasPivotFields();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasPivotFields(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasPivotFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasPivotFields(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasPivotFields(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasPivotFields()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasPivotFields, get=getHasPivotFields, set=setHasPivotFields)

        ksoapi::Scripts* getScripts();
        %MethodCode
            ksoapi::Scripts *prop = nullptr;
            HRESULT hr = sipCpp->get_Scripts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Scripts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Scripts, get=getScripts)

        Tab* getTab();
        %MethodCode
            etapi::Tab *prop = nullptr;
            HRESULT hr = sipCpp->get_Tab(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tab()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tab, get=getTab)

        ksoapi::MsoEnvelope* getMailEnvelope();
        %MethodCode
            ksoapi::MsoEnvelope *prop = nullptr;
            HRESULT hr = sipCpp->get_MailEnvelope(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailEnvelope()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MailEnvelope, get=getMailEnvelope)

        VARIANT_BOOL getShowDataLabelsOverMaximum();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowDataLabelsOverMaximum(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDataLabelsOverMaximum()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDataLabelsOverMaximum(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDataLabelsOverMaximum(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDataLabelsOverMaximum()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDataLabelsOverMaximum, get=getShowDataLabelsOverMaximum, set=setShowDataLabelsOverMaximum)

        Walls* getSideWall();
        %MethodCode
            etapi::Walls *prop = nullptr;
            HRESULT hr = sipCpp->get_SideWall(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SideWall()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SideWall, get=getSideWall)

        Walls* getBackWall();
        %MethodCode
            etapi::Walls *prop = nullptr;
            HRESULT hr = sipCpp->get_BackWall(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackWall()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BackWall, get=getBackWall)

        VARIANT getChartStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ChartStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartStyle, get=getChartStyle, set=setChartStyle)

        long getPrintedCommentPages();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PrintedCommentPages(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintedCommentPages()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrintedCommentPages, get=getPrintedCommentPages)

        VARIANT_BOOL getDummy24();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Dummy24(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dummy24()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDummy24(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Dummy24(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Dummy24()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Dummy24, get=getDummy24, set=setDummy24)

        VARIANT_BOOL getDummy25();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Dummy25(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dummy25()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDummy25(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Dummy25(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Dummy25()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Dummy25, get=getDummy25, set=setDummy25)

        VARIANT_BOOL getShowReportFilterFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowReportFilterFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowReportFilterFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowReportFilterFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowReportFilterFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowReportFilterFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowReportFilterFieldButtons, get=getShowReportFilterFieldButtons, set=setShowReportFilterFieldButtons)

        VARIANT_BOOL getShowLegendFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowLegendFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowLegendFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowLegendFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowLegendFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowLegendFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowLegendFieldButtons, get=getShowLegendFieldButtons, set=setShowLegendFieldButtons)

        VARIANT_BOOL getShowAxisFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAxisFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAxisFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAxisFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAxisFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAxisFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAxisFieldButtons, get=getShowAxisFieldButtons, set=setShowAxisFieldButtons)

        VARIANT_BOOL getShowValueFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowValueFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowValueFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowValueFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowValueFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowValueFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowValueFieldButtons, get=getShowValueFieldButtons, set=setShowValueFieldButtons)

        VARIANT_BOOL getShowAllFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAllFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAllFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAllFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAllFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAllFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAllFieldButtons, get=getShowAllFieldButtons, set=setShowAllFieldButtons)

        XlCategoryLabelLevel getCategoryLabelLevel();
        %MethodCode
            etapi::XlCategoryLabelLevel prop = (etapi::XlCategoryLabelLevel)0;
            HRESULT hr = sipCpp->get_CategoryLabelLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CategoryLabelLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCategoryLabelLevel(XlCategoryLabelLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CategoryLabelLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CategoryLabelLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CategoryLabelLevel, get=getCategoryLabelLevel, set=setCategoryLabelLevel)

        XlSeriesNameLevel getSeriesNameLevel();
        %MethodCode
            etapi::XlSeriesNameLevel prop = (etapi::XlSeriesNameLevel)0;
            HRESULT hr = sipCpp->get_SeriesNameLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SeriesNameLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSeriesNameLevel(XlSeriesNameLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SeriesNameLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SeriesNameLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SeriesNameLevel, get=getSeriesNameLevel, set=setSeriesNameLevel)

        VARIANT_BOOL getHasHiddenContent();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasHiddenContent(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasHiddenContent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasHiddenContent, get=getHasHiddenContent)

        VARIANT getChartColor();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ChartColor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartColor(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartColor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartColor, get=getChartColor, set=setChartColor)
    };
};
