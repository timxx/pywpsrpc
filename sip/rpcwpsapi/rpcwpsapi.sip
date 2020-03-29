/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%Module(name=pywpsrpc.rpcwpsapi, keyword_arguments="Optional")

namespace wpsapi
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
%Include _Application_extend.sip
%Include _Application.sip
%Include FontNames.sip
%Include Languages.sip
%Include Language.sip
%Include Documents.sip
%Include _Document.sip
%Include Template.sip
%Include Templates.sip
%Include RoutingSlip.sip
%Include Bookmark.sip
%Include Bookmarks.sip
%Include Variable.sip
%Include Variables.sip
%Include RecentFile.sip
%Include RecentFiles.sip
%Include Window.sip
%Include Windows.sip
%Include Pane.sip
%Include Panes.sip
%Include Range.sip
%Include ListFormat.sip
%Include Find.sip
%Include Replacement.sip
%Include Characters.sip
%Include Words.sip
%Include Sentences.sip
%Include Sections.sip
%Include Section.sip
%Include Paragraphs.sip
%Include Paragraph.sip
%Include DropCap.sip
%Include TabStops.sip
%Include TabStop.sip
%Include _ParagraphFormat.sip
%Include _Font.sip
%Include Table.sip
%Include Row.sip
%Include Column.sip
%Include Cell.sip
%Include Tables.sip
%Include Rows.sip
%Include Columns.sip
%Include Cells.sip
%Include AutoCorrect.sip
%Include AutoCorrectEntries.sip
%Include AutoCorrectEntry.sip
%Include FirstLetterExceptions.sip
%Include FirstLetterException.sip
%Include TwoInitialCapsExceptions.sip
%Include TwoInitialCapsException.sip
%Include Footnotes.sip
%Include Endnotes.sip
%Include Comments.sip
%Include Footnote.sip
%Include Endnote.sip
%Include Comment.sip
%Include Borders.sip
%Include Border.sip
%Include Shading.sip
%Include TextRetrievalMode.sip
%Include AutoTextEntries.sip
%Include AutoTextEntry.sip
%Include System.sip
%Include OLEFormat.sip
%Include LinkFormat.sip
%Include _OLEControl.sip
%Include Fields.sip
%Include Field.sip
%Include Browser.sip
%Include Styles.sip
%Include Style.sip
%Include Frames.sip
%Include Frame.sip
%Include FormFields.sip
%Include FormField.sip
%Include TextInput.sip
%Include CheckBox.sip
%Include DropDown.sip
%Include ListEntries.sip
%Include ListEntry.sip
%Include TablesOfFigures.sip
%Include TableOfFigures.sip
%Include MailMerge.sip
%Include MailMergeFields.sip
%Include MailMergeField.sip
%Include MailMergeDataSource.sip
%Include MailMergeFieldNames.sip
%Include MailMergeFieldName.sip
%Include MailMergeDataFields.sip
%Include MailMergeDataField.sip
%Include Envelope.sip
%Include MailingLabel.sip
%Include CustomLabels.sip
%Include CustomLabel.sip
%Include TablesOfContents.sip
%Include TableOfContents.sip
%Include TablesOfAuthorities.sip
%Include TableOfAuthorities.sip
%Include Dialogs.sip
%Include Dialog.sip
%Include PageSetup.sip
%Include LineNumbering.sip
%Include TextColumns.sip
%Include TextColumn.sip
%Include Selection.sip
%Include TablesOfAuthoritiesCategories.sip
%Include TableOfAuthoritiesCategory.sip
%Include CaptionLabels.sip
%Include CaptionLabel.sip
%Include AutoCaptions.sip
%Include AutoCaption.sip
%Include Indexes.sip
%Include Index.sip
%Include AddIn.sip
%Include AddIns.sip
%Include Revisions.sip
%Include Revision.sip
%Include Task.sip
%Include Tasks.sip
%Include HeadersFooters.sip
%Include HeaderFooter.sip
%Include PageNumbers.sip
%Include PageNumber.sip
%Include Subdocuments.sip
%Include Subdocument.sip
%Include HeadingStyles.sip
%Include HeadingStyle.sip
%Include StoryRanges.sip
%Include ListLevel.sip
%Include ListLevels.sip
%Include ListTemplate.sip
%Include ListTemplates.sip
%Include ListParagraphs.sip
%Include List.sip
%Include Lists.sip
%Include ListGallery.sip
%Include ListGalleries.sip
%Include KeyBindings.sip
%Include KeysBoundTo.sip
%Include KeyBinding.sip
%Include FileConverter.sip
%Include FileConverters.sip
%Include SynonymInfo.sip
%Include Hyperlinks.sip
%Include Hyperlink.sip
%Include Shapes.sip
%Include ShapeRange.sip
%Include GroupShapes.sip
%Include Shape.sip
%Include TextFrame.sip
%Include _LetterContent.sip
%Include View.sip
%Include Zoom.sip
%Include Zooms.sip
%Include InlineShape.sip
%Include InlineShapes.sip
%Include SpellingSuggestions.sip
%Include SpellingSuggestion.sip
%Include Dictionaries.sip
%Include HangulHanjaConversionDictionaries.sip
%Include Dictionary.sip
%Include ReadabilityStatistics.sip
%Include ReadabilityStatistic.sip
%Include Versions.sip
%Include Version.sip
%Include Options.sip
%Include MailMessage.sip
%Include ProofreadingErrors.sip
%Include Mailer.sip
%Include WrapFormat.sip
%Include HangulAndAlphabetExceptions.sip
%Include HangulAndAlphabetException.sip
%Include Adjustments.sip
%Include CalloutFormat.sip
%Include ColorFormat.sip
%Include ConnectorFormat.sip
%Include FillFormat.sip
%Include FreeformBuilder.sip
%Include LineFormat.sip
%Include PictureFormat.sip
%Include ShadowFormat.sip
%Include ShapeNode.sip
%Include ShapeNodes.sip
%Include TextEffectFormat.sip
%Include ThreeDFormat.sip
%Include ApplicationEvents.sip
%Include DocumentEvents.sip
%Include OCXEvents.sip
%Include IApplicationEvents.sip
%Include IApplicationEvents2.sip
%Include ApplicationEvents2.sip
%Include EmailAuthor.sip
%Include EmailOptions.sip
%Include EmailSignature.sip
%Include Email.sip
%Include HorizontalLineFormat.sip
%Include Frameset.sip
%Include DefaultWebOptions.sip
%Include WebOptions.sip
%Include OtherCorrectionsExceptions.sip
%Include OtherCorrectionsException.sip
%Include EmailSignatureEntries.sip
%Include EmailSignatureEntry.sip
%Include HTMLDivision.sip
%Include HTMLDivisions.sip
%Include DiagramNode.sip
%Include DiagramNodeChildren.sip
%Include DiagramNodes.sip
%Include Diagram.sip
%Include CustomProperty.sip
%Include CustomProperties.sip
%Include SmartTag.sip
%Include SmartTags.sip
%Include StyleSheet.sip
%Include StyleSheets.sip
%Include MappedDataField.sip
%Include MappedDataFields.sip
%Include CanvasShapes.sip
%Include TableStyle.sip
%Include ConditionalStyle.sip
%Include FootnoteOptions.sip
%Include EndnoteOptions.sip
%Include Reviewers.sip
%Include Reviewer.sip
%Include TaskPane.sip
%Include TaskPanes.sip
%Include IApplicationEvents3.sip
%Include ApplicationEvents3.sip
%Include SmartTagAction.sip
%Include SmartTagActions.sip
%Include SmartTagRecognizer.sip
%Include SmartTagRecognizers.sip
%Include SmartTagType.sip
%Include SmartTagTypes.sip
%Include Line.sip
%Include Lines.sip
%Include Rectangle.sip
%Include Rectangles.sip
%Include Break.sip
%Include Breaks.sip
%Include Page.sip
%Include Pages.sip
%Include XMLNode.sip
%Include XMLNodes.sip
%Include XMLSchemaReference.sip
%Include XMLSchemaReferences.sip
%Include XMLChildNodeSuggestion.sip
%Include XMLChildNodeSuggestions.sip
%Include XMLNamespace.sip
%Include XMLNamespaces.sip
%Include XSLTransform.sip
%Include XSLTransforms.sip
%Include Editors.sip
%Include Editor.sip
%Include IApplicationEvents4.sip
%Include ApplicationEvents4.sip
%Include DocumentEvents2.sip
%Include Source.sip
%Include Sources.sip
%Include Bibliography.sip
%Include OMaths.sip
%Include OMath.sip
%Include OMathFunctions.sip
%Include OMathArgs.sip
%Include OMathFunction.sip
%Include OMathAcc.sip
%Include OMathBar.sip
%Include OMathBox.sip
%Include OMathBorderBox.sip
%Include OMathDelim.sip
%Include OMathEqArray.sip
%Include OMathFrac.sip
%Include OMathFunc.sip
%Include OMathGroupChar.sip
%Include OMathLimLow.sip
%Include OMathLimUpp.sip
%Include OMathMat.sip
%Include OMathMatRows.sip
%Include OMathMatCols.sip
%Include OMathMatRow.sip
%Include OMathMatCol.sip
%Include OMathNary.sip
%Include OMathPhantom.sip
%Include OMathScrPre.sip
%Include OMathRad.sip
%Include OMathScrSub.sip
%Include OMathScrSubSup.sip
%Include OMathScrSup.sip
%Include OMathAutoCorrect.sip
%Include OMathAutoCorrectEntries.sip
%Include OMathAutoCorrectEntry.sip
%Include OMathRecognizedFunctions.sip
%Include OMathRecognizedFunction.sip
%Include ContentControls.sip
%Include ContentControl.sip
%Include XMLMapping.sip
%Include ContentControlListEntries.sip
%Include ContentControlListEntry.sip
%Include BuildingBlockTypes.sip
%Include BuildingBlockType.sip
%Include Categories.sip
%Include Category.sip
%Include BuildingBlocks.sip
%Include BuildingBlock.sip
%Include BuildingBlockEntries.sip
%Include OMathBreaks.sip
%Include OMathBreak.sip
%Include Research.sip
%Include SoftEdgeFormat.sip
%Include GlowFormat.sip
%Include ReflectionFormat.sip
%Include ChartData.sip
%Include Chart.sip
%Include Corners.sip
%Include Legend.sip
%Include ChartBorder.sip
%Include Walls.sip
%Include Floor.sip
%Include PlotArea.sip
%Include ChartArea.sip
%Include SeriesLines.sip
%Include LeaderLines.sip
%Include Gridlines.sip
%Include UpBars.sip
%Include DownBars.sip
%Include Interior.sip
%Include ChartFillFormat.sip
%Include LegendEntries.sip
%Include ChartFont.sip
%Include ChartColorFormat.sip
%Include LegendEntry.sip
%Include LegendKey.sip
%Include SeriesCollection.sip
%Include Series.sip
%Include ErrorBars.sip
%Include Trendline.sip
%Include Trendlines.sip
%Include DataLabels.sip
%Include DataLabel.sip
%Include Points.sip
%Include Point.sip
%Include Axes.sip
%Include Axis.sip
%Include DataTable.sip
%Include ChartTitle.sip
%Include AxisTitle.sip
%Include DisplayUnitLabel.sip
%Include TickLabels.sip
%Include DropLines.sip
%Include HiLoLines.sip
%Include ChartGroup.sip
%Include ChartGroups.sip
%Include ChartCharacters.sip
%Include ChartFormat.sip
%Include UndoRecord.sip
%Include CoAuthLock.sip
%Include CoAuthLocks.sip
%Include CoAuthUpdate.sip
%Include CoAuthUpdates.sip
%Include CoAuthor.sip
%Include CoAuthors.sip
%Include CoAuthoring.sip
%Include Conflicts.sip
%Include Conflict.sip
%Include ProtectedViewWindows.sip
%Include ProtectedViewWindow.sip
%Include RepeatingSectionItemColl.sip
%Include RepeatingSectionItem.sip
%Include FullSeriesCollection.sip
%Include ChartCategory.sip
%Include CategoryCollection.sip
%Include Broadcast.sip
%Include RevisionsFilter.sip
%Include DocumentField.sip
%Include DocumentFields.sip
%Include OfdExportOptions.sip
%Include PdfExportOptions.sip
%Include IWORDCtrlExtender.sip


namespace wpsapi
{
    class Application /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapi__Application;
    %End
    };

    class Document /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapi__Document;
    %End
    };

    class Font /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapi__Font;
    %End
    };

    class ParagraphFormat /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapi__ParagraphFormat;
    %End
    };

    class LetterContent /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapi__LetterContent;
    %End
    };

    class OLEControl /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapi__OLEControl;
    %End
    };

    class VBE;
    class VBProject;

    const IID DIID_ApplicationEvents;
    const IID DIID_ApplicationEvents2;
    const IID DIID_ApplicationEvents3;
    const IID DIID_ApplicationEvents4;
};

HRESULT createWpsRpcInstance(IKRpcClient **client);
