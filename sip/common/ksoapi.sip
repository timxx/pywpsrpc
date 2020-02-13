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
%TypeHeaderCode
    #include "stdafx.h"
%End

typedef float single;
typedef long MsoRGBType;
};

%Include ksoapi/enums.sip
%Include ksoapi/IAccessible.sip
%Include ksoapi/_IMsoDispObj.sip
%Include ksoapi/_IMsoOleAccDispObj.sip
%Include ksoapi/_CommandBars.sip
%Include ksoapi/CommandBar.sip
%Include ksoapi/CommandBarControls.sip
%Include ksoapi/CommandBarControl.sip
%Include ksoapi/_CommandBarButton.sip
%Include ksoapi/CommandBarPopup.sip
%Include ksoapi/_CommandBarComboBox.sip
%Include ksoapi/_CommandBarActiveX.sip
%Include ksoapi/Adjustments.sip
%Include ksoapi/CalloutFormat.sip
%Include ksoapi/ColorFormat.sip
%Include ksoapi/ConnectorFormat.sip
%Include ksoapi/FillFormat.sip
%Include ksoapi/FreeformBuilder.sip
%Include ksoapi/GroupShapes.sip
%Include ksoapi/LineFormat.sip
%Include ksoapi/ShapeNode.sip
%Include ksoapi/ShapeNodes.sip
%Include ksoapi/PictureFormat.sip
%Include ksoapi/ShadowFormat.sip
%Include ksoapi/Script.sip
%Include ksoapi/Scripts.sip
%Include ksoapi/Shape.sip
%Include ksoapi/ShapeRange.sip
%Include ksoapi/Shapes.sip
%Include ksoapi/TextEffectFormat.sip
%Include ksoapi/TextFrame.sip
%Include ksoapi/ThreeDFormat.sip
%Include ksoapi/IMsoDispCagNotifySink.sip
%Include ksoapi/Balloon.sip
%Include ksoapi/BalloonCheckboxes.sip
%Include ksoapi/BalloonCheckbox.sip
%Include ksoapi/BalloonLabels.sip
%Include ksoapi/BalloonLabel.sip
%Include ksoapi/AnswerWizardFiles.sip
%Include ksoapi/AnswerWizard.sip
%Include ksoapi/Assistant.sip
%Include ksoapi/DocumentProperty.sip
%Include ksoapi/DocumentProperties.sip
%Include ksoapi/IFoundFiles.sip
%Include ksoapi/IFind.sip
%Include ksoapi/FoundFiles.sip
%Include ksoapi/PropertyTest.sip
%Include ksoapi/PropertyTests.sip
%Include ksoapi/FileSearch.sip
%Include ksoapi/COMAddIn.sip
%Include ksoapi/COMAddIns.sip
%Include ksoapi/LanguageSettings.sip
%Include ksoapi/ICommandBarsEvents.sip
%Include ksoapi/_CommandBarsEvents.sip
%Include ksoapi/ICommandBarComboBoxEvents.sip
%Include ksoapi/_CommandBarComboBoxEvents.sip
%Include ksoapi/ICommandBarButtonEvents.sip
%Include ksoapi/_CommandBarButtonEvents.sip
%Include ksoapi/WebPageFont.sip
%Include ksoapi/WebPageFonts.sip
%Include ksoapi/HTMLProjectItem.sip
%Include ksoapi/HTMLProjectItems.sip
%Include ksoapi/HTMLProject.sip
%Include ksoapi/MsoDebugOptions.sip
%Include ksoapi/FileDialogSelectedItems.sip
%Include ksoapi/FileDialogFilter.sip
%Include ksoapi/FileDialogFilters.sip
%Include ksoapi/FileDialog.sip
%Include ksoapi/SignatureSet.sip
%Include ksoapi/Signature.sip
%Include ksoapi/IMsoEnvelopeVB.sip
%Include ksoapi/IMsoEnvelopeVBEvents.sip
%Include ksoapi/FileTypes.sip
%Include ksoapi/SearchFolders.sip
%Include ksoapi/ScopeFolders.sip
%Include ksoapi/ScopeFolder.sip
%Include ksoapi/SearchScope.sip
%Include ksoapi/SearchScopes.sip
%Include ksoapi/IMsoDiagram.sip
%Include ksoapi/DiagramNodes.sip
%Include ksoapi/DiagramNodeChildren.sip
%Include ksoapi/DiagramNode.sip
%Include ksoapi/CanvasShapes.sip
%Include ksoapi/OfficeDataSourceObject.sip
%Include ksoapi/ODSOColumn.sip
%Include ksoapi/ODSOColumns.sip
%Include ksoapi/ODSOFilter.sip
%Include ksoapi/ODSOFilters.sip
%Include ksoapi/NewFile.sip
%Include ksoapi/WebComponent.sip
%Include ksoapi/WebComponentWindowExternal.sip
%Include ksoapi/WebComponentFormat.sip
%Include ksoapi/ILicWizExternal.sip
%Include ksoapi/ILicValidator.sip
%Include ksoapi/ILicAgent.sip
%Include ksoapi/IMsoEServicesDialog.sip
%Include ksoapi/WebComponentProperties.sip
%Include ksoapi/SmartDocument.sip
%Include ksoapi/SharedWorkspaceMember.sip
%Include ksoapi/SharedWorkspaceMembers.sip
%Include ksoapi/SharedWorkspaceTask.sip
%Include ksoapi/SharedWorkspaceTasks.sip
%Include ksoapi/SharedWorkspaceFile.sip
%Include ksoapi/SharedWorkspaceFiles.sip
%Include ksoapi/SharedWorkspaceFolder.sip
%Include ksoapi/SharedWorkspaceFolders.sip
%Include ksoapi/SharedWorkspaceLink.sip
%Include ksoapi/SharedWorkspaceLinks.sip
%Include ksoapi/SharedWorkspace.sip
%Include ksoapi/Sync.sip
%Include ksoapi/DocumentLibraryVersion.sip
%Include ksoapi/DocumentLibraryVersions.sip
%Include ksoapi/UserPermission.sip
%Include ksoapi/Permission.sip
%Include ksoapi/MsoDebugOptions_UTRunResult.sip
%Include ksoapi/MsoDebugOptions_UT.sip
%Include ksoapi/MsoDebugOptions_UTs.sip
%Include ksoapi/MsoDebugOptions_UTManager.sip
%Include ksoapi/MetaProperty.sip
%Include ksoapi/MetaProperties.sip
%Include ksoapi/PolicyItem.sip
%Include ksoapi/ServerPolicy.sip
%Include ksoapi/DocumentInspector.sip
%Include ksoapi/DocumentInspectors.sip
%Include ksoapi/WorkflowTask.sip
%Include ksoapi/WorkflowTasks.sip
%Include ksoapi/WorkflowTemplate.sip
%Include ksoapi/WorkflowTemplates.sip
%Include ksoapi/IDocumentInspector.sip
%Include ksoapi/SignatureSetup.sip
%Include ksoapi/SignatureInfo.sip
%Include ksoapi/SignatureProvider.sip
%Include ksoapi/CustomXMLPrefixMapping.sip
%Include ksoapi/CustomXMLPrefixMappings.sip
%Include ksoapi/CustomXMLSchema.sip
%Include ksoapi/_CustomXMLSchemaCollection.sip
%Include ksoapi/CustomXMLNodes.sip
%Include ksoapi/CustomXMLNode.sip
%Include ksoapi/CustomXMLValidationError.sip
%Include ksoapi/CustomXMLValidationErrors.sip
%Include ksoapi/_CustomXMLPart.sip
%Include ksoapi/ICustomXMLPartEvents.sip
%Include ksoapi/_CustomXMLPartEvents.sip
%Include ksoapi/_CustomXMLParts.sip
%Include ksoapi/ICustomXMLPartsEvents.sip
%Include ksoapi/_CustomXMLPartsEvents.sip
%Include ksoapi/GradientStop.sip
%Include ksoapi/GradientStops.sip
%Include ksoapi/SoftEdgeFormat.sip
%Include ksoapi/GlowFormat.sip
%Include ksoapi/ReflectionFormat.sip
%Include ksoapi/ParagraphFormat2.sip
%Include ksoapi/Font2.sip
%Include ksoapi/TextColumn2.sip
%Include ksoapi/TextRange2.sip
%Include ksoapi/TextFrame2.sip
%Include ksoapi/ThemeColor.sip
%Include ksoapi/ThemeColorScheme.sip
%Include ksoapi/ThemeFont.sip
%Include ksoapi/ThemeFonts.sip
%Include ksoapi/ThemeFontScheme.sip
%Include ksoapi/ThemeEffectScheme.sip
%Include ksoapi/OfficeTheme.sip
%Include ksoapi/_CustomTaskPane.sip
%Include ksoapi/CustomTaskPaneEvents.sip
%Include ksoapi/_CustomTaskPaneEvents.sip
%Include ksoapi/ICTPFactory.sip
%Include ksoapi/ICustomTaskPaneConsumer.sip
%Include ksoapi/IRibbonUI.sip
%Include ksoapi/IRibbonControl.sip
%Include ksoapi/IRibbonExtensibility.sip
%Include ksoapi/IAssistance.sip
%Include ksoapi/IMsoChartData.sip
%Include ksoapi/IMsoChart.sip
%Include ksoapi/IMsoCorners.sip
%Include ksoapi/IMsoLegend.sip
%Include ksoapi/IMsoBorder.sip
%Include ksoapi/IMsoWalls.sip
%Include ksoapi/IMsoFloor.sip
%Include ksoapi/IMsoPlotArea.sip
%Include ksoapi/IMsoChartArea.sip
%Include ksoapi/IMsoSeriesLines.sip
%Include ksoapi/IMsoLeaderLines.sip
%Include ksoapi/GridLines.sip
%Include ksoapi/IMsoUpBars.sip
%Include ksoapi/IMsoDownBars.sip
%Include ksoapi/IMsoInterior.sip
%Include ksoapi/ChartFillFormat.sip
%Include ksoapi/LegendEntries.sip
%Include ksoapi/ChartFont.sip
%Include ksoapi/ChartColorFormat.sip
%Include ksoapi/LegendEntry.sip
%Include ksoapi/IMsoLegendKey.sip
%Include ksoapi/SeriesCollection.sip
%Include ksoapi/IMsoSeries.sip
%Include ksoapi/IMsoErrorBars.sip
%Include ksoapi/IMsoTrendline.sip
%Include ksoapi/Trendlines.sip
%Include ksoapi/IMsoDataLabels.sip
%Include ksoapi/IMsoDataLabel.sip
%Include ksoapi/Points.sip
%Include ksoapi/ChartPoint.sip
%Include ksoapi/Axes.sip
%Include ksoapi/IMsoAxis.sip
%Include ksoapi/IMsoDataTable.sip
%Include ksoapi/IMsoChartTitle.sip
%Include ksoapi/IMsoAxisTitle.sip
%Include ksoapi/IMsoDisplayUnitLabel.sip
%Include ksoapi/IMsoTickLabels.sip
%Include ksoapi/IMsoHyperlinks.sip
%Include ksoapi/IMsoDropLines.sip
%Include ksoapi/IMsoHiLoLines.sip
%Include ksoapi/IMsoChartGroup.sip
%Include ksoapi/ChartGroups.sip
%Include ksoapi/IMsoCharacters.sip
%Include ksoapi/IMsoChartFormat.sip
%Include ksoapi/BulletFormat2.sip
%Include ksoapi/TabStops2.sip
%Include ksoapi/TabStop2.sip
%Include ksoapi/Ruler2.sip
%Include ksoapi/RulerLevels2.sip
%Include ksoapi/RulerLevel2.sip
%Include ksoapi/EncryptionProvider.sip
%Include ksoapi/IBlogExtensibility.sip
%Include ksoapi/IBlogPictureExtensibility.sip
%Include ksoapi/IConverterPreferences.sip
%Include ksoapi/IConverterApplicationPreferences.sip
%Include ksoapi/IConverterUICallback.sip
%Include ksoapi/IConverter.sip
%Include ksoapi/SmartArt.sip
%Include ksoapi/SmartArtNodes.sip
%Include ksoapi/SmartArtNode.sip
%Include ksoapi/SmartArtLayouts.sip
%Include ksoapi/SmartArtLayout.sip
%Include ksoapi/SmartArtQuickStyles.sip
%Include ksoapi/SmartArtQuickStyle.sip
%Include ksoapi/SmartArtColors.sip
%Include ksoapi/SmartArtColor.sip
%Include ksoapi/PickerField.sip
%Include ksoapi/PickerFields.sip
%Include ksoapi/PickerProperty.sip
%Include ksoapi/PickerProperties.sip
%Include ksoapi/PickerResult.sip
%Include ksoapi/PickerResults.sip
%Include ksoapi/PickerDialog.sip
%Include ksoapi/IMsoContactCard.sip
%Include ksoapi/EffectParameter.sip
%Include ksoapi/EffectParameters.sip
%Include ksoapi/PictureEffect.sip
%Include ksoapi/PictureEffects.sip
%Include ksoapi/Crop.sip
%Include ksoapi/ContactCard.sip
%Include ksoapi/FullSeriesCollection.sip
%Include ksoapi/IMsoCategory.sip
%Include ksoapi/CategoryCollection.sip

namespace ksoapi
{
    class CommandBarButton /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_ksoapi__CommandBarButton;
    %End
    };

    class CommandBarComboBox /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_ksoapi__CommandBarComboBox;
    %End
    };

    class CommandBars /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_ksoapi__CommandBars;
    %End
    };

    class CustomXMLPart /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_ksoapi__CustomXMLPart;
    %End
    };

    class CustomXMLParts /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_ksoapi__CustomXMLParts;
    %End
    };

    class CustomXMLSchemaCollection /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_ksoapi__CustomXMLSchemaCollection;
    %End
    };

    class MsoEnvelope;
};