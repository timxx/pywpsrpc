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
    struct _Presentation : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_SlideMaster(
            _Master **SlideMaster /Out/) = 0;

        virtual HRESULT get_TitleMaster(
            _Master **TitleMaster /Out/) = 0;

        virtual HRESULT get_HasTitleMaster(
            MsoTriState *HasTitleMaster /Out/) = 0;

        virtual HRESULT AddTitleMaster(
            _Master **TitleMaster /Out/) = 0;

        virtual HRESULT ApplyTemplate(
            BSTR FileName) = 0;

        virtual HRESULT get_TemplateName(
            BSTR *TemplateName /Out/) = 0;

        virtual HRESULT get_NotesMaster(
            _Master **NotesMaster /Out/) = 0;

        virtual HRESULT get_HandoutMaster(
            _Master **HandoutMaster /Out/) = 0;

        virtual HRESULT get_Slides(
            Slides **Slides /Out/) = 0;

        virtual HRESULT get_PageSetup(
            PageSetup **PageSetup /Out/) = 0;

        virtual HRESULT get_ColorSchemes(
            ColorSchemes **ColorSchemes /Out/) = 0;

        virtual HRESULT get_ExtraColors(
            ExtraColors **ExtraColors /Out/) = 0;

        virtual HRESULT get_SlideShowSettings(
            SlideShowSettings **SlideShowSettings /Out/) = 0;

        virtual HRESULT get_Fonts(
            Fonts **Fonts /Out/) = 0;

        virtual HRESULT get_Windows(
            DocumentWindows **Windows /Out/) = 0;

        virtual HRESULT get_Tags(
            Tags **Tags /Out/) = 0;

        virtual HRESULT get_DefaultShape(
            Shape **DefaultShape /Out/) = 0;

        virtual HRESULT get_BuiltInDocumentProperties(
            IDispatch **BuiltInDocumentProperties /Out/) = 0;

        virtual HRESULT get_CustomDocumentProperties(
            IDispatch **CustomDocumentProperties /Out/) = 0;

        virtual HRESULT get_VBProject(
            VBProject **VBProject /Out/) = 0;

        virtual HRESULT get_ReadOnly(
            MsoTriState *ReadOnly /Out/) = 0;

        virtual HRESULT get_FullName(
            BSTR *FullName /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *Path /Out/) = 0;

        virtual HRESULT get_Saved(
            MsoTriState *Saved /Out/) = 0;

        virtual HRESULT put_Saved(
            MsoTriState Saved) = 0;

        virtual HRESULT get_LayoutDirection(
            PpDirection *LayoutDirection /Out/) = 0;

        virtual HRESULT put_LayoutDirection(
            PpDirection LayoutDirection) = 0;

        virtual HRESULT NewWindow(
            DocumentWindow **NewWindow /Out/) = 0;

        virtual HRESULT FollowHyperlink(
            BSTR Address,
            BSTR SubAddress = 0,
            VARIANT_BOOL NewWindow = 0,
            VARIANT_BOOL AddHistory = -1,
            BSTR ExtraInfo = 0,
            MsoExtraInfoMethod Method = wppapi::msoMethodGet,
            BSTR HeaderInfo = 0) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT Unused() = 0;

        virtual HRESULT get_PrintOptions(
            PrintOptions **PrintOptions /Out/) = 0;

        virtual HRESULT PrintOut(
            int From = -1,
            int To = -1,
            BSTR PrintToFile = 0,
            int Copies = 0,
            MsoTriState Collate = (wppapi::MsoTriState)-99) = 0;

        virtual HRESULT Save() = 0;

        virtual HRESULT SaveAs(
            BSTR FileName,
            PpSaveAsFileType FileFormat = wppapi::ppSaveAsDefault,
            MsoTriState EmbedTrueTypeFonts = wppapi::msoTriStateMixed) = 0;

        virtual HRESULT SaveCopyAs(
            BSTR FileName,
            PpSaveAsFileType FileFormat = wppapi::ppSaveAsDefault,
            MsoTriState EmbedTrueTypeFonts = wppapi::msoTriStateMixed) = 0;

        virtual HRESULT Export(
            BSTR Path,
            BSTR FilterName,
            int ScaleWidth = 0,
            int ScaleHeight = 0) = 0;

        virtual HRESULT Close() = 0;

        virtual HRESULT SetUndoText(
            BSTR Text) = 0;

        virtual HRESULT get_Container(
            IDispatch **Container /Out/) = 0;

        virtual HRESULT get_DisplayComments(
            MsoTriState *DisplayComments /Out/) = 0;

        virtual HRESULT put_DisplayComments(
            MsoTriState DisplayComments) = 0;

        virtual HRESULT get_FarEastLineBreakLevel(
            PpFarEastLineBreakLevel *FarEastLineBreakLevel /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLevel(
            PpFarEastLineBreakLevel FarEastLineBreakLevel) = 0;

        virtual HRESULT get_NoLineBreakBefore(
            BSTR *NoLineBreakBefore /Out/) = 0;

        virtual HRESULT put_NoLineBreakBefore(
            BSTR NoLineBreakBefore) = 0;

        virtual HRESULT get_NoLineBreakAfter(
            BSTR *NoLineBreakAfter /Out/) = 0;

        virtual HRESULT put_NoLineBreakAfter(
            BSTR NoLineBreakAfter) = 0;

        virtual HRESULT UpdateLinks() = 0;

        virtual HRESULT get_SlideShowWindow(
            SlideShowWindow **SlideShowWindow /Out/) = 0;

        virtual HRESULT get_FarEastLineBreakLanguage(
            MsoFarEastLineBreakLanguageID *FarEastLineBreakLanguage /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLanguage(
            MsoFarEastLineBreakLanguageID FarEastLineBreakLanguage) = 0;

        virtual HRESULT WebPagePreview() = 0;

        virtual HRESULT get_DefaultLanguageID(
            MsoLanguageID *DefaultLanguageID /Out/) = 0;

        virtual HRESULT put_DefaultLanguageID(
            MsoLanguageID DefaultLanguageID) = 0;

        virtual HRESULT get_CommandBars(
            ksoapi::CommandBars **CommandBars /Out/) = 0;

        virtual HRESULT get_PublishObjects(
            PublishObjects **PublishObjects /Out/) = 0;

        virtual HRESULT get_WebOptions(
            WebOptions **WebOptions /Out/) = 0;

        virtual HRESULT get_HTMLProject(
            ksoapi::HTMLProject **HTMLProject /Out/) = 0;

        virtual HRESULT ReloadAs(
            MsoEncoding cp) = 0;

        virtual HRESULT MakeIntoTemplate(
            MsoTriState IsDesignTemplate) = 0;

        virtual HRESULT get_EnvelopeVisible(
            MsoTriState *EnvelopeVisible /Out/) = 0;

        virtual HRESULT put_EnvelopeVisible(
            MsoTriState EnvelopeVisible) = 0;

        virtual HRESULT sblt(
            BSTR s) = 0;

        virtual HRESULT get_VBASigned(
            MsoTriState *VBASigned /Out/) = 0;

        virtual HRESULT get_SnapToGrid(
            MsoTriState *SnapToGrid /Out/) = 0;

        virtual HRESULT put_SnapToGrid(
            MsoTriState SnapToGrid) = 0;

        virtual HRESULT get_GridDistance(
            single *GridDistance /Out/) = 0;

        virtual HRESULT put_GridDistance(
            single GridDistance) = 0;

        virtual HRESULT get_Designs(
            Designs **Designs /Out/) = 0;

        virtual HRESULT Merge(
            BSTR Path) = 0;

        virtual HRESULT CheckIn(
            VARIANT_BOOL SaveChanges,
            VARIANT Comments,
            VARIANT MakePublic) = 0;

        virtual HRESULT CanCheckIn(
            VARIANT_BOOL *CanCheckIn /Out/) = 0;

        virtual HRESULT get_Signatures(
            ksoapi::SignatureSet **Signatures /Out/) = 0;

        virtual HRESULT get_RemovePersonalInformation(
            MsoTriState *RemovePersonalInformation /Out/) = 0;

        virtual HRESULT put_RemovePersonalInformation(
            MsoTriState RemovePersonalInformation) = 0;

        virtual HRESULT SendForReview(
            BSTR Recipients,
            BSTR Subject,
            VARIANT_BOOL ShowMessage,
            VARIANT IncludeAttachment) = 0;

        virtual HRESULT ReplyWithChanges(
            VARIANT_BOOL ShowMessage = -1) = 0;

        virtual HRESULT EndReview() = 0;

        virtual HRESULT get_HasRevisionInfo(
            PpRevisionInfo *HasRevisionInfo /Out/) = 0;

        virtual HRESULT AddBaseline(
            BSTR FileName = 0) = 0;

        virtual HRESULT RemoveBaseline() = 0;

        virtual HRESULT get_PasswordEncryptionProvider(
            BSTR *PasswordEncryptionProvider /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionAlgorithm(
            BSTR *PasswordEncryptionAlgorithm /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionKeyLength(
            int *PasswordEncryptionKeyLength /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionFileProperties(
            VARIANT_BOOL *PasswordEncryptionFileProperties /Out/) = 0;

        virtual HRESULT SetPasswordEncryptionOptions(
            BSTR PasswordEncryptionProvider,
            BSTR PasswordEncryptionAlgorithm,
            int PasswordEncryptionKeyLength,
            VARIANT_BOOL PasswordEncryptionFileProperties) = 0;

        virtual HRESULT get_Password(
            BSTR *Password /Out/) = 0;

        virtual HRESULT put_Password(
            BSTR Password) = 0;

        virtual HRESULT get_WritePassword(
            BSTR *WritePassword /Out/) = 0;

        virtual HRESULT put_WritePassword(
            BSTR WritePassword) = 0;

        virtual HRESULT get_Permission(
            ksoapi::Permission **Permission /Out/) = 0;

        virtual HRESULT get_SharedWorkspace(
            ksoapi::SharedWorkspace **SharedWorkspace /Out/) = 0;

        virtual HRESULT get_Sync(
            ksoapi::Sync **Sync /Out/) = 0;

        virtual HRESULT SendFaxOverInternet(
            BSTR Recipients = 0,
            BSTR Subject = 0,
            VARIANT_BOOL ShowMessage = 0) = 0;

        virtual HRESULT get_DocumentLibraryVersions(
            ksoapi::DocumentLibraryVersions **DocumentLibraryVersions /Out/) = 0;

        virtual HRESULT get_ContentTypeProperties(
            ksoapi::MetaProperties **ContentTypeProperties /Out/) = 0;

        virtual HRESULT get_SectionCount(
            int *SectionCount /Out/) = 0;

        virtual HRESULT get_HasSections(
            VARIANT_BOOL *HasSections /Out/) = 0;

        virtual HRESULT NewSectionAfter(
            int Index,
            VARIANT_BOOL AfterSlide,
            BSTR sectionTitle,
            int *newSectionIndex /Out/) = 0;

        virtual HRESULT DeleteSection(
            int Index) = 0;

        virtual HRESULT DisableSections() = 0;

        virtual HRESULT sectionTitle(
            int Index,
            BSTR *sectionTitle /Out/) = 0;

        virtual HRESULT RemoveDocumentInformation(
            PpRemoveDocInfoType Type) = 0;

        virtual HRESULT CheckInWithVersion(
            VARIANT_BOOL SaveChanges,
            VARIANT Comments,
            VARIANT MakePublic,
            VARIANT VersionType) = 0;

        virtual HRESULT ExportAsFixedFormat(
            BSTR Path,
            PpFixedFormatType FixedFormatType,
            PpFixedFormatIntent Intent,
            MsoTriState FrameSlides,
            PpPrintHandoutOrder HandoutOrder,
            PpPrintOutputType OutputType,
            MsoTriState PrintHiddenSlides,
            PrintRange *PrintRange,
            PpPrintRangeType RangeType,
            BSTR SlideShowName,
            VARIANT_BOOL IncludeDocProperties,
            VARIANT_BOOL KeepIRMSettings,
            VARIANT_BOOL DocStructureTags,
            VARIANT_BOOL BitmapMissingFonts,
            VARIANT_BOOL UseISO19005_1,
            VARIANT ExternalExporter) = 0;

        virtual HRESULT get_ServerPolicy(
            ksoapi::ServerPolicy **ServerPolicy /Out/) = 0;

        virtual HRESULT GetWorkflowTasks(
            ksoapi::WorkflowTasks **GetWorkflowTasks /Out/) = 0;

        virtual HRESULT GetWorkflowTemplates(
            ksoapi::WorkflowTemplates **GetWorkflowTemplates /Out/) = 0;

        virtual HRESULT LockServerFile() = 0;

        virtual HRESULT get_DocumentInspectors(
            ksoapi::DocumentInspectors **DocumentInspectors /Out/) = 0;

        virtual HRESULT get_HasVBProject(
            VARIANT_BOOL *HasVBProject /Out/) = 0;

        virtual HRESULT get_CustomXMLParts(
            ksoapi::CustomXMLParts **CustomXMLParts /Out/) = 0;

        virtual HRESULT get_Final(
            VARIANT_BOOL *Final /Out/) = 0;

        virtual HRESULT put_Final(
            VARIANT_BOOL Final) = 0;

        virtual HRESULT ApplyTheme(
            BSTR themeName) = 0;

        virtual HRESULT get_CustomerData(
            CustomerData **CustomerData /Out/) = 0;

        virtual HRESULT get_Research(
            Research **Research /Out/) = 0;

        virtual HRESULT PublishSlides(
            BSTR SlideLibraryUrl,
            VARIANT_BOOL Overwrite = 0,
            VARIANT_BOOL UseSlideOrder = 0) = 0;

        virtual HRESULT get_EncryptionProvider(
            BSTR *EncryptionProvider /Out/) = 0;

        virtual HRESULT put_EncryptionProvider(
            BSTR EncryptionProvider) = 0;

        virtual HRESULT Convert() = 0;

        virtual HRESULT get_SectionProperties(
            SectionProperties **SectionProperties /Out/) = 0;

        virtual HRESULT get_Coauthoring(
            Coauthoring **Coauthoring /Out/) = 0;

        virtual HRESULT MergeWithBaseline(
            BSTR withPresentation,
            BSTR baselinePresentation) = 0;

        virtual HRESULT get_InMergeMode(
            VARIANT_BOOL *InMergeMode /Out/) = 0;

        virtual HRESULT AcceptAll() = 0;

        virtual HRESULT RejectAll() = 0;

        virtual HRESULT EnsureAllMediaUpgraded() = 0;

        virtual HRESULT get_Broadcast(
            Broadcast **Broadcast /Out/) = 0;

        virtual HRESULT get_HasNotesMaster(
            VARIANT_BOOL *HasNotesMaster /Out/) = 0;

        virtual HRESULT get_HasHandoutMaster(
            VARIANT_BOOL *HasHandoutMaster /Out/) = 0;

        virtual HRESULT Convert2(
            BSTR FileName) = 0;

        virtual HRESULT get_CreateVideoStatus(
            PpMediaTaskStatus *CreateVideoStatus /Out/) = 0;

        virtual HRESULT CreateVideo(
            BSTR FileName,
            VARIANT_BOOL UseTimingsAndNarrations = -1,
            int DefaultSlideDuration = 5,
            int VertResolution = 720,
            int FramesPerSecond = 30,
            int Quality = 85) = 0;

        virtual HRESULT ApplyTemplate2(
            BSTR FileName,
            BSTR VariantGUID) = 0;

        virtual HRESULT get_ChartDataPointTrack(
            VARIANT_BOOL *pfChartDataPointTrack /Out/) = 0;

        virtual HRESULT put_ChartDataPointTrack(
            VARIANT_BOOL pfChartDataPointTrack) = 0;

        virtual HRESULT ExportAsFixedFormat2(
            BSTR Path,
            PpFixedFormatType FixedFormatType,
            PpFixedFormatIntent Intent,
            MsoTriState FrameSlides,
            PpPrintHandoutOrder HandoutOrder,
            PpPrintOutputType OutputType,
            MsoTriState PrintHiddenSlides,
            PrintRange *PrintRange,
            PpPrintRangeType RangeType,
            BSTR SlideShowName,
            VARIANT_BOOL IncludeDocProperties,
            VARIANT_BOOL KeepIRMSettings,
            VARIANT_BOOL DocStructureTags,
            VARIANT_BOOL BitmapMissingFonts,
            VARIANT_BOOL UseISO19005_1,
            VARIANT_BOOL IncludeMarkup,
            VARIANT ExternalExporter) = 0;

        virtual HRESULT get_Guides(
            Guides **Guides /Out/) = 0;

    };
};
