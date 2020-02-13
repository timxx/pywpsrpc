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
    struct _Global : public IDispatch /Abstract/
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

        virtual HRESULT get_PrintPreview(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintPreview(
            VARIANT_BOOL prop) = 0;

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

        virtual HRESULT get_FileConverters(
            FileConverters **prop /Out/) = 0;

        virtual HRESULT get_Dialogs(
            Dialogs **prop /Out/) = 0;

        virtual HRESULT get_CaptionLabels(
            CaptionLabels **prop /Out/) = 0;

        virtual HRESULT get_AutoCaptions(
            AutoCaptions **prop /Out/) = 0;

        virtual HRESULT get_AddIns(
            AddIns **prop /Out/) = 0;

        virtual HRESULT get_Tasks(
            Tasks **prop /Out/) = 0;

        virtual HRESULT get_MacroContainer(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_CommandBars(
            ksoapi::CommandBars **prop /Out/) = 0;

        virtual HRESULT get_SynonymInfo(
            BSTR Word,
            VARIANT *LanguageID = argMissing(),
            SynonymInfo **prop /Out/ = 0) = 0;

        virtual HRESULT get_VBE(
            VBE **prop /Out/) = 0;

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

        virtual HRESULT get_Options(
            Options **prop /Out/) = 0;

        virtual HRESULT get_CustomDictionaries(
            Dictionaries **prop /Out/) = 0;

        virtual HRESULT put_StatusBar(
            BSTR rhs) = 0;

        virtual HRESULT get_ShowVisualBasicEditor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowVisualBasicEditor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IsObjectValid(
            IDispatch *Object,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_HangulHanjaDictionaries(
            HangulHanjaConversionDictionaries **prop /Out/) = 0;

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

        virtual HRESULT Help(
            VARIANT *HelpType) = 0;

        virtual HRESULT NewWindow(
            Window **prop /Out/) = 0;

        virtual HRESULT CleanString(
            BSTR String,
            BSTR *prop /Out/) = 0;

        virtual HRESULT ChangeFileOpenDirectory(
            BSTR Path) = 0;

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

        virtual HRESULT PointsToPixels(
            single Points,
            VARIANT *fVertical = argMissing(),
            single *prop /Out/ = 0) = 0;

        virtual HRESULT PixelsToPoints(
            single Pixels,
            VARIANT *fVertical = argMissing(),
            single *prop /Out/ = 0) = 0;

        virtual HRESULT get_LanguageSettings(
            ksoapi::LanguageSettings **prop /Out/) = 0;

        virtual HRESULT get_AnswerWizard(
            ksoapi::AnswerWizard **prop /Out/) = 0;

        virtual HRESULT get_AutoCorrectEmail(
            AutoCorrect **prop /Out/) = 0;

        virtual HRESULT get_ProtectedViewWindows(
            ProtectedViewWindows **prop /Out/) = 0;

        virtual HRESULT get_ActiveProtectedViewWindow(
            ProtectedViewWindow **prop /Out/) = 0;

        virtual HRESULT get_IsSandboxed(
            VARIANT_BOOL *prop /Out/) = 0;

    };
};
