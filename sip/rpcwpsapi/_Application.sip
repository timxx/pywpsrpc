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
Run(self, str, varg1: Any = None, varg2: Any = None, varg3: Any = None, varg4: Any = None, varg5: Any = None, varg6: Any = None, varg7: Any = None, varg8: Any = None, varg9: Any = None, varg10: Any = None, varg11: Any = None, varg12: Any = None, varg13: Any = None, varg14: Any = None, varg15: Any = None, varg16: Any = None, varg17: Any = None, varg18: Any = None, varg19: Any = None, varg20: Any = None, varg21: Any = None, varg22: Any = None, varg23: Any = None, varg24: Any = None, varg25: Any = None, varg26: Any = None, varg27: Any = None, varg28: Any = None, varg29: Any = None, varg30: Any = None) -> Tuple[int, Any]
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

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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

        Documents* getDocuments();
        %MethodCode
            wpsapi::Documents *prop = nullptr;
            HRESULT hr = sipCpp->get_Documents(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Documents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Documents, get=getDocuments)

        Windows* getWindows();
        %MethodCode
            wpsapi::Windows *prop = nullptr;
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

        Document* getActiveDocument();
        %MethodCode
            wpsapi::Document *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveDocument(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveDocument()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveDocument, get=getActiveDocument)

        Window* getActiveWindow();
        %MethodCode
            wpsapi::Window *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveWindow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveWindow, get=getActiveWindow)

        Selection* getSelection();
        %MethodCode
            wpsapi::Selection *prop = nullptr;
            HRESULT hr = sipCpp->get_Selection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Selection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Selection, get=getSelection)

        IDispatch* getWordBasic();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_WordBasic(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WordBasic()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WordBasic, get=getWordBasic)

        RecentFiles* getRecentFiles();
        %MethodCode
            wpsapi::RecentFiles *prop = nullptr;
            HRESULT hr = sipCpp->get_RecentFiles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecentFiles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RecentFiles, get=getRecentFiles)

        Template* getNormalTemplate();
        %MethodCode
            wpsapi::Template *prop = nullptr;
            HRESULT hr = sipCpp->get_NormalTemplate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NormalTemplate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NormalTemplate, get=getNormalTemplate)

        System* getSystem();
        %MethodCode
            wpsapi::System *prop = nullptr;
            HRESULT hr = sipCpp->get_System(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_System()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=System, get=getSystem)

        AutoCorrect* getAutoCorrect();
        %MethodCode
            wpsapi::AutoCorrect *prop = nullptr;
            HRESULT hr = sipCpp->get_AutoCorrect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoCorrect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoCorrect, get=getAutoCorrect)

        FontNames* getFontNames();
        %MethodCode
            wpsapi::FontNames *prop = nullptr;
            HRESULT hr = sipCpp->get_FontNames(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FontNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FontNames, get=getFontNames)

        FontNames* getLandscapeFontNames();
        %MethodCode
            wpsapi::FontNames *prop = nullptr;
            HRESULT hr = sipCpp->get_LandscapeFontNames(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LandscapeFontNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LandscapeFontNames, get=getLandscapeFontNames)

        FontNames* getPortraitFontNames();
        %MethodCode
            wpsapi::FontNames *prop = nullptr;
            HRESULT hr = sipCpp->get_PortraitFontNames(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PortraitFontNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PortraitFontNames, get=getPortraitFontNames)

        Languages* getLanguages();
        %MethodCode
            wpsapi::Languages *prop = nullptr;
            HRESULT hr = sipCpp->get_Languages(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Languages()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Languages, get=getLanguages)

        ksoapi::Assistant* getAssistant();
        %MethodCode
            ksoapi::Assistant *prop = nullptr;
            HRESULT hr = sipCpp->get_Assistant(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Assistant()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Assistant, get=getAssistant)

        Browser* getBrowser();
        %MethodCode
            wpsapi::Browser *prop = nullptr;
            HRESULT hr = sipCpp->get_Browser(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Browser()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Browser, get=getBrowser)

        FileConverters* getFileConverters();
        %MethodCode
            wpsapi::FileConverters *prop = nullptr;
            HRESULT hr = sipCpp->get_FileConverters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileConverters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FileConverters, get=getFileConverters)

        MailingLabel* getMailingLabel();
        %MethodCode
            wpsapi::MailingLabel *prop = nullptr;
            HRESULT hr = sipCpp->get_MailingLabel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailingLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MailingLabel, get=getMailingLabel)

        Dialogs* getDialogs();
        %MethodCode
            wpsapi::Dialogs *prop = nullptr;
            HRESULT hr = sipCpp->get_Dialogs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dialogs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Dialogs, get=getDialogs)

        CaptionLabels* getCaptionLabels();
        %MethodCode
            wpsapi::CaptionLabels *prop = nullptr;
            HRESULT hr = sipCpp->get_CaptionLabels(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CaptionLabels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CaptionLabels, get=getCaptionLabels)

        AutoCaptions* getAutoCaptions();
        %MethodCode
            wpsapi::AutoCaptions *prop = nullptr;
            HRESULT hr = sipCpp->get_AutoCaptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoCaptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoCaptions, get=getAutoCaptions)

        AddIns* getAddIns();
        %MethodCode
            wpsapi::AddIns *prop = nullptr;
            HRESULT hr = sipCpp->get_AddIns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddIns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AddIns, get=getAddIns)

        VARIANT_BOOL getVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(*a0);
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

        BSTR getVersion();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Version(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Version()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Version, get=getVersion)

        VARIANT_BOOL getScreenUpdating();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ScreenUpdating(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScreenUpdating()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScreenUpdating(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScreenUpdating(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScreenUpdating()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScreenUpdating, get=getScreenUpdating, set=setScreenUpdating)

        VARIANT_BOOL getPrintPreview();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintPreview(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintPreview()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintPreview(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintPreview(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintPreview()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintPreview, get=getPrintPreview, set=setPrintPreview)

        Tasks* getTasks();
        %MethodCode
            wpsapi::Tasks *prop = nullptr;
            HRESULT hr = sipCpp->get_Tasks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tasks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tasks, get=getTasks)

        VARIANT_BOOL getDisplayStatusBar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayStatusBar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayStatusBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayStatusBar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayStatusBar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayStatusBar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayStatusBar, get=getDisplayStatusBar, set=setDisplayStatusBar)

        VARIANT_BOOL getSpecialMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SpecialMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpecialMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SpecialMode, get=getSpecialMode)

        long getUsableWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_UsableWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UsableWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UsableWidth, get=getUsableWidth)

        long getUsableHeight();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_UsableHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UsableHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UsableHeight, get=getUsableHeight)

        VARIANT_BOOL getMathCoprocessorAvailable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MathCoprocessorAvailable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MathCoprocessorAvailable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MathCoprocessorAvailable, get=getMathCoprocessorAvailable)

        VARIANT_BOOL getMouseAvailable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MouseAvailable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MouseAvailable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MouseAvailable, get=getMouseAvailable)

        BSTR getBuild();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Build(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Build()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Build, get=getBuild)

        VARIANT_BOOL getCapsLock();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CapsLock(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CapsLock()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CapsLock, get=getCapsLock)

        VARIANT_BOOL getNumLock();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NumLock(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumLock()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NumLock, get=getNumLock)

        BSTR getUserName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_UserName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUserName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UserName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UserName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UserName, get=getUserName, set=setUserName)

        BSTR getUserInitials();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_UserInitials(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserInitials()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUserInitials(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UserInitials(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UserInitials()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UserInitials, get=getUserInitials, set=setUserInitials)

        BSTR getUserAddress();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_UserAddress(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserAddress()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUserAddress(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UserAddress(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UserAddress()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UserAddress, get=getUserAddress, set=setUserAddress)

        IDispatch* getMacroContainer();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_MacroContainer(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MacroContainer()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MacroContainer, get=getMacroContainer)

        VARIANT_BOOL getDisplayRecentFiles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayRecentFiles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayRecentFiles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayRecentFiles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayRecentFiles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayRecentFiles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayRecentFiles, get=getDisplayRecentFiles, set=setDisplayRecentFiles)

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

        VBE* getVBE();
        %MethodCode
            wpsapi::VBE *prop = nullptr;
            HRESULT hr = sipCpp->get_VBE(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VBE()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VBE, get=getVBE)

        BSTR getDefaultSaveFormat();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DefaultSaveFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultSaveFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultSaveFormat(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultSaveFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultSaveFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultSaveFormat, get=getDefaultSaveFormat, set=setDefaultSaveFormat)

        ListGalleries* getListGalleries();
        %MethodCode
            wpsapi::ListGalleries *prop = nullptr;
            HRESULT hr = sipCpp->get_ListGalleries(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListGalleries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListGalleries, get=getListGalleries)

        BSTR getActivePrinter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ActivePrinter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActivePrinter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setActivePrinter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ActivePrinter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ActivePrinter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ActivePrinter, get=getActivePrinter, set=setActivePrinter)

        Templates* getTemplates();
        %MethodCode
            wpsapi::Templates *prop = nullptr;
            HRESULT hr = sipCpp->get_Templates(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Templates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Templates, get=getTemplates)

        IDispatch* getCustomizationContext();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomizationContext(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomizationContext()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCustomizationContext(IDispatch *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CustomizationContext(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CustomizationContext()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CustomizationContext, get=getCustomizationContext, set=setCustomizationContext)

        KeyBindings* getKeyBindings();
        %MethodCode
            wpsapi::KeyBindings *prop = nullptr;
            HRESULT hr = sipCpp->get_KeyBindings(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeyBindings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=KeyBindings, get=getKeyBindings)

        BSTR getCaption();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Caption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Caption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCaption(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Caption(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Caption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Caption, get=getCaption, set=setCaption)

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

        VARIANT_BOOL getDisplayScrollBars();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayScrollBars(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayScrollBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayScrollBars(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayScrollBars(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayScrollBars()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayScrollBars, get=getDisplayScrollBars, set=setDisplayScrollBars)

        BSTR getStartupPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_StartupPath(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartupPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStartupPath(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StartupPath(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StartupPath()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StartupPath, get=getStartupPath, set=setStartupPath)

        long getBackgroundSavingStatus();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BackgroundSavingStatus(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundSavingStatus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BackgroundSavingStatus, get=getBackgroundSavingStatus)

        long getBackgroundPrintingStatus();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BackgroundPrintingStatus(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundPrintingStatus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BackgroundPrintingStatus, get=getBackgroundPrintingStatus)

        long getLeft();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeft(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Left(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Left()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Left, get=getLeft, set=setLeft)

        long getTop();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTop(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Top(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Top()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Top, get=getTop, set=setTop)

        long getWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidth(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)

        long getHeight();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        WdWindowState getWindowState();
        %MethodCode
            wpsapi::WdWindowState prop = (wpsapi::WdWindowState)0;
            HRESULT hr = sipCpp->get_WindowState(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WindowState()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWindowState(WdWindowState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WindowState(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WindowState()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WindowState, get=getWindowState, set=setWindowState)

        VARIANT_BOOL getDisplayAutoCompleteTips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAutoCompleteTips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAutoCompleteTips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAutoCompleteTips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAutoCompleteTips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAutoCompleteTips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAutoCompleteTips, get=getDisplayAutoCompleteTips, set=setDisplayAutoCompleteTips)

        Options* getOptions();
        %MethodCode
            wpsapi::Options *prop = nullptr;
            HRESULT hr = sipCpp->get_Options(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Options()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Options, get=getOptions)

        WdAlertLevel getDisplayAlerts();
        %MethodCode
            wpsapi::WdAlertLevel prop = (wpsapi::WdAlertLevel)0;
            HRESULT hr = sipCpp->get_DisplayAlerts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAlerts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAlerts(WdAlertLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAlerts(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAlerts()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAlerts, get=getDisplayAlerts, set=setDisplayAlerts)

        Dictionaries* getCustomDictionaries();
        %MethodCode
            wpsapi::Dictionaries *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomDictionaries(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomDictionaries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomDictionaries, get=getCustomDictionaries)

        BSTR getPathSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PathSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PathSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PathSeparator, get=getPathSeparator)

        VARIANT_BOOL getMAPIAvailable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MAPIAvailable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MAPIAvailable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MAPIAvailable, get=getMAPIAvailable)

        VARIANT_BOOL getDisplayScreenTips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayScreenTips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayScreenTips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayScreenTips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayScreenTips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayScreenTips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayScreenTips, get=getDisplayScreenTips, set=setDisplayScreenTips)

        WdEnableCancelKey getEnableCancelKey();
        %MethodCode
            wpsapi::WdEnableCancelKey prop = (wpsapi::WdEnableCancelKey)0;
            HRESULT hr = sipCpp->get_EnableCancelKey(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableCancelKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableCancelKey(WdEnableCancelKey prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableCancelKey(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableCancelKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableCancelKey, get=getEnableCancelKey, set=setEnableCancelKey)

        VARIANT_BOOL getUserControl();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UserControl(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UserControl, get=getUserControl)

        ksoapi::FileSearch* getFileSearch();
        %MethodCode
            ksoapi::FileSearch *prop = nullptr;
            HRESULT hr = sipCpp->get_FileSearch(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileSearch()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FileSearch, get=getFileSearch)

        WdMailSystem getMailSystem();
        %MethodCode
            wpsapi::WdMailSystem prop = (wpsapi::WdMailSystem)0;
            HRESULT hr = sipCpp->get_MailSystem(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailSystem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MailSystem, get=getMailSystem)

        BSTR getDefaultTableSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DefaultTableSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTableSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTableSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTableSeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTableSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTableSeparator, get=getDefaultTableSeparator, set=setDefaultTableSeparator)

        VARIANT_BOOL getShowVisualBasicEditor();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowVisualBasicEditor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowVisualBasicEditor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowVisualBasicEditor(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowVisualBasicEditor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowVisualBasicEditor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowVisualBasicEditor, get=getShowVisualBasicEditor, set=setShowVisualBasicEditor)

        BSTR getBrowseExtraFileTypes();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_BrowseExtraFileTypes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BrowseExtraFileTypes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBrowseExtraFileTypes(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BrowseExtraFileTypes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BrowseExtraFileTypes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BrowseExtraFileTypes, get=getBrowseExtraFileTypes, set=setBrowseExtraFileTypes)

        HangulHanjaConversionDictionaries* getHangulHanjaDictionaries();
        %MethodCode
            wpsapi::HangulHanjaConversionDictionaries *prop = nullptr;
            HRESULT hr = sipCpp->get_HangulHanjaDictionaries(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HangulHanjaDictionaries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HangulHanjaDictionaries, get=getHangulHanjaDictionaries)

        MailMessage* getMailMessage();
        %MethodCode
            wpsapi::MailMessage *prop = nullptr;
            HRESULT hr = sipCpp->get_MailMessage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailMessage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MailMessage, get=getMailMessage)

        VARIANT_BOOL getFocusInMailHeader();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FocusInMailHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FocusInMailHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FocusInMailHeader, get=getFocusInMailHeader)

        EmailOptions* getEmailOptions();
        %MethodCode
            wpsapi::EmailOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_EmailOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmailOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EmailOptions, get=getEmailOptions)

        MsoLanguageID getLanguage();
        %MethodCode
            wpsapi::MsoLanguageID prop = (wpsapi::MsoLanguageID)0;
            HRESULT hr = sipCpp->get_Language(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Language()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Language, get=getLanguage)

        ksoapi::COMAddIns* getCOMAddIns();
        %MethodCode
            ksoapi::COMAddIns *prop = nullptr;
            HRESULT hr = sipCpp->get_COMAddIns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_COMAddIns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=COMAddIns, get=getCOMAddIns)

        VARIANT_BOOL getCheckLanguage();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CheckLanguage(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckLanguage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckLanguage(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckLanguage(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CheckLanguage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CheckLanguage, get=getCheckLanguage, set=setCheckLanguage)

        ksoapi::LanguageSettings* getLanguageSettings();
        %MethodCode
            ksoapi::LanguageSettings *prop = nullptr;
            HRESULT hr = sipCpp->get_LanguageSettings(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageSettings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LanguageSettings, get=getLanguageSettings)

        VARIANT_BOOL getDummy1();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Dummy1(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dummy1()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Dummy1, get=getDummy1)

        ksoapi::AnswerWizard* getAnswerWizard();
        %MethodCode
            ksoapi::AnswerWizard *prop = nullptr;
            HRESULT hr = sipCpp->get_AnswerWizard(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AnswerWizard()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AnswerWizard, get=getAnswerWizard)

        MsoFeatureInstall getFeatureInstall();
        %MethodCode
            wpsapi::MsoFeatureInstall prop = (wpsapi::MsoFeatureInstall)0;
            HRESULT hr = sipCpp->get_FeatureInstall(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FeatureInstall()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFeatureInstall(MsoFeatureInstall prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FeatureInstall(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FeatureInstall()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FeatureInstall, get=getFeatureInstall, set=setFeatureInstall)

        MsoAutomationSecurity getAutomationSecurity();
        %MethodCode
            wpsapi::MsoAutomationSecurity prop = (wpsapi::MsoAutomationSecurity)0;
            HRESULT hr = sipCpp->get_AutomationSecurity(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutomationSecurity()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutomationSecurity(MsoAutomationSecurity prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutomationSecurity(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutomationSecurity()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutomationSecurity, get=getAutomationSecurity, set=setAutomationSecurity)

        BSTR getEmailTemplate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_EmailTemplate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmailTemplate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmailTemplate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmailTemplate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmailTemplate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmailTemplate, get=getEmailTemplate, set=setEmailTemplate)

        VARIANT_BOOL getShowWindowsInTaskbar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowWindowsInTaskbar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowWindowsInTaskbar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowWindowsInTaskbar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowWindowsInTaskbar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowWindowsInTaskbar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowWindowsInTaskbar, get=getShowWindowsInTaskbar, set=setShowWindowsInTaskbar)

        ksoapi::NewFile* getNewDocument();
        %MethodCode
            ksoapi::NewFile *prop = nullptr;
            HRESULT hr = sipCpp->get_NewDocument(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NewDocument()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NewDocument, get=getNewDocument)

        VARIANT_BOOL getShowStartupDialog();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowStartupDialog(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowStartupDialog()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowStartupDialog(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowStartupDialog(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowStartupDialog()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowStartupDialog, get=getShowStartupDialog, set=setShowStartupDialog)

        AutoCorrect* getAutoCorrectEmail();
        %MethodCode
            wpsapi::AutoCorrect *prop = nullptr;
            HRESULT hr = sipCpp->get_AutoCorrectEmail(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoCorrectEmail()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoCorrectEmail, get=getAutoCorrectEmail)

        TaskPanes* getTaskPanes();
        %MethodCode
            wpsapi::TaskPanes *prop = nullptr;
            HRESULT hr = sipCpp->get_TaskPanes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TaskPanes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TaskPanes, get=getTaskPanes)

        VARIANT_BOOL getDefaultLegalBlackline();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DefaultLegalBlackline(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultLegalBlackline()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultLegalBlackline(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultLegalBlackline(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultLegalBlackline()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultLegalBlackline, get=getDefaultLegalBlackline, set=setDefaultLegalBlackline)

        SmartTagRecognizers* getSmartTagRecognizers();
        %MethodCode
            wpsapi::SmartTagRecognizers *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartTagRecognizers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartTagRecognizers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartTagRecognizers, get=getSmartTagRecognizers)

        SmartTagTypes* getSmartTagTypes();
        %MethodCode
            wpsapi::SmartTagTypes *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartTagTypes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartTagTypes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartTagTypes, get=getSmartTagTypes)

        XMLNamespaces* getXMLNamespaces();
        %MethodCode
            wpsapi::XMLNamespaces *prop = nullptr;
            HRESULT hr = sipCpp->get_XMLNamespaces(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLNamespaces()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XMLNamespaces, get=getXMLNamespaces)

        VARIANT_BOOL getArbitraryXMLSupportAvailable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ArbitraryXMLSupportAvailable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArbitraryXMLSupportAvailable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ArbitraryXMLSupportAvailable, get=getArbitraryXMLSupportAvailable)

        BSTR getBuildFull();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_BuildFull(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuildFull()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuildFull, get=getBuildFull)

        BSTR getBuildFeatureCrew();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_BuildFeatureCrew(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuildFeatureCrew()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuildFeatureCrew, get=getBuildFeatureCrew)

        Bibliography* getBibliography();
        %MethodCode
            wpsapi::Bibliography *prop = nullptr;
            HRESULT hr = sipCpp->get_Bibliography(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bibliography()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Bibliography, get=getBibliography)

        VARIANT_BOOL getShowStylePreviews();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowStylePreviews(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowStylePreviews()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowStylePreviews(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowStylePreviews(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowStylePreviews()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowStylePreviews, get=getShowStylePreviews, set=setShowStylePreviews)

        VARIANT_BOOL getRestrictLinkedStyles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RestrictLinkedStyles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RestrictLinkedStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRestrictLinkedStyles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RestrictLinkedStyles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RestrictLinkedStyles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RestrictLinkedStyles, get=getRestrictLinkedStyles, set=setRestrictLinkedStyles)

        OMathAutoCorrect* getOMathAutoCorrect();
        %MethodCode
            wpsapi::OMathAutoCorrect *prop = nullptr;
            HRESULT hr = sipCpp->get_OMathAutoCorrect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathAutoCorrect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OMathAutoCorrect, get=getOMathAutoCorrect)

        VARIANT_BOOL getDisplayDocumentInformationPanel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayDocumentInformationPanel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayDocumentInformationPanel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayDocumentInformationPanel(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayDocumentInformationPanel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayDocumentInformationPanel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayDocumentInformationPanel, get=getDisplayDocumentInformationPanel, set=setDisplayDocumentInformationPanel)

        ksoapi::IAssistance* getAssistance();
        %MethodCode
            ksoapi::IAssistance *prop = nullptr;
            HRESULT hr = sipCpp->get_Assistance(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Assistance()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Assistance, get=getAssistance)

        VARIANT_BOOL getOpenAttachmentsInFullScreen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OpenAttachmentsInFullScreen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OpenAttachmentsInFullScreen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOpenAttachmentsInFullScreen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OpenAttachmentsInFullScreen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OpenAttachmentsInFullScreen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OpenAttachmentsInFullScreen, get=getOpenAttachmentsInFullScreen, set=setOpenAttachmentsInFullScreen)

        long getActiveEncryptionSession();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ActiveEncryptionSession(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveEncryptionSession()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveEncryptionSession, get=getActiveEncryptionSession)

        VARIANT_BOOL getDontResetInsertionPointProperties();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DontResetInsertionPointProperties(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DontResetInsertionPointProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDontResetInsertionPointProperties(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DontResetInsertionPointProperties(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DontResetInsertionPointProperties()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DontResetInsertionPointProperties, get=getDontResetInsertionPointProperties, set=setDontResetInsertionPointProperties)

        ksoapi::SmartArtLayouts* getSmartArtLayouts();
        %MethodCode
            ksoapi::SmartArtLayouts *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartArtLayouts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartArtLayouts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartArtLayouts, get=getSmartArtLayouts)

        ksoapi::SmartArtQuickStyles* getSmartArtQuickStyles();
        %MethodCode
            ksoapi::SmartArtQuickStyles *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartArtQuickStyles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartArtQuickStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartArtQuickStyles, get=getSmartArtQuickStyles)

        ksoapi::SmartArtColors* getSmartArtColors();
        %MethodCode
            ksoapi::SmartArtColors *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartArtColors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartArtColors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartArtColors, get=getSmartArtColors)

        UndoRecord* getUndoRecord();
        %MethodCode
            wpsapi::UndoRecord *prop = nullptr;
            HRESULT hr = sipCpp->get_UndoRecord(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UndoRecord()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UndoRecord, get=getUndoRecord)

        ksoapi::PickerDialog* getPickerDialog();
        %MethodCode
            ksoapi::PickerDialog *prop = nullptr;
            HRESULT hr = sipCpp->get_PickerDialog(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PickerDialog()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PickerDialog, get=getPickerDialog)

        ProtectedViewWindows* getProtectedViewWindows();
        %MethodCode
            wpsapi::ProtectedViewWindows *prop = nullptr;
            HRESULT hr = sipCpp->get_ProtectedViewWindows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectedViewWindows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectedViewWindows, get=getProtectedViewWindows)

        ProtectedViewWindow* getActiveProtectedViewWindow();
        %MethodCode
            wpsapi::ProtectedViewWindow *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveProtectedViewWindow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveProtectedViewWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveProtectedViewWindow, get=getActiveProtectedViewWindow)

        VARIANT_BOOL getIsSandboxed();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsSandboxed(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsSandboxed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsSandboxed, get=getIsSandboxed)

        MsoFileValidationMode getFileValidation();
        %MethodCode
            wpsapi::MsoFileValidationMode prop = (wpsapi::MsoFileValidationMode)0;
            HRESULT hr = sipCpp->get_FileValidation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileValidation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFileValidation(MsoFileValidationMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FileValidation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FileValidation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FileValidation, get=getFileValidation, set=setFileValidation)

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

        VARIANT_BOOL getShowAnimation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAnimation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAnimation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAnimation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAnimation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAnimation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAnimation, get=getShowAnimation, set=setShowAnimation)

        wpsapiex::_ApplicationEx* getApplicationEx();
        %MethodCode
            wpsapiex::_ApplicationEx *prop = nullptr;
            HRESULT hr = sipCpp->QueryInterface(wpsapiex::IID__WpsApplicationEx, (void**)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'QueryInterface()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ApplicationEx, get=getApplicationEx)
    };
};
