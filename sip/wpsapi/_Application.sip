%Include oaidl.sip
%Include _Application_extend.sip
%Include enums.sip

namespace wpsapi {
    typedef float single;
};

namespace wpsapi {
struct _Application : public IDispatch, public wpsapi::_Application_extend /Abstract/
{
    %TypeHeaderCode
        #include <QString>
        #include <wps/wpsapi.h>
    %End
public:
    //virtual HRESULT get_Application(Application **prop) = 0;
    virtual HRESULT get_Creator(long *prop) = 0;
    virtual HRESULT get_Parent(IDispatch **prop) = 0;
    virtual HRESULT get_Name(BSTR *prop /Out/) = 0;
/*
    virtual HRESULT get_Documents(Documents **prop) = 0;
    virtual HRESULT get_Windows(Windows **prop) = 0;
    virtual HRESULT get_ActiveDocument(Document **prop) = 0;
    virtual HRESULT get_ActiveWindow(Window **prop) = 0;
    virtual HRESULT get_Selection(Selection **prop) = 0;
    virtual HRESULT get_WordBasic(IDispatch **prop) = 0;
    virtual HRESULT get_RecentFiles(RecentFiles **prop) = 0;
    virtual HRESULT get_NormalTemplate(Template **prop) = 0;
    virtual HRESULT get_System(System **prop) = 0;
    virtual HRESULT get_AutoCorrect(AutoCorrect **prop) = 0;
    virtual HRESULT get_FontNames(FontNames **prop) = 0;
    virtual HRESULT get_LandscapeFontNames(FontNames **prop) = 0;
    virtual HRESULT get_PortraitFontNames(FontNames **prop) = 0;
    virtual HRESULT get_Languages(Languages **prop) = 0;
    virtual HRESULT get_Assistant(Assistant **prop) = 0;
    virtual HRESULT get_Browser(Browser **prop) = 0;
    virtual HRESULT get_FileConverters(FileConverters **prop) = 0;
    virtual HRESULT get_MailingLabel(MailingLabel **prop) = 0;
    virtual HRESULT get_Dialogs(Dialogs **prop) = 0;
    virtual HRESULT get_CaptionLabels(CaptionLabels **prop) = 0;
    virtual HRESULT get_AutoCaptions(AutoCaptions **prop) = 0;
    virtual HRESULT get_AddIns(AddIns **prop) = 0;
*/
    virtual HRESULT get_Visible(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_Visible(VARIANT_BOOL prop) = 0;
    virtual HRESULT get_Version(BSTR *prop /Out/) = 0;
    virtual HRESULT get_ScreenUpdating(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_ScreenUpdating(VARIANT_BOOL prop) = 0;
    virtual HRESULT get_PrintPreview(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_PrintPreview(VARIANT_BOOL prop) = 0;
/*
    virtual HRESULT get_Tasks(Tasks **prop) = 0;
*/
    virtual HRESULT get_DisplayStatusBar(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_DisplayStatusBar(VARIANT_BOOL prop) = 0;
    virtual HRESULT get_SpecialMode(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT get_UsableWidth(long *prop /Out/) = 0;
    virtual HRESULT get_UsableHeight(long *prop /Out/) = 0;
    virtual HRESULT get_MathCoprocessorAvailable(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT get_MouseAvailable(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT get_International(WdInternationalIndex Index, VARIANT *prop) = 0;
    virtual HRESULT get_Build(BSTR *prop /Out/) = 0;
    virtual HRESULT get_CapsLock(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT get_NumLock(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT get_UserName(BSTR *prop /Out/) = 0;
    virtual HRESULT put_UserName(BSTR prop) = 0;
    virtual HRESULT get_UserInitials(BSTR *prop /Out/) = 0;
    virtual HRESULT put_UserInitials(BSTR prop) = 0;
    virtual HRESULT get_UserAddress(BSTR *prop /Out/) = 0;
    virtual HRESULT put_UserAddress(BSTR prop) = 0;
    virtual HRESULT get_MacroContainer(IDispatch **prop) = 0;
    virtual HRESULT get_DisplayRecentFiles(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_DisplayRecentFiles(VARIANT_BOOL prop) = 0;
/*
    virtual HRESULT get_CommandBars(CommandBars **prop) = 0;
    virtual HRESULT get_SynonymInfo(BSTR Word, VARIANT *LanguageID, SynonymInfo **prop) = 0;
    virtual HRESULT get_VBE(VBE **prop) = 0;
*/
    virtual HRESULT get_DefaultSaveFormat(BSTR *prop /Out/) = 0;
    virtual HRESULT put_DefaultSaveFormat(BSTR prop) = 0;
    //virtual HRESULT get_ListGalleries(ListGalleries **prop) = 0;
    virtual HRESULT get_ActivePrinter(BSTR *prop /Out/) = 0;
    virtual HRESULT put_ActivePrinter(BSTR prop) = 0;
    //virtual HRESULT get_Templates(Templates **prop) = 0;
    virtual HRESULT get_CustomizationContext(IDispatch **prop /Out/) = 0;
    virtual HRESULT put_CustomizationContext(IDispatch *prop) = 0;
    //virtual HRESULT get_KeyBindings(KeyBindings **prop) = 0;
    //virtual HRESULT get_KeysBoundTo(WdKeyCategory KeyCategory, BSTR Command, VARIANT *CommandParameter, KeysBoundTo **prop) = 0;
    //virtual HRESULT get_FindKey(long KeyCode, VARIANT *KeyCode2, KeyBinding **prop) = 0;
    virtual HRESULT get_Caption(BSTR *prop /Out/) = 0;
    virtual HRESULT put_Caption(BSTR prop) = 0;
    virtual HRESULT get_Path(BSTR *prop /Out/) = 0;
    virtual HRESULT get_DisplayScrollBars(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_DisplayScrollBars(VARIANT_BOOL prop) = 0;
    virtual HRESULT get_StartupPath(BSTR *prop /Out/) = 0;
    virtual HRESULT put_StartupPath(BSTR prop) = 0;
    virtual HRESULT get_BackgroundSavingStatus(long *prop /Out/) = 0;
    virtual HRESULT get_BackgroundPrintingStatus(long *prop /Out/) = 0;
    virtual HRESULT get_Left(long *prop /Out/) = 0;
    virtual HRESULT put_Left(long prop) = 0;
    virtual HRESULT get_Top(long *prop /Out/) = 0;
    virtual HRESULT put_Top(long prop) = 0;
    virtual HRESULT get_Width(long *prop /Out/) = 0;
    virtual HRESULT put_Width(long prop) = 0;
    virtual HRESULT get_Height(long *prop /Out/) = 0;
    virtual HRESULT put_Height(long prop) = 0;
    //virtual HRESULT get_WindowState(WdWindowState *prop) = 0;
    //virtual HRESULT put_WindowState(WdWindowState prop) = 0;
    virtual HRESULT get_DisplayAutoCompleteTips(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_DisplayAutoCompleteTips(VARIANT_BOOL prop) = 0;
    //virtual HRESULT get_Options(Options **prop) = 0;
    virtual HRESULT get_DisplayAlerts(WdAlertLevel *prop) = 0;
    virtual HRESULT put_DisplayAlerts(WdAlertLevel prop) = 0;
    //virtual HRESULT get_CustomDictionaries(Dictionaries **prop) = 0;
    virtual HRESULT get_PathSeparator(BSTR *prop /Out/) = 0;
    virtual HRESULT put_StatusBar(BSTR rhs) = 0;
    virtual HRESULT get_MAPIAvailable(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT get_DisplayScreenTips(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_DisplayScreenTips(VARIANT_BOOL prop) = 0;
    //virtual HRESULT get_EnableCancelKey(WdEnableCancelKey *prop) = 0;
    //virtual HRESULT put_EnableCancelKey(WdEnableCancelKey prop) = 0;
    virtual HRESULT get_UserControl(VARIANT_BOOL *prop /Out/) = 0;
    //virtual HRESULT get_FileSearch(FileSearch **prop) = 0;
    virtual HRESULT get_MailSystem(WdMailSystem *prop) = 0;
    virtual HRESULT get_DefaultTableSeparator(BSTR *prop /Out/) = 0;
    virtual HRESULT put_DefaultTableSeparator(BSTR prop) = 0;
    virtual HRESULT get_ShowVisualBasicEditor(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_ShowVisualBasicEditor(VARIANT_BOOL prop) = 0;
    virtual HRESULT get_BrowseExtraFileTypes(BSTR *prop /Out/) = 0;
    virtual HRESULT put_BrowseExtraFileTypes(BSTR prop) = 0;
    virtual HRESULT get_IsObjectValid(IDispatch *Object, VARIANT_BOOL *prop /Out/) = 0;
    //virtual HRESULT get_HangulHanjaDictionaries(HangulHanjaConversionDictionaries **prop) = 0;
    //virtual HRESULT get_MailMessage(MailMessage **prop) = 0;
    virtual HRESULT get_FocusInMailHeader(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT Quit(VARIANT *SaveChanges, VARIANT *OriginalFormat, VARIANT *RouteDocument) = 0;
    virtual HRESULT ScreenRefresh() = 0;
    virtual HRESULT PrintOutOld(VARIANT *Background,
            VARIANT *Append,
            VARIANT *Range,
            VARIANT *OutputFileName,
            VARIANT *From,
            VARIANT *To,
            VARIANT *Item,
            VARIANT *Copies,
            VARIANT *Pages,
            VARIANT *PageType,
            VARIANT *PrintToFile,
            VARIANT *Collate,
            VARIANT *FileName,
            VARIANT *ActivePrinterMacGX,
            VARIANT *ManualDuplexPrint) = 0;
    virtual HRESULT LookupNameProperties(BSTR Name) = 0;
    virtual HRESULT SubstituteFont(BSTR UnavailableFont, BSTR SubstituteFont) = 0;
    virtual HRESULT Repeat(VARIANT *Times, VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT DDEExecute(long Channel, BSTR Command) = 0;
    virtual HRESULT DDEInitiate(BSTR App, BSTR Topic, long *prop) = 0;
    virtual HRESULT DDEPoke(long Channel, BSTR Item, BSTR Data) = 0;
    virtual HRESULT DDERequest(long Channel, BSTR Item, BSTR *prop /Out/) = 0;
    virtual HRESULT DDETerminate(long Channel) = 0;
    virtual HRESULT DDETerminateAll() = 0;
    virtual HRESULT BuildKeyCode(WdKey Arg1, VARIANT *Arg2, VARIANT *Arg3, VARIANT *Arg4, long *prop) = 0;
    virtual HRESULT KeyString(long KeyCode, VARIANT *KeyCode2, BSTR *prop /Out/) = 0;
    virtual HRESULT OrganizerCopy(BSTR Source, BSTR Destination, BSTR Name, WdOrganizerObject Object) = 0;
    virtual HRESULT OrganizerDelete(BSTR Source, BSTR Name, WdOrganizerObject Object) = 0;
    virtual HRESULT OrganizerRename(BSTR Source, BSTR Name, BSTR NewName, WdOrganizerObject Object) = 0;
    //virtual HRESULT AddAddress(SAFEARRAY **TagID, SAFEARRAY **Value) = 0;
    virtual HRESULT GetAddress(VARIANT *Name,
            VARIANT *AddressProperties,
            VARIANT *UseAutoText,
            VARIANT *DisplaySelectDialog,
            VARIANT *SelectDialog,
            VARIANT *CheckNamesDialog,
            VARIANT *RecentAddressesChoice,
            VARIANT *UpdateRecentAddresses,
            BSTR *prop /Out/) = 0;
    virtual HRESULT CheckGrammar(BSTR String, VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT CheckSpelling(BSTR Word,
            VARIANT *CustomDictionary,
            VARIANT *IgnoreUppercase,
            VARIANT *MainDictionary,
            VARIANT *CustomDictionary2,
            VARIANT *CustomDictionary3,
            VARIANT *CustomDictionary4,
            VARIANT *CustomDictionary5,
            VARIANT *CustomDictionary6,
            VARIANT *CustomDictionary7,
            VARIANT *CustomDictionary8,
            VARIANT *CustomDictionary9,
            VARIANT *CustomDictionary10,
            VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT ResetIgnoreAll() = 0;
/*
    virtual HRESULT GetSpellingSuggestions(BSTR Word,
            VARIANT *CustomDictionary,
            VARIANT *IgnoreUppercase,
            VARIANT *MainDictionary,
            VARIANT *SuggestionMode,
            VARIANT *CustomDictionary2,
            VARIANT *CustomDictionary3,
            VARIANT *CustomDictionary4,
            VARIANT *CustomDictionary5,
            VARIANT *CustomDictionary6,
            VARIANT *CustomDictionary7,
            VARIANT *CustomDictionary8,
            VARIANT *CustomDictionary9,
            VARIANT *CustomDictionary10,
            SpellingSuggestions **prop) = 0;
*/
    virtual HRESULT GoBack() = 0;
    virtual HRESULT Help(VARIANT *HelpType) = 0;
    virtual HRESULT AutomaticChange() = 0;
    virtual HRESULT ShowMe() = 0;
    virtual HRESULT HelpTool() = 0;
    //virtual HRESULT NewWindow(Window **prop) = 0;
    virtual HRESULT ListCommands(VARIANT_BOOL ListAllCommands) = 0;
    virtual HRESULT ShowClipboard() = 0;
    virtual HRESULT OnTime(VARIANT *When, BSTR Name, VARIANT *Tolerance) = 0;
    virtual HRESULT NextLetter() = 0;
    virtual HRESULT MountVolume(BSTR Zone,
            BSTR Server,
            BSTR Volume,
            VARIANT *User,
            VARIANT *UserPassword,
            VARIANT *VolumePassword,
            short *prop) = 0;
    virtual HRESULT CleanString(BSTR String, BSTR *prop /Out/) = 0;
    virtual HRESULT SendFax() = 0;
    virtual HRESULT ChangeFileOpenDirectory(BSTR Path) = 0;
    virtual HRESULT RunOld(BSTR MacroName) = 0;
    virtual HRESULT GoForward() = 0;
    virtual HRESULT Move(long Left, long Top) = 0;
    virtual HRESULT Resize(long Width, long Height) = 0;
    virtual HRESULT InchesToPoints(single Inches, single *prop /Out/) = 0;
    virtual HRESULT CentimetersToPoints(single Centimeters, single *prop /Out/) = 0;
    virtual HRESULT MillimetersToPoints(single Millimeters, single *prop /Out/) = 0;
    virtual HRESULT PicasToPoints(single Picas, single *prop /Out/) = 0;
    virtual HRESULT LinesToPoints(single Lines, single *prop /Out/) = 0;
    virtual HRESULT PointsToInches(single Points, single *prop /Out/) = 0;
    virtual HRESULT PointsToCentimeters(single Points, single *prop /Out/) = 0;
    virtual HRESULT PointsToMillimeters(single Points, single *prop /Out/) = 0;
    virtual HRESULT PointsToPicas(single Points, single *prop /Out/) = 0;
    virtual HRESULT PointsToLines(single Points, single *prop /Out/) = 0;
    virtual HRESULT Activate() = 0;
    virtual HRESULT PointsToPixels(single Points, VARIANT *fVertical, single *prop /Out/) = 0;
    virtual HRESULT PixelsToPoints(single Pixels, VARIANT *fVertical, single *prop /Out/) = 0;
    virtual HRESULT KeyboardLatin() = 0;
    virtual HRESULT KeyboardBidi() = 0;
    virtual HRESULT ToggleKeyboard() = 0;
    virtual HRESULT Keyboard(long LangId, long *prop /Out/) = 0;
    virtual HRESULT ProductCode(BSTR *prop /Out/) = 0;
    //virtual HRESULT DefaultWebOptions(DefaultWebOptions **prop) = 0;
    virtual HRESULT DiscussionSupport(VARIANT *Range, VARIANT *cid, VARIANT *piCSE) = 0;
    virtual HRESULT SetDefaultTheme(BSTR Name, WdDocumentMedium DocumentType) = 0;
    virtual HRESULT GetDefaultTheme(WdDocumentMedium DocumentType, BSTR *prop /Out/) = 0;
    //virtual HRESULT get_EmailOptions(EmailOptions **prop) = 0;
    virtual HRESULT get_Language(MsoLanguageID *prop) = 0;
    //virtual HRESULT get_COMAddIns(COMAddIns **prop) = 0;
    virtual HRESULT get_CheckLanguage(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_CheckLanguage(VARIANT_BOOL prop) = 0;
    //virtual HRESULT get_LanguageSettings(LanguageSettings **prop) = 0;
    virtual HRESULT get_Dummy1(VARIANT_BOOL *prop /Out/) = 0;
    //virtual HRESULT get_AnswerWizard(AnswerWizard **prop) = 0;
    virtual HRESULT get_FeatureInstall(MsoFeatureInstall *prop) = 0;
    virtual HRESULT put_FeatureInstall(MsoFeatureInstall prop) = 0;
    virtual HRESULT PrintOut2000(VARIANT *Background,
            VARIANT *Append,
            VARIANT *Range,
            VARIANT *OutputFileName,
            VARIANT *From, VARIANT *To,
            VARIANT *Item, VARIANT *Copies,
            VARIANT *Pages,
            VARIANT *PageType,
            VARIANT *PrintToFile,
            VARIANT *Collate,
            VARIANT *FileName,
            VARIANT *ActivePrinterMacGX,
            VARIANT *ManualDuplexPrint,
            VARIANT *PrintZoomColumn,
            VARIANT *PrintZoomRow,
            VARIANT *PrintZoomPaperWidth,
            VARIANT *PrintZoomPaperHeight) = 0;
/*
    virtual HRESULT Run(BSTR MacroName,
            VARIANT *varg1,
            VARIANT *varg2,
            VARIANT *varg3,
            VARIANT *varg4,
            VARIANT *varg5,
            VARIANT *varg6,
            VARIANT *varg7,
            VARIANT *varg8,
            VARIANT *varg9,
            VARIANT *varg10,
            VARIANT *varg11,
            VARIANT *varg12,
            VARIANT *varg13,
            VARIANT *varg14,
            VARIANT *varg15,
            VARIANT *varg16,
            VARIANT *varg17, 
            VARIANT *varg18,
            VARIANT *varg19,
            VARIANT *varg20,
            VARIANT *varg21,
            VARIANT *varg22,
            VARIANT *varg23,
            VARIANT *varg24,
            VARIANT *varg25,
            VARIANT *varg26,
            VARIANT *varg27,
            VARIANT *varg28,
            VARIANT *varg29,
            VARIANT *varg30,
            VARIANT *prop) = 0;
*/
    virtual HRESULT PrintOut(VARIANT *Background,
            VARIANT *Append,
            VARIANT *Range,
            VARIANT *OutputFileName,
            VARIANT *From,
            VARIANT *To,
            VARIANT *Item,
            VARIANT *Copies,
            VARIANT *Pages,
            VARIANT *PageType,
            VARIANT *PrintToFile,
            VARIANT *Collate,
            VARIANT *FileName,
            VARIANT *ActivePrinterMacGX,
            VARIANT *ManualDuplexPrint,
            VARIANT *PrintZoomColumn,
            VARIANT *PrintZoomRow,
            VARIANT *PrintZoomPaperWidth,
            VARIANT *PrintZoomPaperHeight) = 0;
    virtual HRESULT get_AutomationSecurity(MsoAutomationSecurity *prop /Out/) = 0;
    virtual HRESULT put_AutomationSecurity(MsoAutomationSecurity prop) = 0;
    //virtual HRESULT get_FileDialog(MsoFileDialogType FileDialogType, FileDialog **prop) = 0;
    virtual HRESULT get_EmailTemplate(BSTR *prop /Out/) = 0;
    virtual HRESULT put_EmailTemplate(BSTR prop) = 0;
    virtual HRESULT get_ShowWindowsInTaskbar(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_ShowWindowsInTaskbar(VARIANT_BOOL prop) = 0;
    //virtual HRESULT get_NewDocument(NewFile **prop) = 0;
    virtual HRESULT get_ShowStartupDialog(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_ShowStartupDialog(VARIANT_BOOL prop) = 0;
    //virtual HRESULT get_AutoCorrectEmail(AutoCorrect **prop) = 0;
    //virtual HRESULT get_TaskPanes(TaskPanes **prop) = 0;
    virtual HRESULT get_DefaultLegalBlackline(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_DefaultLegalBlackline(VARIANT_BOOL prop) = 0;
    virtual HRESULT Dummy2(VARIANT_BOOL *prop /Out/) = 0;
    //virtual HRESULT get_SmartTagRecognizers(SmartTagRecognizers **prop) = 0;
    //virtual HRESULT get_SmartTagTypes(SmartTagTypes **prop) = 0;
    //virtual HRESULT get_XMLNamespaces(XMLNamespaces **prop) = 0;
    virtual HRESULT PutFocusInMailHeader() = 0;
    virtual HRESULT get_ArbitraryXMLSupportAvailable(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT get_BuildFull(BSTR *prop /Out/) = 0;
    virtual HRESULT get_BuildFeatureCrew(BSTR *prop /Out/) = 0;
    virtual HRESULT LoadMasterList(BSTR FileName) = 0;
/*
    virtual HRESULT CompareDocuments(Document *OriginalDocument,
            Document *RevisedDocument,
            WdCompareDestination Destination,
            WdGranularity Granularity,
            VARIANT_BOOL CompareFormatting,
            VARIANT_BOOL CompareCaseChanges,
            VARIANT_BOOL CompareWhitespace,
            VARIANT_BOOL CompareTables,
            VARIANT_BOOL CompareHeaders,
            VARIANT_BOOL CompareFootnotes,
            VARIANT_BOOL CompareTextboxes,
            VARIANT_BOOL CompareFields,
            VARIANT_BOOL CompareComments,
            VARIANT_BOOL CompareMoves,
            BSTR RevisedAuthor,
            VARIANT_BOOL IgnoreAllComparisonWarnings,
            Document **prop) = 0;
    virtual HRESULT MergeDocuments(Document *OriginalDocument,
            Document *RevisedDocument,
            WdCompareDestination Destination,
            WdGranularity Granularity,
            VARIANT_BOOL CompareFormatting,
            VARIANT_BOOL CompareCaseChanges,
            VARIANT_BOOL CompareWhitespace,
            VARIANT_BOOL CompareTables,
            VARIANT_BOOL CompareHeaders,
            VARIANT_BOOL CompareFootnotes,
            VARIANT_BOOL CompareTextboxes,
            VARIANT_BOOL CompareFields,
            VARIANT_BOOL CompareComments,
            VARIANT_BOOL CompareMoves,
            BSTR OriginalAuthor,
            BSTR RevisedAuthor,
            WdMergeFormatFrom FormatFrom,
            Document **prop) = 0;
    virtual HRESULT get_Bibliography(Bibliography **prop) = 0;
*/
    virtual HRESULT get_ShowStylePreviews(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_ShowStylePreviews(VARIANT_BOOL prop) = 0;
    virtual HRESULT get_RestrictLinkedStyles(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_RestrictLinkedStyles(VARIANT_BOOL prop) = 0;
    //virtual HRESULT get_OMathAutoCorrect(OMathAutoCorrect **prop) = 0;
    virtual HRESULT get_DisplayDocumentInformationPanel(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_DisplayDocumentInformationPanel(VARIANT_BOOL prop) = 0;
    //virtual HRESULT get_Assistance(IAssistance **prop /Out/) = 0;
    virtual HRESULT get_OpenAttachmentsInFullScreen(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_OpenAttachmentsInFullScreen(VARIANT_BOOL prop) = 0;
    virtual HRESULT get_ActiveEncryptionSession(long *prop /Out/) = 0;
    virtual HRESULT get_DontResetInsertionPointProperties(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_DontResetInsertionPointProperties(VARIANT_BOOL prop) = 0;
/*
    virtual HRESULT get_SmartArtLayouts(SmartArtLayouts **prop) = 0;
    virtual HRESULT get_SmartArtQuickStyles(SmartArtQuickStyles **prop) = 0;
    virtual HRESULT get_SmartArtColors(SmartArtColors **prop) = 0;
    virtual HRESULT ThreeWayMerge(Document *LocalDocument,
            Document *ServerDocument,
            Document *BaseDocument,
            VARIANT_BOOL FavorSource) = 0;
    virtual HRESULT Dummy4() = 0;
    virtual HRESULT get_UndoRecord(UndoRecord **prop) = 0;
    virtual HRESULT get_PickerDialog(PickerDialog **prop) = 0;
    virtual HRESULT get_ProtectedViewWindows(ProtectedViewWindows **prop) = 0;
    virtual HRESULT get_ActiveProtectedViewWindow(ProtectedViewWindow **prop) = 0;
*/
    virtual HRESULT get_IsSandboxed(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT get_FileValidation(MsoFileValidationMode *prop /Out/) = 0;
    virtual HRESULT put_FileValidation(MsoFileValidationMode prop) = 0;
    virtual HRESULT get_ChartDataPointTrack(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_ChartDataPointTrack(VARIANT_BOOL prop) = 0;
    virtual HRESULT get_ShowAnimation(VARIANT_BOOL *prop /Out/) = 0;
    virtual HRESULT put_ShowAnimation(VARIANT_BOOL prop) = 0;
/*
    virtual HRESULT get_OfdExportOptions(OfdExportOptions **prop) = 0;
    virtual HRESULT get_PdfExportOptions(PdfExportOptions **prop) = 0;
*/
};
}; // namespace wpsapi