/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct _Application : public IDispatch, public wpsapi::_Application_extend /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Documents(
            Documents **prop /Out/) = 0;

        virtual HRESULT get_Windows(
            Windows **prop /Out/) = 0;

        virtual HRESULT get_ActiveDocument(
            Document **prop /Out/) = 0;

        virtual HRESULT get_ActiveWindow(
            Window **prop /Out/) = 0;

        virtual HRESULT get_Selection(
            Selection **prop /Out/) = 0;

        virtual HRESULT get_WordBasic(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_RecentFiles(
            RecentFiles **prop /Out/) = 0;

        virtual HRESULT get_NormalTemplate(
            Template **prop /Out/) = 0;

        virtual HRESULT get_System(
            System **prop /Out/) = 0;

        virtual HRESULT get_AutoCorrect(
            AutoCorrect **prop /Out/) = 0;

        virtual HRESULT get_FontNames(
            FontNames **prop /Out/) = 0;

        virtual HRESULT get_LandscapeFontNames(
            FontNames **prop /Out/) = 0;

        virtual HRESULT get_PortraitFontNames(
            FontNames **prop /Out/) = 0;

        virtual HRESULT get_Languages(
            Languages **prop /Out/) = 0;

        virtual HRESULT get_Assistant(
            ksoapi::Assistant **prop /Out/) = 0;

        virtual HRESULT get_Browser(
            Browser **prop /Out/) = 0;

        virtual HRESULT get_FileConverters(
            FileConverters **prop /Out/) = 0;

        virtual HRESULT get_MailingLabel(
            MailingLabel **prop /Out/) = 0;

        virtual HRESULT get_Dialogs(
            Dialogs **prop /Out/) = 0;

        virtual HRESULT get_CaptionLabels(
            CaptionLabels **prop /Out/) = 0;

        virtual HRESULT get_AutoCaptions(
            AutoCaptions **prop /Out/) = 0;

        virtual HRESULT get_AddIns(
            AddIns **prop /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Version(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ScreenUpdating(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ScreenUpdating(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintPreview(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintPreview(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Tasks(
            Tasks **prop /Out/) = 0;

        virtual HRESULT get_DisplayStatusBar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayStatusBar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SpecialMode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_UsableWidth(
            long *prop /Out/) = 0;

        virtual HRESULT get_UsableHeight(
            long *prop /Out/) = 0;

        virtual HRESULT get_MathCoprocessorAvailable(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_MouseAvailable(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_International(
            WdInternationalIndex Index,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Build(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_CapsLock(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_NumLock(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_UserName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_UserName(
            BSTR prop) = 0;

        virtual HRESULT get_UserInitials(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_UserInitials(
            BSTR prop) = 0;

        virtual HRESULT get_UserAddress(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_UserAddress(
            BSTR prop) = 0;

        virtual HRESULT get_MacroContainer(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_DisplayRecentFiles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayRecentFiles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CommandBars(
            ksoapi::CommandBars **prop /Out/) = 0;

        virtual HRESULT get_SynonymInfo(
            BSTR Word,
            VARIANT *LanguageID = argMissing(),
            SynonymInfo **prop /Out/ = 0) = 0;

        virtual HRESULT get_VBE(
            VBE **prop /Out/) = 0;

        virtual HRESULT get_DefaultSaveFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultSaveFormat(
            BSTR prop) = 0;

        virtual HRESULT get_ListGalleries(
            ListGalleries **prop /Out/) = 0;

        virtual HRESULT get_ActivePrinter(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ActivePrinter(
            BSTR prop) = 0;

        virtual HRESULT get_Templates(
            Templates **prop /Out/) = 0;

        virtual HRESULT get_CustomizationContext(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT put_CustomizationContext(
            IDispatch *prop) = 0;

        virtual HRESULT get_KeyBindings(
            KeyBindings **prop /Out/) = 0;

        virtual HRESULT get_KeysBoundTo(
            WdKeyCategory KeyCategory,
            BSTR Command,
            VARIANT *CommandParameter = argMissing(),
            KeysBoundTo **prop /Out/ = 0) = 0;

        virtual HRESULT get_FindKey(
            long KeyCode,
            VARIANT *KeyCode2 = argMissing(),
            KeyBinding **prop /Out/ = 0) = 0;

        virtual HRESULT get_Caption(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR prop) = 0;

        virtual HRESULT get_Path(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_DisplayScrollBars(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayScrollBars(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StartupPath(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_StartupPath(
            BSTR prop) = 0;

        virtual HRESULT get_BackgroundSavingStatus(
            long *prop /Out/) = 0;

        virtual HRESULT get_BackgroundPrintingStatus(
            long *prop /Out/) = 0;

        virtual HRESULT get_Left(
            long *prop /Out/) = 0;

        virtual HRESULT put_Left(
            long prop) = 0;

        virtual HRESULT get_Top(
            long *prop /Out/) = 0;

        virtual HRESULT put_Top(
            long prop) = 0;

        virtual HRESULT get_Width(
            long *prop /Out/) = 0;

        virtual HRESULT put_Width(
            long prop) = 0;

        virtual HRESULT get_Height(
            long *prop /Out/) = 0;

        virtual HRESULT put_Height(
            long prop) = 0;

        virtual HRESULT get_WindowState(
            WdWindowState *prop /Out/) = 0;

        virtual HRESULT put_WindowState(
            WdWindowState prop) = 0;

        virtual HRESULT get_DisplayAutoCompleteTips(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayAutoCompleteTips(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Options(
            Options **prop /Out/) = 0;

        virtual HRESULT get_DisplayAlerts(
            WdAlertLevel *prop /Out/) = 0;

        virtual HRESULT put_DisplayAlerts(
            WdAlertLevel prop) = 0;

        virtual HRESULT get_CustomDictionaries(
            Dictionaries **prop /Out/) = 0;

        virtual HRESULT get_PathSeparator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_StatusBar(
            BSTR rhs) = 0;

        virtual HRESULT get_MAPIAvailable(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_DisplayScreenTips(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayScreenTips(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnableCancelKey(
            WdEnableCancelKey *prop /Out/) = 0;

        virtual HRESULT put_EnableCancelKey(
            WdEnableCancelKey prop) = 0;

        virtual HRESULT get_UserControl(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_FileSearch(
            ksoapi::FileSearch **prop /Out/) = 0;

        virtual HRESULT get_MailSystem(
            WdMailSystem *prop /Out/) = 0;

        virtual HRESULT get_DefaultTableSeparator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultTableSeparator(
            BSTR prop) = 0;

        virtual HRESULT get_ShowVisualBasicEditor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowVisualBasicEditor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BrowseExtraFileTypes(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_BrowseExtraFileTypes(
            BSTR prop) = 0;

        virtual HRESULT get_IsObjectValid(
            IDispatch *Object,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_HangulHanjaDictionaries(
            HangulHanjaConversionDictionaries **prop /Out/) = 0;

        virtual HRESULT get_MailMessage(
            MailMessage **prop /Out/) = 0;

        virtual HRESULT get_FocusInMailHeader(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Quit(
            VARIANT *SaveChanges = argMissing(),
            VARIANT *OriginalFormat = argMissing(),
            VARIANT *RouteDocument = argMissing()) = 0;

        virtual HRESULT ScreenRefresh() = 0;

        virtual HRESULT PrintOutOld(
            VARIANT *Background = argMissing(),
            VARIANT *Append = argMissing(),
            VARIANT *Range = argMissing(),
            VARIANT *OutputFileName = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *Item = argMissing(),
            VARIANT *Copies = argMissing(),
            VARIANT *Pages = argMissing(),
            VARIANT *PageType = argMissing(),
            VARIANT *PrintToFile = argMissing(),
            VARIANT *Collate = argMissing(),
            VARIANT *FileName = argMissing(),
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing()) = 0;

        virtual HRESULT LookupNameProperties(
            BSTR Name) = 0;

        virtual HRESULT SubstituteFont(
            BSTR UnavailableFont,
            BSTR SubstituteFont) = 0;

        virtual HRESULT Repeat(
            VARIANT *Times = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT DDEExecute(
            long Channel,
            BSTR Command) = 0;

        virtual HRESULT DDEInitiate(
            BSTR App,
            BSTR Topic,
            long *prop /Out/) = 0;

        virtual HRESULT DDEPoke(
            long Channel,
            BSTR Item,
            BSTR Data) = 0;

        virtual HRESULT DDERequest(
            long Channel,
            BSTR Item,
            BSTR *prop /Out/) = 0;

        virtual HRESULT DDETerminate(
            long Channel) = 0;

        virtual HRESULT DDETerminateAll() = 0;

        virtual HRESULT BuildKeyCode(
            WdKey Arg1,
            VARIANT *Arg2 = argMissing(),
            VARIANT *Arg3 = argMissing(),
            VARIANT *Arg4 = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT KeyString(
            long KeyCode,
            VARIANT *KeyCode2 = argMissing(),
            BSTR *prop /Out/ = 0) = 0;

        virtual HRESULT OrganizerCopy(
            BSTR Source,
            BSTR Destination,
            BSTR Name,
            WdOrganizerObject Object) = 0;

        virtual HRESULT OrganizerDelete(
            BSTR Source,
            BSTR Name,
            WdOrganizerObject Object) = 0;

        virtual HRESULT OrganizerRename(
            BSTR Source,
            BSTR Name,
            BSTR NewName,
            WdOrganizerObject Object) = 0;

        virtual HRESULT AddAddress(
            SAFEARRAY * *TagID,
            SAFEARRAY * *Value) = 0;

        virtual HRESULT GetAddress(
            VARIANT *Name = argMissing(),
            VARIANT *AddressProperties = argMissing(),
            VARIANT *UseAutoText = argMissing(),
            VARIANT *DisplaySelectDialog = argMissing(),
            VARIANT *SelectDialog = argMissing(),
            VARIANT *CheckNamesDialog = argMissing(),
            VARIANT *RecentAddressesChoice = argMissing(),
            VARIANT *UpdateRecentAddresses = argMissing(),
            BSTR *prop /Out/ = 0) = 0;

        virtual HRESULT CheckGrammar(
            BSTR String,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT CheckSpelling(
            BSTR Word,
            VARIANT *CustomDictionary = argMissing(),
            VARIANT *IgnoreUppercase = argMissing(),
            VARIANT *MainDictionary = argMissing(),
            VARIANT *CustomDictionary2 = argMissing(),
            VARIANT *CustomDictionary3 = argMissing(),
            VARIANT *CustomDictionary4 = argMissing(),
            VARIANT *CustomDictionary5 = argMissing(),
            VARIANT *CustomDictionary6 = argMissing(),
            VARIANT *CustomDictionary7 = argMissing(),
            VARIANT *CustomDictionary8 = argMissing(),
            VARIANT *CustomDictionary9 = argMissing(),
            VARIANT *CustomDictionary10 = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT ResetIgnoreAll() = 0;

        virtual HRESULT GetSpellingSuggestions(
            BSTR Word,
            VARIANT *CustomDictionary = argMissing(),
            VARIANT *IgnoreUppercase = argMissing(),
            VARIANT *MainDictionary = argMissing(),
            VARIANT *SuggestionMode = argMissing(),
            VARIANT *CustomDictionary2 = argMissing(),
            VARIANT *CustomDictionary3 = argMissing(),
            VARIANT *CustomDictionary4 = argMissing(),
            VARIANT *CustomDictionary5 = argMissing(),
            VARIANT *CustomDictionary6 = argMissing(),
            VARIANT *CustomDictionary7 = argMissing(),
            VARIANT *CustomDictionary8 = argMissing(),
            VARIANT *CustomDictionary9 = argMissing(),
            VARIANT *CustomDictionary10 = argMissing(),
            SpellingSuggestions **prop /Out/ = 0) = 0;

        virtual HRESULT GoBack() = 0;

        virtual HRESULT Help(
            VARIANT *HelpType) = 0;

        virtual HRESULT AutomaticChange() = 0;

        virtual HRESULT ShowMe() = 0;

        virtual HRESULT HelpTool() = 0;

        virtual HRESULT NewWindow(
            Window **prop /Out/) = 0;

        virtual HRESULT ListCommands(
            VARIANT_BOOL ListAllCommands) = 0;

        virtual HRESULT ShowClipboard() = 0;

        virtual HRESULT OnTime(
            VARIANT *When,
            BSTR Name,
            VARIANT *Tolerance = argMissing()) = 0;

        virtual HRESULT NextLetter() = 0;

        virtual HRESULT MountVolume(
            BSTR Zone,
            BSTR Server,
            BSTR Volume,
            VARIANT *User = argMissing(),
            VARIANT *UserPassword = argMissing(),
            VARIANT *VolumePassword = argMissing(),
            short *prop /Out/ = 0) = 0;

        virtual HRESULT CleanString(
            BSTR String,
            BSTR *prop /Out/) = 0;

        virtual HRESULT SendFax() = 0;

        virtual HRESULT ChangeFileOpenDirectory(
            BSTR Path) = 0;

        virtual HRESULT RunOld(
            BSTR MacroName) = 0;

        virtual HRESULT GoForward() = 0;

        virtual HRESULT Move(
            long Left,
            long Top) = 0;

        virtual HRESULT Resize(
            long Width,
            long Height) = 0;

        virtual HRESULT InchesToPoints(
            single Inches,
            single *prop /Out/) = 0;

        virtual HRESULT CentimetersToPoints(
            single Centimeters,
            single *prop /Out/) = 0;

        virtual HRESULT MillimetersToPoints(
            single Millimeters,
            single *prop /Out/) = 0;

        virtual HRESULT PicasToPoints(
            single Picas,
            single *prop /Out/) = 0;

        virtual HRESULT LinesToPoints(
            single Lines,
            single *prop /Out/) = 0;

        virtual HRESULT PointsToInches(
            single Points,
            single *prop /Out/) = 0;

        virtual HRESULT PointsToCentimeters(
            single Points,
            single *prop /Out/) = 0;

        virtual HRESULT PointsToMillimeters(
            single Points,
            single *prop /Out/) = 0;

        virtual HRESULT PointsToPicas(
            single Points,
            single *prop /Out/) = 0;

        virtual HRESULT PointsToLines(
            single Points,
            single *prop /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT PointsToPixels(
            single Points,
            VARIANT *fVertical = argMissing(),
            single *prop /Out/ = 0) = 0;

        virtual HRESULT PixelsToPoints(
            single Pixels,
            VARIANT *fVertical = argMissing(),
            single *prop /Out/ = 0) = 0;

        virtual HRESULT KeyboardLatin() = 0;

        virtual HRESULT KeyboardBidi() = 0;

        virtual HRESULT ToggleKeyboard() = 0;

        virtual HRESULT Keyboard(
            long LangId = 0,
            long *prop /Out/ = 0) = 0;

        virtual HRESULT ProductCode(
            BSTR *prop /Out/) = 0;

        virtual HRESULT DefaultWebOptions(
            DefaultWebOptions **prop /Out/) = 0;

        virtual HRESULT DiscussionSupport(
            VARIANT *Range,
            VARIANT *cid,
            VARIANT *piCSE) = 0;

        virtual HRESULT SetDefaultTheme(
            BSTR Name,
            WdDocumentMedium DocumentType) = 0;

        virtual HRESULT GetDefaultTheme(
            WdDocumentMedium DocumentType,
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_EmailOptions(
            EmailOptions **prop /Out/) = 0;

        virtual HRESULT get_Language(
            MsoLanguageID *prop /Out/) = 0;

        virtual HRESULT get_COMAddIns(
            ksoapi::COMAddIns **prop /Out/) = 0;

        virtual HRESULT get_CheckLanguage(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckLanguage(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LanguageSettings(
            ksoapi::LanguageSettings **prop /Out/) = 0;

        virtual HRESULT get_Dummy1(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_AnswerWizard(
            ksoapi::AnswerWizard **prop /Out/) = 0;

        virtual HRESULT get_FeatureInstall(
            MsoFeatureInstall *prop /Out/) = 0;

        virtual HRESULT put_FeatureInstall(
            MsoFeatureInstall prop) = 0;

        virtual HRESULT PrintOut2000(
            VARIANT *Background = argMissing(),
            VARIANT *Append = argMissing(),
            VARIANT *Range = argMissing(),
            VARIANT *OutputFileName = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *Item = argMissing(),
            VARIANT *Copies = argMissing(),
            VARIANT *Pages = argMissing(),
            VARIANT *PageType = argMissing(),
            VARIANT *PrintToFile = argMissing(),
            VARIANT *Collate = argMissing(),
            VARIANT *FileName = argMissing(),
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing(),
            VARIANT *PrintZoomColumn = argMissing(),
            VARIANT *PrintZoomRow = argMissing(),
            VARIANT *PrintZoomPaperWidth = argMissing(),
            VARIANT *PrintZoomPaperHeight = argMissing()) = 0;

        virtual PyObject* Run(
            /* BSTR MacroName,
            VARIANT *varg1 = argMissing(),
            VARIANT *varg2 = argMissing(),
            VARIANT *varg3 = argMissing(),
            VARIANT *varg4 = argMissing(),
            VARIANT *varg5 = argMissing(),
            VARIANT *varg6 = argMissing(),
            VARIANT *varg7 = argMissing(),
            VARIANT *varg8 = argMissing(),
            VARIANT *varg9 = argMissing(),
            VARIANT *varg10 = argMissing(),
            VARIANT *varg11 = argMissing(),
            VARIANT *varg12 = argMissing(),
            VARIANT *varg13 = argMissing(),
            VARIANT *varg14 = argMissing(),
            VARIANT *varg15 = argMissing(),
            VARIANT *varg16 = argMissing(),
            VARIANT *varg17 = argMissing(),
            VARIANT *varg18 = argMissing(),
            VARIANT *varg19 = argMissing(),
            VARIANT *varg20 = argMissing(),
            VARIANT *varg21 = argMissing(),
            VARIANT *varg22 = argMissing(),
            VARIANT *varg23 = argMissing(),
            VARIANT *varg24 = argMissing(),
            VARIANT *varg25 = argMissing(),
            VARIANT *varg26 = argMissing(),
            VARIANT *varg27 = argMissing(),
            VARIANT *varg28 = argMissing(),
            VARIANT *varg29 = argMissing(),
            VARIANT *varg30 = argMissing(),
            VARIANT *prop /Out/ = 0 */) = 0 /NoArgParser/;
%Docstring
Run(self, str, varg1: Any = None, varg2: Any = None, varg3: Any = None, varg4: Any = None, varg5: Any = None, varg6: Any = None, varg7: Any = None, varg8: Any = None, varg9: Any = None, varg10: Any = None, varg11: Any = None, varg12: Any = None, varg13: Any = None, varg14: Any = None, varg15: Any = None, varg16: Any = None, varg17: Any = None, varg18: Any = None, varg19: Any = None, varg20: Any = None, varg21: Any = None, varg22: Any = None, varg23: Any = None, varg24: Any = None, varg25: Any = None, varg26: Any = None, varg27: Any = None, varg28: Any = None, varg29: Any = None, varg30: Any = None)
%End

%MethodCode
    Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
    if (posArgsCount < 1 || posArgsCount > 31)
    {
        PyErr_Format(PyExc_TypeError,
                    "Run() takes from 1 to 31 positional arguments but %d were given\n",
                    posArgsCount);
        return nullptr;
    }

    kfc::ks_bstr MacroName;
    VARIANT* args[30];
    for (int i = posArgsCount - 1; i < 30; ++i)
        args[i] = argMissing();

    if (posArgsCount > 0)
    {
        PyObject *pyArg = PyTuple_GetItem(sipArgs, 0);
        if (!PyUnicode_Check(pyArg))
        {
            PyErr_Format(PyExc_TypeError,
                "The 0 positional argument requires 'str' not '%s'.",
                Py_TYPE(pyArg)->tp_name);
            return nullptr;
        }

        int state = 0;
        int isError = 0;
        BSTR* bstr = (BSTR*)sipConvertToType(pyArg, sipType_BSTR, 0, SIP_NO_CONVERTORS, &state, &isError);

        if (!isError && bstr)
        {
            MacroName.assign(*bstr, SysStringLen(*bstr));

            sipReleaseType(bstr, sipType_BSTR, state);
        }
    }

    std::vector<std::pair<int, int>> indexes;
    if (!parseVariantArgs(sipArgs, args, indexes, 1))
        return nullptr;

    static const char * const s_kwds[] =
    {
        "varg1", "varg2", "varg3", "varg4", "varg5",
        "varg6", "varg7", "varg8", "varg9", "varg10",
        "varg11", "varg12", "varg13", "varg14", "varg15",
        "varg16", "varg17", "varg18", "varg19", "varg20",
        "varg21", "varg22", "varg23", "varg24", "varg25",
        "varg26", "varg27", "varg28", "varg29", "varg30"
    };
    const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

    if (!parseVariantKwds(sipKwds, s_kwds, kwdsCount, args, posArgsCount, indexes, 1))
        return nullptr;

    wpsapi::_Application *sipCpp = reinterpret_cast<wpsapi::_Application *>(
        sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_wpsapi__Application));

    VARIANT *prop = new VARIANT;
    VariantInit(prop);

    HRESULT hr = sipCpp->Run(MacroName,
        args[0], args[1], args[2], args[3], args[4], args[5],
        args[6], args[7], args[8], args[9], args[10],
        args[11], args[12], args[13], args[14], args[15],
        args[16], args[17], args[18], args[19], args[20],
        args[21], args[22], args[23], args[24], args[25],
        args[26], args[27], args[28], args[29],
        prop);

    for (const auto &index : indexes)
        sipReleaseType(args[index.first], sipType_VARIANT, index.second);

    return sipBuildResult(0, "(iN)", hr, prop, sipType_VARIANT, SIP_NULLPTR);
%End

        virtual HRESULT PrintOut(
            VARIANT *Background = argMissing(),
            VARIANT *Append = argMissing(),
            VARIANT *Range = argMissing(),
            VARIANT *OutputFileName = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *Item = argMissing(),
            VARIANT *Copies = argMissing(),
            VARIANT *Pages = argMissing(),
            VARIANT *PageType = argMissing(),
            VARIANT *PrintToFile = argMissing(),
            VARIANT *Collate = argMissing(),
            VARIANT *FileName = argMissing(),
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing(),
            VARIANT *PrintZoomColumn = argMissing(),
            VARIANT *PrintZoomRow = argMissing(),
            VARIANT *PrintZoomPaperWidth = argMissing(),
            VARIANT *PrintZoomPaperHeight = argMissing()) = 0;

        virtual HRESULT get_AutomationSecurity(
            MsoAutomationSecurity *prop /Out/) = 0;

        virtual HRESULT put_AutomationSecurity(
            MsoAutomationSecurity prop) = 0;

        virtual HRESULT get_FileDialog(
            MsoFileDialogType FileDialogType,
            ksoapi::FileDialog **prop /Out/) = 0;

        virtual HRESULT get_EmailTemplate(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_EmailTemplate(
            BSTR prop) = 0;

        virtual HRESULT get_ShowWindowsInTaskbar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowWindowsInTaskbar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NewDocument(
            ksoapi::NewFile **prop /Out/) = 0;

        virtual HRESULT get_ShowStartupDialog(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowStartupDialog(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoCorrectEmail(
            AutoCorrect **prop /Out/) = 0;

        virtual HRESULT get_TaskPanes(
            TaskPanes **prop /Out/) = 0;

        virtual HRESULT get_DefaultLegalBlackline(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultLegalBlackline(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Dummy2(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_SmartTagRecognizers(
            SmartTagRecognizers **prop /Out/) = 0;

        virtual HRESULT get_SmartTagTypes(
            SmartTagTypes **prop /Out/) = 0;

        virtual HRESULT get_XMLNamespaces(
            XMLNamespaces **prop /Out/) = 0;

        virtual HRESULT PutFocusInMailHeader() = 0;

        virtual HRESULT get_ArbitraryXMLSupportAvailable(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_BuildFull(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_BuildFeatureCrew(
            BSTR *prop /Out/) = 0;

        virtual HRESULT LoadMasterList(
            BSTR FileName) = 0;

        virtual HRESULT CompareDocuments(
            Document *OriginalDocument,
            Document *RevisedDocument,
            WdCompareDestination Destination = wpsapi::wdCompareDestinationOriginal,
            WdGranularity Granularity = wpsapi::wdGranularityCharLevel,
            VARIANT_BOOL CompareFormatting = VARIANT_FALSE,
            VARIANT_BOOL CompareCaseChanges = VARIANT_FALSE,
            VARIANT_BOOL CompareWhitespace = VARIANT_FALSE,
            VARIANT_BOOL CompareTables = VARIANT_FALSE,
            VARIANT_BOOL CompareHeaders = VARIANT_FALSE,
            VARIANT_BOOL CompareFootnotes = VARIANT_FALSE,
            VARIANT_BOOL CompareTextboxes = VARIANT_FALSE,
            VARIANT_BOOL CompareFields = VARIANT_FALSE,
            VARIANT_BOOL CompareComments = VARIANT_FALSE,
            VARIANT_BOOL CompareMoves = VARIANT_FALSE,
            BSTR RevisedAuthor = 0,
            VARIANT_BOOL IgnoreAllComparisonWarnings = VARIANT_FALSE,
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT MergeDocuments(
            Document *OriginalDocument,
            Document *RevisedDocument,
            WdCompareDestination Destination = wpsapi::wdCompareDestinationOriginal,
            WdGranularity Granularity = wpsapi::wdGranularityCharLevel,
            VARIANT_BOOL CompareFormatting = VARIANT_FALSE,
            VARIANT_BOOL CompareCaseChanges = VARIANT_FALSE,
            VARIANT_BOOL CompareWhitespace = VARIANT_FALSE,
            VARIANT_BOOL CompareTables = VARIANT_FALSE,
            VARIANT_BOOL CompareHeaders = VARIANT_FALSE,
            VARIANT_BOOL CompareFootnotes = VARIANT_FALSE,
            VARIANT_BOOL CompareTextboxes = VARIANT_FALSE,
            VARIANT_BOOL CompareFields = VARIANT_FALSE,
            VARIANT_BOOL CompareComments = VARIANT_FALSE,
            VARIANT_BOOL CompareMoves = VARIANT_FALSE,
            BSTR OriginalAuthor = 0,
            BSTR RevisedAuthor = 0,
            WdMergeFormatFrom FormatFrom = wpsapi::wdMergeFormatFromOriginal,
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT get_Bibliography(
            Bibliography **prop /Out/) = 0;

        virtual HRESULT get_ShowStylePreviews(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowStylePreviews(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RestrictLinkedStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RestrictLinkedStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OMathAutoCorrect(
            OMathAutoCorrect **prop /Out/) = 0;

        virtual HRESULT get_DisplayDocumentInformationPanel(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayDocumentInformationPanel(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Assistance(
            ksoapi::IAssistance **prop /Out/) = 0;

        virtual HRESULT get_OpenAttachmentsInFullScreen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OpenAttachmentsInFullScreen(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ActiveEncryptionSession(
            long *prop /Out/) = 0;

        virtual HRESULT get_DontResetInsertionPointProperties(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DontResetInsertionPointProperties(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SmartArtLayouts(
            ksoapi::SmartArtLayouts **prop /Out/) = 0;

        virtual HRESULT get_SmartArtQuickStyles(
            ksoapi::SmartArtQuickStyles **prop /Out/) = 0;

        virtual HRESULT get_SmartArtColors(
            ksoapi::SmartArtColors **prop /Out/) = 0;

        virtual HRESULT ThreeWayMerge(
            Document *LocalDocument,
            Document *ServerDocument,
            Document *BaseDocument,
            VARIANT_BOOL FavorSource) = 0;

        virtual HRESULT Dummy4() = 0;

        virtual HRESULT get_UndoRecord(
            UndoRecord **prop /Out/) = 0;

        virtual HRESULT get_PickerDialog(
            ksoapi::PickerDialog **prop /Out/) = 0;

        virtual HRESULT get_ProtectedViewWindows(
            ProtectedViewWindows **prop /Out/) = 0;

        virtual HRESULT get_ActiveProtectedViewWindow(
            ProtectedViewWindow **prop /Out/) = 0;

        virtual HRESULT get_IsSandboxed(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_FileValidation(
            MsoFileValidationMode *prop /Out/) = 0;

        virtual HRESULT put_FileValidation(
            MsoFileValidationMode prop) = 0;

        virtual HRESULT get_ChartDataPointTrack(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ChartDataPointTrack(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowAnimation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowAnimation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OfdExportOptions(
            OfdExportOptions **prop) = 0;

        virtual HRESULT get_PdfExportOptions(
            PdfExportOptions **prop) = 0;

        virtual HRESULT get_ApplicationEx(wpsapiex::_ApplicationEx **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->QueryInterface(wpsapiex::IID__WpsApplicationEx, (void**)&a0);
        %End
    };
};
