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

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

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

    };
};
