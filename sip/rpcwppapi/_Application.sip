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
    struct _Application : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Presentations(
            Presentations **Presentations /Out/) = 0;

        virtual HRESULT get_Windows(
            DocumentWindows **Windows /Out/) = 0;

        virtual HRESULT get_Dialogs(
            IUnknown **Dialogs /Out/) = 0;

        virtual HRESULT get_ActiveWindow(
            DocumentWindow **ActiveWindow /Out/) = 0;

        virtual HRESULT get_ActivePresentation(
            Presentation **ActivePresentation /Out/) = 0;

        virtual HRESULT get_SlideShowWindows(
            SlideShowWindows **SlideShowWindows /Out/) = 0;

        virtual HRESULT get_CommandBars(
            ksoapi::CommandBars **CommandBars /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *Path /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *Caption /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR Caption) = 0;

        virtual HRESULT get_Assistant(
            ksoapi::Assistant **Assistant /Out/) = 0;

        virtual HRESULT get_FileSearch(
            ksoapi::FileSearch **FileSearch /Out/) = 0;

        virtual HRESULT get_FileFind(
            ksoapi::IFind **FileFind /Out/) = 0;

        virtual HRESULT get_Build(
            BSTR *Build /Out/) = 0;

        virtual HRESULT get_Version(
            BSTR *Version /Out/) = 0;

        virtual HRESULT get_OperatingSystem(
            BSTR *OperatingSystem /Out/) = 0;

        virtual HRESULT get_ActivePrinter(
            BSTR *ActivePrinter /Out/) = 0;

        virtual HRESULT get_Creator(
            long *Creator /Out/) = 0;

        virtual HRESULT get_AddIns(
            AddIns **AddIns /Out/) = 0;

        virtual HRESULT get_VBE(
            VBE **VBE /Out/) = 0;

        virtual HRESULT Help(
            BSTR HelpFile = 0,
            int ContextID = 0) = 0;

        virtual HRESULT Quit() = 0;

        virtual HRESULT Run(
            BSTR MacroName,
            SAFEARRAY * *safeArrayOfParams,
            VARIANT *Run /Out/) = 0;

        virtual HRESULT PPFileDialog(
            PpFileDialogType Type,
            IUnknown **PPFileDialog /Out/) = 0;

        virtual HRESULT LaunchSpelling(
            DocumentWindow *pWindow) = 0;

        virtual HRESULT get_Left(
            single *Left /Out/) = 0;

        virtual HRESULT put_Left(
            single Left) = 0;

        virtual HRESULT get_Top(
            single *Top /Out/) = 0;

        virtual HRESULT put_Top(
            single Top) = 0;

        virtual HRESULT get_Width(
            single *Width /Out/) = 0;

        virtual HRESULT put_Width(
            single Width) = 0;

        virtual HRESULT get_Height(
            single *Height /Out/) = 0;

        virtual HRESULT put_Height(
            single Height) = 0;

        virtual HRESULT get_WindowState(
            PpWindowState *WindowState /Out/) = 0;

        virtual HRESULT put_WindowState(
            PpWindowState WindowState) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_HWND(
            long *HWND /Out/) = 0;

        virtual HRESULT get_Active(
            MsoTriState *Active /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_AnswerWizard(
            ksoapi::AnswerWizard **AnswerWizard /Out/) = 0;

        virtual HRESULT get_COMAddIns(
            ksoapi::COMAddIns **COMAddIns /Out/) = 0;

        virtual HRESULT get_ProductCode(
            BSTR *ProductCode /Out/) = 0;

        virtual HRESULT get_DefaultWebOptions(
            DefaultWebOptions **DefaultWebOptions /Out/) = 0;

        virtual HRESULT get_LanguageSettings(
            ksoapi::LanguageSettings **LanguageSettings /Out/) = 0;

        virtual HRESULT get_MsoDebugOptions(
            ksoapi::MsoDebugOptions **MsoDebugOptions /Out/) = 0;

        virtual HRESULT get_ShowWindowsInTaskbar(
            MsoTriState *ShowWindowsInTaskbar /Out/) = 0;

        virtual HRESULT put_ShowWindowsInTaskbar(
            MsoTriState ShowWindowsInTaskbar) = 0;

        virtual HRESULT get_Marker(
            IUnknown **Marker /Out/) = 0;

        virtual HRESULT get_FeatureInstall(
            MsoFeatureInstall *FeatureInstall /Out/) = 0;

        virtual HRESULT put_FeatureInstall(
            MsoFeatureInstall FeatureInstall) = 0;

        virtual HRESULT GetOptionFlag(
            long Option,
            VARIANT_BOOL Persist,
            VARIANT_BOOL *GetOptionFlag /Out/) = 0;

        virtual HRESULT SetOptionFlag(
            long Option,
            VARIANT_BOOL State,
            VARIANT_BOOL Persist = 0) = 0;

        virtual HRESULT get_FileDialog(
            MsoFileDialogType Type,
            ksoapi::FileDialog **FileDialog /Out/) = 0;

        virtual HRESULT get_DisplayGridLines(
            MsoTriState *DisplayGridLines /Out/) = 0;

        virtual HRESULT put_DisplayGridLines(
            MsoTriState DisplayGridLines) = 0;

        virtual HRESULT get_AutomationSecurity(
            MsoAutomationSecurity *AutomationSecurity /Out/) = 0;

        virtual HRESULT put_AutomationSecurity(
            MsoAutomationSecurity AutomationSecurity) = 0;

        virtual HRESULT get_NewPresentation(
            ksoapi::NewFile **NewPresentation /Out/) = 0;

        virtual HRESULT get_DisplayAlerts(
            PpAlertLevel *DisplayAlerts /Out/) = 0;

        virtual HRESULT put_DisplayAlerts(
            PpAlertLevel DisplayAlerts) = 0;

        virtual HRESULT get_ShowStartupDialog(
            MsoTriState *ShowStartupDialog /Out/) = 0;

        virtual HRESULT put_ShowStartupDialog(
            MsoTriState ShowStartupDialog) = 0;

        virtual HRESULT SetPerfMarker(
            int Marker) = 0;

        virtual HRESULT get_AutoCorrect(
            AutoCorrect **AutoCorrect /Out/) = 0;

        virtual HRESULT get_Options(
            Options **Options /Out/) = 0;

        virtual HRESULT LaunchPublishSlidesDialog(
            BSTR SlideLibraryUrl) = 0;

        virtual HRESULT LaunchSendToPPTDialog(
            VARIANT *SlideUrls) = 0;

        virtual HRESULT get_DisplayDocumentInformationPanel(
            VARIANT_BOOL *DisplayDocumentInformationPanel /Out/) = 0;

        virtual HRESULT put_DisplayDocumentInformationPanel(
            VARIANT_BOOL DisplayDocumentInformationPanel) = 0;

        virtual HRESULT get_Assistance(
            ksoapi::IAssistance **Assistance /Out/) = 0;

        virtual HRESULT get_ActiveEncryptionSession(
            long *ActiveEncryptionSession /Out/) = 0;

        virtual HRESULT get_FileConverters(
            FileConverters **FileConverters /Out/) = 0;

        virtual HRESULT get_SmartArtLayouts(
            ksoapi::SmartArtLayouts **SmartArtLayouts /Out/) = 0;

        virtual HRESULT get_SmartArtQuickStyles(
            ksoapi::SmartArtQuickStyles **SmartArtQuickStyles /Out/) = 0;

        virtual HRESULT get_SmartArtColors(
            ksoapi::SmartArtColors **SmartArtColors /Out/) = 0;

        virtual HRESULT get_ProtectedViewWindows(
            ProtectedViewWindows **ProtectedViewWindows /Out/) = 0;

        virtual HRESULT get_ActiveProtectedViewWindow(
            ProtectedViewWindow **ActiveProtectedViewWindow /Out/) = 0;

        virtual HRESULT get_IsSandboxed(
            VARIANT_BOOL *IsSandboxed /Out/) = 0;

        virtual HRESULT get_ResampleMediaTasks(
            ResampleMediaTasks **ResampleMediaTasks /Out/) = 0;

        virtual HRESULT StartNewUndoEntry() = 0;

        virtual HRESULT get_FileValidation(
            MsoFileValidationMode *FileValidation /Out/) = 0;

        virtual HRESULT put_FileValidation(
            MsoFileValidationMode FileValidation) = 0;

        virtual HRESULT OpenThemeFile(
            BSTR themeFileName,
            Theme **Theme /Out/) = 0;

        virtual HRESULT get_ChartDataPointTrack(
            VARIANT_BOOL *pfChartDataPointTrack /Out/) = 0;

        virtual HRESULT put_ChartDataPointTrack(
            VARIANT_BOOL pfChartDataPointTrack) = 0;

        virtual HRESULT get_DisplayGuides(
            MsoTriState *DisplayGridLines /Out/) = 0;

        virtual HRESULT put_DisplayGuides(
            MsoTriState DisplayGridLines) = 0;

    };
};
