/**
 * Copyright (c) 2020-2023 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%Module(name=pywpsrpc.rpcetapi, keyword_arguments="Optional")

namespace etapi
{
%TypeHeaderCode
    #include "stdafx.h"
%End

typedef float single;
};

%Import common.sip
%Include export.sip

%Include IKRpcClient.sip
%Include enums.sip
%Include mso_enum.sip
%Include Adjustments.sip
%Include CalloutFormat.sip
%Include ColorFormat.sip
%Include LineFormat.sip
%Include ShapeNode.sip
%Include ShapeNodes.sip
%Include PictureFormat.sip
%Include ShadowFormat.sip
%Include TextEffectFormat.sip
%Include ThreeDFormat.sip
%Include FillFormat.sip
%Include DiagramNodes.sip
%Include DiagramNodeChildren.sip
%Include DiagramNode.sip
%Include IRTDUpdateEvent.sip
%Include IRtdServer.sip
%Include TextFrame2.sip
%Include IFont.sip
%Include IWindow.sip
%Include IWindows.sip
%Include IAppEvents.sip
%Include _Application.sip
%Include IRange.sip
%Include IChartEvents.sip
%Include _Chart.sip
%Include Sheets.sip
%Include IVPageBreak.sip
%Include IHPageBreak.sip
%Include IHPageBreaks.sip
%Include IVPageBreaks.sip
%Include IRecentFile.sip
%Include IRecentFiles.sip
%Include IDocEvents.sip
%Include _Worksheet.sip
%Include IStyle.sip
%Include IStyles.sip
%Include IBorders.sip
%Include IAddIn.sip
%Include IAddIns.sip
%Include IToolbar.sip
%Include IToolbars.sip
%Include IToolbarButton.sip
%Include IToolbarButtons.sip
%Include IAreas.sip
%Include IWorkbookEvents.sip
%Include _Workbook.sip
%Include Workbooks.sip
%Include IMenuBars.sip
%Include IMenuBar.sip
%Include IMenus.sip
%Include IMenu.sip
%Include IMenuItems.sip
%Include IMenuItem.sip
%Include ICharts.sip
%Include IDrawingObjects.sip
%Include IPivotCache.sip
%Include IPivotCaches.sip
%Include IPivotFormula.sip
%Include IPivotFormulas.sip
%Include IPivotTable.sip
%Include IPivotTables.sip
%Include IPivotField.sip
%Include IPivotFields.sip
%Include ICalculatedFields.sip
%Include IPivotItem.sip
%Include IPivotItems.sip
%Include ICalculatedItems.sip
%Include ICharacters.sip
%Include IDialogs.sip
%Include IDialog.sip
%Include ISoundNote.sip
%Include IButton.sip
%Include IButtons.sip
%Include ICheckBox.sip
%Include ICheckBoxes.sip
%Include IOptionButton.sip
%Include IOptionButtons.sip
%Include IEditBox.sip
%Include IEditBoxes.sip
%Include IScrollBar.sip
%Include IScrollBars.sip
%Include IListBox.sip
%Include IListBoxes.sip
%Include IGroupBox.sip
%Include IGroupBoxes.sip
%Include IDropDown.sip
%Include IDropDowns.sip
%Include ISpinner.sip
%Include ISpinners.sip
%Include IDialogFrame.sip
%Include ILabel.sip
%Include ILabels.sip
%Include IPanes.sip
%Include IPane.sip
%Include IScenarios.sip
%Include IScenario.sip
%Include IGroupObject.sip
%Include IGroupObjects.sip
%Include ILine.sip
%Include ILines.sip
%Include IRectangle.sip
%Include IRectangles.sip
%Include IOval.sip
%Include IOvals.sip
%Include IArc.sip
%Include IArcs.sip
%Include IOLEObjectEvents.sip
%Include _IOLEObject.sip
%Include IOLEObjects.sip
%Include ITextBox.sip
%Include ITextBoxes.sip
%Include IPicture.sip
%Include IPictures.sip
%Include IDrawing.sip
%Include IDrawings.sip
%Include IRoutingSlip.sip
%Include IOutline.sip
%Include IModule.sip
%Include IModules.sip
%Include IDialogSheet.sip
%Include IDialogSheets.sip
%Include IWorksheets.sip
%Include IPageSetup.sip
%Include INames.sip
%Include IName.sip
%Include IChartObject.sip
%Include IChartObjects.sip
%Include IMailer.sip
%Include ICustomViews.sip
%Include ICustomView.sip
%Include IFormatConditions.sip
%Include IFormatCondition.sip
%Include IComments.sip
%Include IComment.sip
%Include IRefreshEvents.sip
%Include _IQueryTable.sip
%Include IQueryTables.sip
%Include IParameter.sip
%Include IParameters.sip
%Include IODBCError.sip
%Include IODBCErrors.sip
%Include IValidation.sip
%Include IHyperlinks.sip
%Include IHyperlink.sip
%Include IAutoFilter.sip
%Include IFilters.sip
%Include IFilter.sip
%Include IAutoCorrect.sip
%Include IBorder.sip
%Include IInterior.sip
%Include IChartFillFormat.sip
%Include IChartColorFormat.sip
%Include IAxis.sip
%Include IChartTitle.sip
%Include IAxisTitle.sip
%Include IChartGroup.sip
%Include IChartGroups.sip
%Include IAxes.sip
%Include IPoints.sip
%Include IPoint.sip
%Include ISeries.sip
%Include ISeriesCollection.sip
%Include IDataLabel.sip
%Include IDataLabels.sip
%Include ILegendEntry.sip
%Include ILegendEntries.sip
%Include ILegendKey.sip
%Include ITrendlines.sip
%Include ITrendline.sip
%Include ICorners.sip
%Include ISeriesLines.sip
%Include IHiLoLines.sip
%Include IGridlines.sip
%Include IDropLines.sip
%Include ILeaderLines.sip
%Include IUpBars.sip
%Include IDownBars.sip
%Include IFloor.sip
%Include IWalls.sip
%Include ITickLabels.sip
%Include IPlotArea.sip
%Include IChartArea.sip
%Include ILegend.sip
%Include IErrorBars.sip
%Include IDataTable.sip
%Include IPhonetic.sip
%Include IShape.sip
%Include IShapes.sip
%Include IShapeRange.sip
%Include IGroupShapes.sip
%Include ITextFrame.sip
%Include IConnectorFormat.sip
%Include IFreeformBuilder.sip
%Include IControlFormat.sip
%Include IOLEFormat.sip
%Include ILinkFormat.sip
%Include IPublishObjects.sip
%Include PublishObject.sip
%Include IOLEDBError.sip
%Include IOLEDBErrors.sip
%Include IPhonetics.sip
%Include DefaultWebOptions.sip
%Include WebOptions.sip
%Include IPivotLayout.sip
%Include TreeviewControl.sip
%Include CubeField.sip
%Include CubeFields.sip
%Include IDisplayUnitLabel.sip
%Include ICellFormat.sip
%Include IUsedObjects.sip
%Include ICustomProperties.sip
%Include ICustomProperty.sip
%Include ICalculatedMembers.sip
%Include ICalculatedMember.sip
%Include IWatches.sip
%Include IWatch.sip
%Include IPivotCell.sip
%Include IGraphic.sip
%Include IAutoRecover.sip
%Include IErrorCheckingOptions.sip
%Include IErrors.sip
%Include IError.sip
%Include ISmartTagAction.sip
%Include ISmartTagActions.sip
%Include ISmartTag.sip
%Include ISmartTags.sip
%Include ISmartTagRecognizer.sip
%Include ISmartTagRecognizers.sip
%Include ISmartTagOptions.sip
%Include ISpellingOptions.sip
%Include ISpeech.sip
%Include IProtection.sip
%Include IPivotItemList.sip
%Include ITab.sip
%Include IAllowEditRanges.sip
%Include IAllowEditRange.sip
%Include IUserAccessList.sip
%Include IUserAccess.sip
%Include IRTD.sip
%Include IDiagram.sip
%Include IListObjects.sip
%Include IListObject.sip
%Include IListColumns.sip
%Include IListColumn.sip
%Include IListRows.sip
%Include IListRow.sip
%Include IXmlNamespace.sip
%Include IXmlNamespaces.sip
%Include IXmlDataBinding.sip
%Include IXmlSchema.sip
%Include IXmlSchemas.sip
%Include IXmlMap.sip
%Include IXmlMaps.sip
%Include IListDataFormat.sip
%Include IXPath.sip
%Include IPivotLineCells.sip
%Include IPivotLine.sip
%Include IPivotLines.sip
%Include IPivotAxis.sip
%Include IPivotFilter.sip
%Include IPivotFilters.sip
%Include IWorkbookConnection.sip
%Include IConnections.sip
%Include IWorksheetView.sip
%Include IChartView.sip
%Include IModuleView.sip
%Include IDialogSheetView.sip
%Include ISheetViews.sip
%Include IOLEDBConnection.sip
%Include IODBCConnection.sip
%Include IAction.sip
%Include IActions.sip
%Include IFormatColor.sip
%Include IConditionValue.sip
%Include IColorScale.sip
%Include IColorScaleCriteria.sip
%Include IColorScaleCriterion.sip
%Include IDatabar.sip
%Include IIconSetCondition.sip
%Include IIconCriteria.sip
%Include IIconCriterion.sip
%Include IIcon.sip
%Include IIconSet.sip
%Include IIconSets.sip
%Include ITop10.sip
%Include IAboveAverage.sip
%Include IUniqueValues.sip
%Include IRanges.sip
%Include IHeaderFooter.sip
%Include IPage.sip
%Include IPages.sip
%Include IServerViewableItems.sip
%Include ITableStyleElement.sip
%Include ITableStyleElements.sip
%Include ITableStyle.sip
%Include ITableStyles.sip
%Include ISortField.sip
%Include ISortFields.sip
%Include ISort.sip
%Include IResearch.sip
%Include IColorStop.sip
%Include IColorStops.sip
%Include ILinearGradient.sip
%Include IRectangularGradient.sip
%Include IMultiThreadedCalculation.sip
%Include IChartFormat.sip
%Include IFileExportConverter.sip
%Include IFileExportConverters.sip
%Include IAddIns2.sip
%Include ISparklineGroups.sip
%Include ISparklineGroup.sip
%Include ISparkPoints.sip
%Include ISparkline.sip
%Include ISparkAxes.sip
%Include ISparkHorizontalAxis.sip
%Include ISparkVerticalAxis.sip
%Include ISparkColor.sip
%Include IDataBarBorder.sip
%Include INegativeBarFormat.sip
%Include IValueChange.sip
%Include IPivotTableChangeList.sip
%Include IDisplayFormat.sip
%Include ISlicerCaches.sip
%Include ISlicerCache.sip
%Include ISlicerCacheLevels.sip
%Include ISlicerCacheLevel.sip
%Include ISlicers.sip
%Include ISlicer.sip
%Include ISlicerItem.sip
%Include ISlicerItems.sip
%Include ISlicerPivotTables.sip
%Include IProtectedViewWindows.sip
%Include IProtectedViewWindow.sip
%Include ITableObject.sip
%Include IPivotValueCell.sip
%Include IQuickAnalysis.sip
%Include IModelConnection.sip
%Include IWorksheetDataConnection.sip
%Include ITextConnection.sip
%Include IDataFeedConnection.sip
%Include IModelTableColumn.sip
%Include IModelTableColumns.sip
%Include IModelTable.sip
%Include IModelTables.sip
%Include IModelRelationship.sip
%Include IModelRelationships.sip
%Include IModel.sip
%Include IFullSeriesCollection.sip
%Include IChartCategory.sip
%Include ICategoryCollection.sip
%Include ITimelineState.sip
%Include ITimelineViewState.sip
%Include IModelTableNames.sip
%Include IModelTableNameChange.sip
%Include IModelTableNameChanges.sip
%Include IModelChanges.sip
%Include IModelColumnName.sip
%Include IModelColumnNames.sip
%Include IModelColumnChange.sip
%Include IModelColumnChanges.sip
%Include IModelMeasureName.sip
%Include IModelMeasureNames.sip
%Include WorksheetFunction.sip
%Include IDummy.sip
%Include ICanvasShapes.sip
%Include _DebugTools.sip
%Include Solver.sip

namespace etapi
{
    typedef _Application Application;
    typedef _Chart Chart;
    typedef _IOLEObject OLEObject;
    typedef _IQueryTable QueryTable;
    typedef IQueryTables QueryTables;
    typedef _Workbook Workbook;
    typedef _Worksheet Worksheet;
    typedef IPageSetup PageSetup;
    typedef IPages Pages;
    typedef IAboveAverage AboveAverage;
    typedef IFormatConditions FormatConditions;
    typedef IFormatCondition FormatCondition;
    typedef ICharts Charts;
    typedef IRange Range;
    typedef IWindow Window;
    typedef IBorders Borders;
    typedef IWorksheets Worksheets;
    typedef IShapes Shapes;
    typedef IShape Shape;
    typedef IShapeRange ShapeRange;
    typedef IGroupShapes GroupShapes;
    typedef IFont Font;
    typedef ICellFormat CellFormat;
    typedef IPivotFormula PivotFormula;
    typedef IPlotArea PlotArea;
    typedef IDownBars DownBars;
    typedef IDataFeedConnection DataFeedConnection;
    typedef ISmartTagRecognizer SmartTagRecognizer;
    typedef IHyperlink Hyperlink;
    typedef IFloor Floor;
    typedef IDrawings Drawings;
    typedef IWatch Watch;
    typedef IPivotItems PivotItems;
    typedef IPivotLine PivotLine;
    typedef IErrorCheckingOptions ErrorCheckingOptions;
    typedef IOLEObjectEvents OLEObjectEvents;
    typedef IDisplayUnitLabel DisplayUnitLabel;
    typedef IGraphic Graphic;
    typedef IVPageBreak VPageBreak;
    typedef ISmartTags SmartTags;
    typedef IError Error;
    typedef IBorder Border;
    typedef IModelMeasureNames ModelMeasureNames;
    typedef IComment Comment;
    typedef IHeaderFooter HeaderFooter;
    typedef ILegendEntries LegendEntries;
    typedef ISlicerCacheLevel SlicerCacheLevel;
    typedef IListBox ListBox;
    typedef IChartFormat ChartFormat;
    typedef IMenus Menus;
    typedef ILinkFormat LinkFormat;
    typedef IPivotLayout PivotLayout;
    typedef IAddIns2 AddIns2;
    typedef IFileExportConverters FileExportConverters;
    typedef IModelTableNameChanges ModelTableNameChanges;
    typedef IChartFillFormat ChartFillFormat;
    typedef IGroupBox GroupBox;
    typedef ICustomProperty CustomProperty;
    typedef ITimelineViewState TimelineViewState;
    typedef IUsedObjects UsedObjects;
    typedef IOLEDBErrors OLEDBErrors;
    typedef IWorksheetDataConnection WorksheetDataConnection;
    typedef ICheckBoxes CheckBoxes;
    typedef IScenario Scenario;
    typedef IVPageBreaks VPageBreaks;
    typedef ISlicerCacheLevels SlicerCacheLevels;
    typedef IProtectedViewWindow ProtectedViewWindow;
    typedef ILegendKey LegendKey;
    typedef ITableStyleElement TableStyleElement;
    typedef IControlFormat ControlFormat;
    typedef IMenuItems MenuItems;
    typedef IPivotCache PivotCache;
    typedef IModelConnection ModelConnection;
    typedef ITableStyles TableStyles;
    typedef IIconSetCondition IconSetCondition;
    typedef IXmlSchema XmlSchema;
    typedef IIcon Icon;
    typedef ICorners Corners;
    typedef IPoints Points;
    typedef IModelColumnChanges ModelColumnChanges;
    typedef IScrollBars ScrollBars;
    typedef ISmartTagRecognizers SmartTagRecognizers;
    typedef ICategoryCollection CategoryCollection;
    typedef IModelColumnNames ModelColumnNames;
    typedef IListObjects ListObjects;
    typedef IModuleView ModuleView;
    typedef IRecentFile RecentFile;
    typedef IEditBoxes EditBoxes;
    typedef IStyles Styles;
    typedef IXmlSchemas XmlSchemas;
    typedef IModelMeasureName ModelMeasureName;
    typedef IListRow ListRow;
    typedef IWorkbookEvents WorkbookEvents;
    typedef IFormatColor FormatColor;
    typedef ISmartTagOptions SmartTagOptions;
    typedef IScenarios Scenarios;
    typedef IQuickAnalysis QuickAnalysis;
    typedef IDiagram Diagram;
    typedef ITextFrame TextFrame;
    typedef IPivotLineCells PivotLineCells;
    typedef ISlicerItem SlicerItem;
    typedef IModelTableColumn ModelTableColumn;
    typedef IDropLines DropLines;
    typedef ICalculatedFields CalculatedFields;
    typedef IGroupBoxes GroupBoxes;
    typedef IODBCConnection ODBCConnection;
    typedef IToolbar Toolbar;
    typedef IOptionButtons OptionButtons;
    typedef IRectangle Rectangle;
    typedef IAreas Areas;
    typedef IPhonetics Phonetics;
    typedef IDocEvents DocEvents;
    typedef IArcs Arcs;
    typedef ITrendline Trendline;
    typedef ISparkline Sparkline;
    typedef ISmartTagActions SmartTagActions;
    typedef IPivotTableChangeList PivotTableChangeList;
    typedef IAction Action;
    typedef ILines Lines;
    typedef IPane Pane;
    typedef IAxis Axis;
    typedef IDrawing Drawing;
    typedef IGridlines Gridlines;
    typedef IConnections Connections;
    typedef IRoutingSlip RoutingSlip;
    typedef ICheckBox CheckBox;
    typedef IRectangularGradient RectangularGradient;
    typedef IChartEvents ChartEvents;
    typedef IDataTable DataTable;
    typedef IScrollBar ScrollBar;
    typedef IAutoFilter AutoFilter;
    typedef IPivotItem PivotItem;
    typedef IModelRelationships ModelRelationships;
    typedef IProtectedViewWindows ProtectedViewWindows;
    typedef IModules Modules;
    typedef IModelTable ModelTable;
    typedef ITab Tab;
    typedef IToolbarButton ToolbarButton;
    typedef IXmlMap XmlMap;
    typedef IDialogSheetView DialogSheetView;
    typedef IXmlDataBinding XmlDataBinding;
    typedef ILinearGradient LinearGradient;
    typedef IFullSeriesCollection FullSeriesCollection;
    typedef IOptionButton OptionButton;
    typedef ISortFields SortFields;
    typedef IPivotLines PivotLines;
    typedef IPivotAxis PivotAxis;
    typedef IFilter Filter;
    typedef IXmlNamespaces XmlNamespaces;
    typedef IResearch Research;
    typedef ICustomView CustomView;
    typedef IModelTableNameChange ModelTableNameChange;
    typedef ISeriesCollection SeriesCollection;
    typedef IDatabar Databar;
    typedef IIconSets IconSets;
    typedef IAutoCorrect AutoCorrect;
    typedef IToolbarButtons ToolbarButtons;
    typedef IDisplayFormat DisplayFormat;
    typedef IWindows Windows;
    typedef IStyle Style;
    typedef IUserAccessList UserAccessList;
    typedef IListColumns ListColumns;
    typedef IPivotCaches PivotCaches;
    typedef IDataBarBorder DataBarBorder;
    typedef ITrendlines Trendlines;
    typedef ILine Line;
    typedef ISpeech Speech;
    typedef ILabel Label;
    typedef IButton Button;
    typedef IConnectorFormat ConnectorFormat;
    typedef ISparkColor SparkColor;
    typedef ICustomViews CustomViews;
    typedef IChartTitle ChartTitle;
    typedef ITickLabels TickLabels;
    typedef ILegendEntry LegendEntry;
    typedef IModelColumnName ModelColumnName;
    typedef IColorScaleCriteria ColorScaleCriteria;
    typedef ITextConnection TextConnection;
    typedef IParameters Parameters;
    typedef IListColumn ListColumn;
    typedef IPoint Point;
    typedef IDialogSheets DialogSheets;
    typedef ISmartTag SmartTag;
    typedef IUniqueValues UniqueValues;
    typedef ITableObject TableObject;
    typedef IChartColorFormat ChartColorFormat;
    typedef IErrors Errors;
    typedef INegativeBarFormat NegativeBarFormat;
    typedef IOval Oval;
    typedef IIconCriteria IconCriteria;
    typedef IValueChange ValueChange;
    typedef IPhonetic Phonetic;
    typedef IModelRelationship ModelRelationship;
    typedef IDialog Dialog;
    typedef IButtons Buttons;
    typedef ITextBoxes TextBoxes;
    typedef IFreeformBuilder FreeformBuilder;
    typedef IArc Arc;
    typedef IAutoRecover AutoRecover;
    typedef IChartObject ChartObject;
    typedef IChartArea ChartArea;
    typedef ISparklineGroup SparklineGroup;
    typedef IPivotFilter PivotFilter;
    typedef ICalculatedItems CalculatedItems;
    typedef IColorStops ColorStops;
    typedef IXmlMaps XmlMaps;
    typedef IAxisTitle AxisTitle;
    typedef ISparklineGroups SparklineGroups;
    typedef IXPath XPath;
    typedef IIconCriterion IconCriterion;
    typedef IOLEFormat OLEFormat;
    typedef ISpinners Spinners;
    typedef ISeriesLines SeriesLines;
    typedef IGroupObjects GroupObjects;
    typedef IPivotField PivotField;
    typedef IODBCError ODBCError;
    typedef IModelChanges ModelChanges;
    typedef IPivotFilters PivotFilters;
    typedef IOLEDBError OLEDBError;
    typedef IMailer Mailer;
    typedef ISlicerCaches SlicerCaches;
    typedef IPivotFields PivotFields;
    typedef ITimelineState TimelineState;
    typedef ISpellingOptions SpellingOptions;
    typedef IChartGroup ChartGroup;
    typedef ISort Sort;
    typedef ISoundNote SoundNote;
    typedef IProtection Protection;
    typedef IRTD RTD;
    typedef ISpinner Spinner;
    typedef IWorksheetView WorksheetView;
    typedef IMenuItem MenuItem;
    typedef ISparkHorizontalAxis SparkHorizontalAxis;
    typedef IOvals Ovals;
    typedef IAllowEditRanges AllowEditRanges;
    typedef IRecentFiles RecentFiles;
    typedef IDataLabel DataLabel;
    typedef IErrorBars ErrorBars;
    typedef ICustomProperties CustomProperties;
    typedef IDrawingObjects DrawingObjects;
    typedef IInterior Interior;
    typedef IName Name;
    typedef IHyperlinks Hyperlinks;
    typedef IRefreshEvents RefreshEvents;
    typedef IPivotTable PivotTable;
    typedef IPivotItemList PivotItemList;
    typedef ILegend Legend;
    typedef IChartObjects ChartObjects;
    typedef IListDataFormat ListDataFormat;
    typedef ISlicerCache SlicerCache;
    typedef IModule Module;
    typedef IWatches Watches;
    typedef ISparkPoints SparkPoints;
    typedef IPivotTables PivotTables;
    typedef IPivotValueCell PivotValueCell;
    typedef IPivotCell PivotCell;
    typedef IIconSet IconSet;
    typedef IPublishObjects PublishObjects;
    typedef IOLEObjects OLEObjects;
    typedef IMenuBars MenuBars;
    typedef IComments Comments;
    typedef ILeaderLines LeaderLines;
    typedef IListRows ListRows;
    typedef IHPageBreak HPageBreak;
    typedef IPictures Pictures;
    typedef IWorkbookConnection WorkbookConnection;
    typedef ILabels Labels;
    typedef ISmartTagAction SmartTagAction;
    typedef INames Names;
    typedef ISortField SortField;
    typedef IDialogSheet DialogSheet;
    typedef IModel Model;
    typedef IMultiThreadedCalculation MultiThreadedCalculation;
    typedef IColorScale ColorScale;
    typedef IDialogFrame DialogFrame;
    typedef ISlicerPivotTables SlicerPivotTables;
    typedef IDialogs Dialogs;
    typedef IOutline Outline;
    typedef IDropDowns DropDowns;
    typedef IXmlNamespace XmlNamespace;
    typedef IModelTableColumns ModelTableColumns;
    typedef IPage Page;
    typedef ICharacters Characters;
    typedef IHPageBreaks HPageBreaks;
    typedef IRectangles Rectangles;
    typedef ISparkVerticalAxis SparkVerticalAxis;
    typedef IConditionValue ConditionValue;
    typedef IGroupObject GroupObject;
    typedef IPivotFormulas PivotFormulas;
    typedef IServerViewableItems ServerViewableItems;
    typedef IChartCategory ChartCategory;
    typedef IModelTableNames ModelTableNames;
    typedef ITop10 Top10;
    typedef ICalculatedMembers CalculatedMembers;
    typedef IAddIns AddIns;
    typedef IDropDown DropDown;
    typedef IAllowEditRange AllowEditRange;
    typedef IUpBars UpBars;
    typedef IRanges Ranges;
    typedef IAxes Axes;
    typedef IParameter Parameter;
    typedef ITableStyleElements TableStyleElements;
    typedef IWalls Walls;
    typedef ISparkAxes SparkAxes;
    typedef IListObject ListObject;
    typedef IMenuBar MenuBar;
    typedef IFileExportConverter FileExportConverter;
    typedef IOLEDBConnection OLEDBConnection;
    typedef IPicture Picture;
    typedef IMenu Menu;
    typedef IModelTables ModelTables;
    typedef IODBCErrors ODBCErrors;
    typedef IChartView ChartView;
    typedef ISheetViews SheetViews;
    typedef IAppEvents AppEvents;
    typedef IColorStop ColorStop;
    typedef IFilters Filters;
    typedef IListBoxes ListBoxes;
    typedef ISlicers Slicers;
    typedef IPanes Panes;
    typedef ICalculatedMember CalculatedMember;
    typedef IActions Actions;
    typedef ITextBox TextBox;
    typedef ITableStyle TableStyle;
    typedef ISlicerItems SlicerItems;
    typedef IHiLoLines HiLoLines;
    typedef IUserAccess UserAccess;
    typedef IEditBox EditBox;
    typedef ISeries Series;
    typedef IModelColumnChange ModelColumnChange;
    typedef IChartGroups ChartGroups;
    typedef IToolbars Toolbars;
    typedef IDataLabels DataLabels;
    typedef IValidation Validation;
    typedef IAddIn AddIn;
    typedef IColorScaleCriterion ColorScaleCriterion;
    typedef ISlicer Slicer;

    class VBE;
    class VBProject;

    const IID DIID_AppEvents;
};

HRESULT createEtRpcInstance(IKRpcClient **client);

