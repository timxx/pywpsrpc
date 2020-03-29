/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%Module(name=pywpsrpc.rpcwppapi, keyword_arguments="Optional")

namespace wppapi
{
%TypeHeaderCode
    #include "stdafx.h"
%End

typedef float single;
typedef long MsoRGBType;
};

%Import common.sip
%Include export.sip

%Include IKRpcClient.sip
%Include enums.sip
%Include Collection.sip
%Include _Application.sip
%Include ColorFormat.sip
%Include SlideShowWindow.sip
%Include Selection.sip
%Include DocumentWindows.sip
%Include SlideShowWindows.sip
%Include DocumentWindow.sip
%Include View.sip
%Include SlideShowView.sip
%Include SlideShowSettings.sip
%Include NamedSlideShows.sip
%Include NamedSlideShow.sip
%Include PrintOptions.sip
%Include PrintRanges.sip
%Include PrintRange.sip
%Include AddIns.sip
%Include AddIn.sip
%Include Presentations.sip
%Include PresEvents.sip
%Include Hyperlinks.sip
%Include Hyperlink.sip
%Include PageSetup.sip
%Include Fonts.sip
%Include ExtraColors.sip
%Include TextRange.sip
%Include TextFrame.sip
%Include Shape.sip
%Include Shapes.sip
%Include Slides.sip
%Include _Slide.sip
%Include SlideRange.sip
%Include _Master.sip
%Include SldEvents.sip
%Include ColorSchemes.sip
%Include ColorScheme.sip
%Include RGBColor.sip
%Include SlideShowTransition.sip
%Include SoundEffect.sip
%Include SoundFormat.sip
%Include HeadersFooters.sip
%Include Placeholders.sip
%Include PlaceholderFormat.sip
%Include FreeformBuilder.sip
%Include ShapeRange.sip
%Include GroupShapes.sip
%Include Adjustments.sip
%Include PictureFormat.sip
%Include FillFormat.sip
%Include LineFormat.sip
%Include ShadowFormat.sip
%Include ConnectorFormat.sip
%Include TextEffectFormat.sip
%Include ThreeDFormat.sip
%Include CalloutFormat.sip
%Include ShapeNodes.sip
%Include ShapeNode.sip
%Include OLEFormat.sip
%Include LinkFormat.sip
%Include ObjectVerbs.sip
%Include AnimationSettings.sip
%Include ActionSettings.sip
%Include ActionSetting.sip
%Include PlaySettings.sip
%Include Ruler.sip
%Include RulerLevels.sip
%Include RulerLevel.sip
%Include TabStops.sip
%Include TabStop.sip
%Include Font.sip
%Include ParagraphFormat.sip
%Include BulletFormat.sip
%Include TextStyles.sip
%Include TextStyle.sip
%Include TextStyleLevels.sip
%Include TextStyleLevel.sip
%Include HeaderFooter.sip
%Include _Presentation.sip
%Include Tags.sip
%Include MouseTracker.sip
%Include MouseDownHandler.sip
%Include OCXExtender.sip
%Include OCXExtenderEvents.sip
%Include EApplication.sip
%Include Table.sip
%Include Columns.sip
%Include Column.sip
%Include Rows.sip
%Include Row.sip
%Include CellRange.sip
%Include Cell.sip
%Include Borders.sip
%Include Panes.sip
%Include Pane.sip
%Include DefaultWebOptions.sip
%Include WebOptions.sip
%Include PublishObjects.sip
%Include PublishObject.sip
%Include MasterEvents.sip
%Include _PowerRex.sip
%Include Comments.sip
%Include Comment.sip
%Include Designs.sip
%Include Design.sip
%Include DiagramNode.sip
%Include DiagramNodeChildren.sip
%Include DiagramNodes.sip
%Include Diagram.sip
%Include TimeLine.sip
%Include Sequences.sip
%Include Sequence.sip
%Include Effect.sip
%Include Timing.sip
%Include EffectParameters.sip
%Include EffectInformation.sip
%Include AnimationBehaviors.sip
%Include AnimationBehavior.sip
%Include MotionEffect.sip
%Include ColorEffect.sip
%Include ScaleEffect.sip
%Include RotationEffect.sip
%Include PropertyEffect.sip
%Include AnimationPoints.sip
%Include AnimationPoint.sip
%Include CanvasShapes.sip
%Include AutoCorrect.sip
%Include Options.sip
%Include CommandEffect.sip
%Include FilterEffect.sip
%Include SetEffect.sip
%Include CustomLayouts.sip
%Include CustomLayout.sip
%Include TableStyle.sip
%Include CustomerData.sip
%Include Research.sip
%Include TableBackground.sip
%Include TextFrame2.sip
%Include FileConverters.sip
%Include FileConverter.sip
%Include Axes.sip
%Include Axis.sip
%Include AxisTitle.sip
%Include Chart.sip
%Include ChartBorder.sip
%Include ChartCharacters.sip
%Include ChartArea.sip
%Include ChartColorFormat.sip
%Include ChartData.sip
%Include ChartFillFormat.sip
%Include ChartFormat.sip
%Include ChartGroup.sip
%Include ChartGroups.sip
%Include ChartTitle.sip
%Include Corners.sip
%Include DataLabel.sip
%Include DataLabels.sip
%Include DataTable.sip
%Include DisplayUnitLabel.sip
%Include DownBars.sip
%Include DropLines.sip
%Include ErrorBars.sip
%Include Floor.sip
%Include ChartFont.sip
%Include Gridlines.sip
%Include HiLoLines.sip
%Include Interior.sip
%Include LeaderLines.sip
%Include Legend.sip
%Include LegendEntries.sip
%Include LegendEntry.sip
%Include LegendKey.sip
%Include PlotArea.sip
%Include Point.sip
%Include Points.sip
%Include Series.sip
%Include SeriesCollection.sip
%Include SeriesLines.sip
%Include TickLabels.sip
%Include Trendline.sip
%Include Trendlines.sip
%Include UpBars.sip
%Include Walls.sip
%Include MediaFormat.sip
%Include SectionProperties.sip
%Include Player.sip
%Include ResampleMediaTask.sip
%Include ResampleMediaTasks.sip
%Include MediaBookmark.sip
%Include MediaBookmarks.sip
%Include Coauthoring.sip
%Include Broadcast.sip
%Include ProtectedViewWindows.sip
%Include ProtectedViewWindow.sip
%Include FullSeriesCollection.sip
%Include ChartCategory.sip
%Include CategoryCollection.sip
%Include ThemeVariant.sip
%Include ThemeVariants.sip
%Include Theme.sip
%Include SlideNavigation.sip
%Include Guides.sip
%Include Guide.sip
%Include IPPTCtrlExtender.sip

namespace wppapi
{
    class Application /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wppapi__Application;
    %End
    };

    class Presentation /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wppapi__Presentation;
    %End
    };

    class Slide /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wppapi__Slide;
    %End
    };

    class VBE;
    class VBProject;

    const IID IID_EApplication;
};

HRESULT createWppRpcInstance(IKRpcClient **client);
