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
            ksoapi::DocumentProperties **BuiltInDocumentProperties /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_BuiltInDocumentProperties((IDispatch **)&a0);
        %End

        virtual HRESULT get_CustomDocumentProperties(
            ksoapi::DocumentProperties **CustomDocumentProperties /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_CustomDocumentProperties((IDispatch **)&a0);
        %End

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
            VARIANT_BOOL NewWindow = VARIANT_FALSE,
            VARIANT_BOOL AddHistory = VARIANT_TRUE,
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
            VARIANT_BOOL SaveChanges = VARIANT_FALSE,
            VARIANT Comments = argMissing2(),
            VARIANT MakePublic = argMissing2()) = 0;

        virtual HRESULT CanCheckIn(
            VARIANT_BOOL *CanCheckIn /Out/) = 0;

        virtual HRESULT get_Signatures(
            ksoapi::SignatureSet **Signatures /Out/) = 0;

        virtual HRESULT get_RemovePersonalInformation(
            MsoTriState *RemovePersonalInformation /Out/) = 0;

        virtual HRESULT put_RemovePersonalInformation(
            MsoTriState RemovePersonalInformation) = 0;

        virtual HRESULT SendForReview(
            BSTR Recipients = 0,
            BSTR Subject = 0,
            VARIANT_BOOL ShowMessage = VARIANT_FALSE,
            VARIANT IncludeAttachment = argMissing2()) = 0;

        virtual HRESULT ReplyWithChanges(
            VARIANT_BOOL ShowMessage = VARIANT_TRUE) = 0;

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
            VARIANT_BOOL ShowMessage = VARIANT_FALSE) = 0;

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
            VARIANT_BOOL SaveChanges = VARIANT_FALSE,
            VARIANT Comments = argMissing2(),
            VARIANT MakePublic = argMissing2(),
            VARIANT VersionType = argMissing2()) = 0;

        virtual HRESULT ExportAsFixedFormat(
            BSTR Path,
            PpFixedFormatType FixedFormatType,
            PpFixedFormatIntent Intent = wppapi::ppFixedFormatIntentPrint,
            MsoTriState FrameSlides = wppapi::msoTrue,
            PpPrintHandoutOrder HandoutOrder = wppapi::ppPrintHandoutVerticalFirst,
            PpPrintOutputType OutputType = wppapi::ppPrintOutputSlides,
            MsoTriState PrintHiddenSlides = wppapi::msoFalse,
            PrintRange *PrintRange = 0,
            PpPrintRangeType RangeType = wppapi::ppPrintAll,
            BSTR SlideShowName = 0,
            VARIANT_BOOL IncludeDocProperties = VARIANT_FALSE,
            VARIANT_BOOL KeepIRMSettings = VARIANT_TRUE,
            VARIANT_BOOL DocStructureTags = VARIANT_TRUE,
            VARIANT_BOOL BitmapMissingFonts = VARIANT_TRUE,
            VARIANT_BOOL UseISO19005_1 = VARIANT_FALSE,
            VARIANT ExternalExporter = argMissing2()) = 0;

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
            VARIANT_BOOL Overwrite = VARIANT_FALSE,
            VARIANT_BOOL UseSlideOrder = VARIANT_FALSE) = 0;

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
            PpFixedFormatIntent Intent = wppapi::ppFixedFormatIntentPrint,
            MsoTriState FrameSlides = wppapi::msoTrue,
            PpPrintHandoutOrder HandoutOrder = wppapi::ppPrintHandoutVerticalFirst,
            PpPrintOutputType OutputType = wppapi::ppPrintOutputSlides,
            MsoTriState PrintHiddenSlides = wppapi::msoFalse,
            PrintRange *PrintRange = 0,
            PpPrintRangeType RangeType = wppapi::ppPrintAll,
            BSTR SlideShowName = 0,
            VARIANT_BOOL IncludeDocProperties = VARIANT_FALSE,
            VARIANT_BOOL KeepIRMSettings = VARIANT_TRUE,
            VARIANT_BOOL DocStructureTags = VARIANT_TRUE,
            VARIANT_BOOL BitmapMissingFonts = VARIANT_TRUE,
            VARIANT_BOOL UseISO19005_1 = VARIANT_FALSE,
            VARIANT_BOOL IncludeMarkup = VARIANT_FALSE,
            VARIANT ExternalExporter = argMissing2()) = 0;

        virtual HRESULT get_Guides(
            Guides **Guides /Out/) = 0;

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
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

        _Master* getSlideMaster();
        %MethodCode
            wppapi::_Master *prop = nullptr;
            HRESULT hr = sipCpp->get_SlideMaster(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideMaster()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideMaster, get=getSlideMaster)

        _Master* getTitleMaster();
        %MethodCode
            wppapi::_Master *prop = nullptr;
            HRESULT hr = sipCpp->get_TitleMaster(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TitleMaster()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TitleMaster, get=getTitleMaster)

        MsoTriState getHasTitleMaster();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasTitleMaster(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasTitleMaster()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasTitleMaster, get=getHasTitleMaster)

        BSTR getTemplateName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TemplateName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TemplateName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TemplateName, get=getTemplateName)

        _Master* getNotesMaster();
        %MethodCode
            wppapi::_Master *prop = nullptr;
            HRESULT hr = sipCpp->get_NotesMaster(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NotesMaster()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NotesMaster, get=getNotesMaster)

        _Master* getHandoutMaster();
        %MethodCode
            wppapi::_Master *prop = nullptr;
            HRESULT hr = sipCpp->get_HandoutMaster(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HandoutMaster()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HandoutMaster, get=getHandoutMaster)

        Slides* getSlides();
        %MethodCode
            wppapi::Slides *prop = nullptr;
            HRESULT hr = sipCpp->get_Slides(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Slides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Slides, get=getSlides)

        PageSetup* getPageSetup();
        %MethodCode
            wppapi::PageSetup *prop = nullptr;
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

        ColorSchemes* getColorSchemes();
        %MethodCode
            wppapi::ColorSchemes *prop = nullptr;
            HRESULT hr = sipCpp->get_ColorSchemes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorSchemes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColorSchemes, get=getColorSchemes)

        ExtraColors* getExtraColors();
        %MethodCode
            wppapi::ExtraColors *prop = nullptr;
            HRESULT hr = sipCpp->get_ExtraColors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExtraColors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ExtraColors, get=getExtraColors)

        SlideShowSettings* getSlideShowSettings();
        %MethodCode
            wppapi::SlideShowSettings *prop = nullptr;
            HRESULT hr = sipCpp->get_SlideShowSettings(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideShowSettings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideShowSettings, get=getSlideShowSettings)

        Fonts* getFonts();
        %MethodCode
            wppapi::Fonts *prop = nullptr;
            HRESULT hr = sipCpp->get_Fonts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fonts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Fonts, get=getFonts)

        DocumentWindows* getWindows();
        %MethodCode
            wppapi::DocumentWindows *prop = nullptr;
            HRESULT hr = sipCpp->get_Windows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Windows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Windows, get=getWindows)

        Tags* getTags();
        %MethodCode
            wppapi::Tags *prop = nullptr;
            HRESULT hr = sipCpp->get_Tags(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tags, get=getTags)

        Shape* getDefaultShape();
        %MethodCode
            wppapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_DefaultShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DefaultShape, get=getDefaultShape)

        ksoapi::DocumentProperties* getBuiltInDocumentProperties();
        %MethodCode
            ksoapi::DocumentProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_BuiltInDocumentProperties((IDispatch **)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltInDocumentProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuiltInDocumentProperties, get=getBuiltInDocumentProperties)

        ksoapi::DocumentProperties* getCustomDocumentProperties();
        %MethodCode
            ksoapi::DocumentProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomDocumentProperties((IDispatch **)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomDocumentProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomDocumentProperties, get=getCustomDocumentProperties)

        VBProject* getVBProject();
        %MethodCode
            wppapi::VBProject *prop = nullptr;
            HRESULT hr = sipCpp->get_VBProject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VBProject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VBProject, get=getVBProject)

        MsoTriState getReadOnly();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ReadOnly(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReadOnly, get=getReadOnly)

        BSTR getFullName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FullName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FullName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FullName, get=getFullName)

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

        %Property(name=Name, get=getName)

        BSTR getPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Path(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Path()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Path, get=getPath)

        MsoTriState getSaved();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Saved(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Saved()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaved(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Saved(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Saved()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Saved, get=getSaved, set=setSaved)

        PpDirection getLayoutDirection();
        %MethodCode
            wppapi::PpDirection prop = (wppapi::PpDirection)0;
            HRESULT hr = sipCpp->get_LayoutDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LayoutDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayoutDirection(PpDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LayoutDirection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LayoutDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LayoutDirection, get=getLayoutDirection, set=setLayoutDirection)

        PrintOptions* getPrintOptions();
        %MethodCode
            wppapi::PrintOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_PrintOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrintOptions, get=getPrintOptions)

        IDispatch* getContainer();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Container(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Container()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Container, get=getContainer)

        MsoTriState getDisplayComments();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_DisplayComments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayComments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayComments(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayComments(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayComments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayComments, get=getDisplayComments, set=setDisplayComments)

        PpFarEastLineBreakLevel getFarEastLineBreakLevel();
        %MethodCode
            wppapi::PpFarEastLineBreakLevel prop = (wppapi::PpFarEastLineBreakLevel)0;
            HRESULT hr = sipCpp->get_FarEastLineBreakLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FarEastLineBreakLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFarEastLineBreakLevel(PpFarEastLineBreakLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FarEastLineBreakLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FarEastLineBreakLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FarEastLineBreakLevel, get=getFarEastLineBreakLevel, set=setFarEastLineBreakLevel)

        BSTR getNoLineBreakBefore();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NoLineBreakBefore(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoLineBreakBefore()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoLineBreakBefore(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoLineBreakBefore(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoLineBreakBefore()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoLineBreakBefore, get=getNoLineBreakBefore, set=setNoLineBreakBefore)

        BSTR getNoLineBreakAfter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NoLineBreakAfter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoLineBreakAfter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoLineBreakAfter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoLineBreakAfter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoLineBreakAfter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoLineBreakAfter, get=getNoLineBreakAfter, set=setNoLineBreakAfter)

        SlideShowWindow* getSlideShowWindow();
        %MethodCode
            wppapi::SlideShowWindow *prop = nullptr;
            HRESULT hr = sipCpp->get_SlideShowWindow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideShowWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideShowWindow, get=getSlideShowWindow)

        MsoFarEastLineBreakLanguageID getFarEastLineBreakLanguage();
        %MethodCode
            wppapi::MsoFarEastLineBreakLanguageID prop = (wppapi::MsoFarEastLineBreakLanguageID)0;
            HRESULT hr = sipCpp->get_FarEastLineBreakLanguage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FarEastLineBreakLanguage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFarEastLineBreakLanguage(MsoFarEastLineBreakLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FarEastLineBreakLanguage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FarEastLineBreakLanguage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FarEastLineBreakLanguage, get=getFarEastLineBreakLanguage, set=setFarEastLineBreakLanguage)

        MsoLanguageID getDefaultLanguageID();
        %MethodCode
            wppapi::MsoLanguageID prop = (wppapi::MsoLanguageID)0;
            HRESULT hr = sipCpp->get_DefaultLanguageID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultLanguageID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultLanguageID(MsoLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultLanguageID(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultLanguageID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultLanguageID, get=getDefaultLanguageID, set=setDefaultLanguageID)

        ksoapi::CommandBars* getCommandBars();
        %MethodCode
            ksoapi::CommandBars *prop = nullptr;
            HRESULT hr = sipCpp->get_CommandBars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CommandBars, get=getCommandBars)

        PublishObjects* getPublishObjects();
        %MethodCode
            wppapi::PublishObjects *prop = nullptr;
            HRESULT hr = sipCpp->get_PublishObjects(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PublishObjects()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PublishObjects, get=getPublishObjects)

        WebOptions* getWebOptions();
        %MethodCode
            wppapi::WebOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_WebOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WebOptions, get=getWebOptions)

        ksoapi::HTMLProject* getHTMLProject();
        %MethodCode
            ksoapi::HTMLProject *prop = nullptr;
            HRESULT hr = sipCpp->get_HTMLProject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTMLProject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HTMLProject, get=getHTMLProject)

        MsoTriState getEnvelopeVisible();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_EnvelopeVisible(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnvelopeVisible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnvelopeVisible(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnvelopeVisible(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnvelopeVisible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnvelopeVisible, get=getEnvelopeVisible, set=setEnvelopeVisible)

        MsoTriState getVBASigned();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_VBASigned(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VBASigned()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VBASigned, get=getVBASigned)

        MsoTriState getSnapToGrid();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_SnapToGrid(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SnapToGrid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSnapToGrid(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SnapToGrid(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SnapToGrid()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SnapToGrid, get=getSnapToGrid, set=setSnapToGrid)

        single getGridDistance();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_GridDistance(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridDistance()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridDistance(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridDistance(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridDistance()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridDistance, get=getGridDistance, set=setGridDistance)

        Designs* getDesigns();
        %MethodCode
            wppapi::Designs *prop = nullptr;
            HRESULT hr = sipCpp->get_Designs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Designs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Designs, get=getDesigns)

        ksoapi::SignatureSet* getSignatures();
        %MethodCode
            ksoapi::SignatureSet *prop = nullptr;
            HRESULT hr = sipCpp->get_Signatures(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Signatures()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Signatures, get=getSignatures)

        MsoTriState getRemovePersonalInformation();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_RemovePersonalInformation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RemovePersonalInformation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRemovePersonalInformation(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RemovePersonalInformation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RemovePersonalInformation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RemovePersonalInformation, get=getRemovePersonalInformation, set=setRemovePersonalInformation)

        PpRevisionInfo getHasRevisionInfo();
        %MethodCode
            wppapi::PpRevisionInfo prop = (wppapi::PpRevisionInfo)0;
            HRESULT hr = sipCpp->get_HasRevisionInfo(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasRevisionInfo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasRevisionInfo, get=getHasRevisionInfo)

        BSTR getPasswordEncryptionProvider();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PasswordEncryptionProvider(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasswordEncryptionProvider()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PasswordEncryptionProvider, get=getPasswordEncryptionProvider)

        BSTR getPasswordEncryptionAlgorithm();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PasswordEncryptionAlgorithm(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasswordEncryptionAlgorithm()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PasswordEncryptionAlgorithm, get=getPasswordEncryptionAlgorithm)

        int getPasswordEncryptionKeyLength();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_PasswordEncryptionKeyLength(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasswordEncryptionKeyLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PasswordEncryptionKeyLength, get=getPasswordEncryptionKeyLength)

        VARIANT_BOOL getPasswordEncryptionFileProperties();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasswordEncryptionFileProperties(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasswordEncryptionFileProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PasswordEncryptionFileProperties, get=getPasswordEncryptionFileProperties)

        BSTR getPassword();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Password(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Password()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPassword(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Password(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Password()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Password, get=getPassword, set=setPassword)

        BSTR getWritePassword();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_WritePassword(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WritePassword()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWritePassword(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WritePassword(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WritePassword()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WritePassword, get=getWritePassword, set=setWritePassword)

        ksoapi::Permission* getPermission();
        %MethodCode
            ksoapi::Permission *prop = nullptr;
            HRESULT hr = sipCpp->get_Permission(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Permission()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Permission, get=getPermission)

        ksoapi::SharedWorkspace* getSharedWorkspace();
        %MethodCode
            ksoapi::SharedWorkspace *prop = nullptr;
            HRESULT hr = sipCpp->get_SharedWorkspace(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SharedWorkspace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SharedWorkspace, get=getSharedWorkspace)

        ksoapi::Sync* getSync();
        %MethodCode
            ksoapi::Sync *prop = nullptr;
            HRESULT hr = sipCpp->get_Sync(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sync()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sync, get=getSync)

        ksoapi::DocumentLibraryVersions* getDocumentLibraryVersions();
        %MethodCode
            ksoapi::DocumentLibraryVersions *prop = nullptr;
            HRESULT hr = sipCpp->get_DocumentLibraryVersions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentLibraryVersions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DocumentLibraryVersions, get=getDocumentLibraryVersions)

        ksoapi::MetaProperties* getContentTypeProperties();
        %MethodCode
            ksoapi::MetaProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_ContentTypeProperties(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContentTypeProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContentTypeProperties, get=getContentTypeProperties)

        int getSectionCount();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_SectionCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SectionCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SectionCount, get=getSectionCount)

        VARIANT_BOOL getHasSections();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasSections(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasSections()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasSections, get=getHasSections)

        ksoapi::ServerPolicy* getServerPolicy();
        %MethodCode
            ksoapi::ServerPolicy *prop = nullptr;
            HRESULT hr = sipCpp->get_ServerPolicy(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerPolicy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ServerPolicy, get=getServerPolicy)

        ksoapi::DocumentInspectors* getDocumentInspectors();
        %MethodCode
            ksoapi::DocumentInspectors *prop = nullptr;
            HRESULT hr = sipCpp->get_DocumentInspectors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentInspectors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DocumentInspectors, get=getDocumentInspectors)

        VARIANT_BOOL getHasVBProject();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasVBProject(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasVBProject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasVBProject, get=getHasVBProject)

        ksoapi::CustomXMLParts* getCustomXMLParts();
        %MethodCode
            ksoapi::CustomXMLParts *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomXMLParts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomXMLParts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomXMLParts, get=getCustomXMLParts)

        VARIANT_BOOL getFinal();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Final(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Final()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFinal(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Final(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Final()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Final, get=getFinal, set=setFinal)

        CustomerData* getCustomerData();
        %MethodCode
            wppapi::CustomerData *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomerData(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomerData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomerData, get=getCustomerData)

        Research* getResearch();
        %MethodCode
            wppapi::Research *prop = nullptr;
            HRESULT hr = sipCpp->get_Research(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Research()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Research, get=getResearch)

        BSTR getEncryptionProvider();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_EncryptionProvider(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EncryptionProvider()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEncryptionProvider(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EncryptionProvider(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EncryptionProvider()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EncryptionProvider, get=getEncryptionProvider, set=setEncryptionProvider)

        SectionProperties* getSectionProperties();
        %MethodCode
            wppapi::SectionProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_SectionProperties(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SectionProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SectionProperties, get=getSectionProperties)

        Coauthoring* getCoauthoring();
        %MethodCode
            wppapi::Coauthoring *prop = nullptr;
            HRESULT hr = sipCpp->get_Coauthoring(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Coauthoring()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Coauthoring, get=getCoauthoring)

        VARIANT_BOOL getInMergeMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InMergeMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InMergeMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InMergeMode, get=getInMergeMode)

        Broadcast* getBroadcast();
        %MethodCode
            wppapi::Broadcast *prop = nullptr;
            HRESULT hr = sipCpp->get_Broadcast(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Broadcast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Broadcast, get=getBroadcast)

        VARIANT_BOOL getHasNotesMaster();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasNotesMaster(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasNotesMaster()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasNotesMaster, get=getHasNotesMaster)

        VARIANT_BOOL getHasHandoutMaster();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasHandoutMaster(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasHandoutMaster()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasHandoutMaster, get=getHasHandoutMaster)

        PpMediaTaskStatus getCreateVideoStatus();
        %MethodCode
            wppapi::PpMediaTaskStatus prop = (wppapi::PpMediaTaskStatus)0;
            HRESULT hr = sipCpp->get_CreateVideoStatus(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CreateVideoStatus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CreateVideoStatus, get=getCreateVideoStatus)

        VARIANT_BOOL getChartDataPointTrack();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ChartDataPointTrack(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartDataPointTrack()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartDataPointTrack(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartDataPointTrack(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartDataPointTrack()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartDataPointTrack, get=getChartDataPointTrack, set=setChartDataPointTrack)

        Guides* getGuides();
        %MethodCode
            wppapi::Guides *prop = nullptr;
            HRESULT hr = sipCpp->get_Guides(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Guides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Guides, get=getGuides)
    };
};
