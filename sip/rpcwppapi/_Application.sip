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
            VARIANT_BOOL Persist = VARIANT_FALSE,
            VARIANT_BOOL *GetOptionFlag /Out/ = 0) = 0;

        virtual HRESULT SetOptionFlag(
            long Option,
            VARIANT_BOOL State,
            VARIANT_BOOL Persist = VARIANT_FALSE) = 0;

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

        virtual HRESULT get_ApplicationEx(wpsapiex::_ApplicationEx **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->QueryInterface(wpsapiex::IID__WppApplicationEx, (void**)&a0);
        %End

        Presentations* getPresentations();
        %MethodCode
            wppapi::Presentations *prop = nullptr;
            HRESULT hr = sipCpp->get_Presentations(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Presentations()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Presentations, get=getPresentations)

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

        IUnknown* getDialogs();
        %MethodCode
            IUnknown *prop = nullptr;
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

        DocumentWindow* getActiveWindow();
        %MethodCode
            wppapi::DocumentWindow *prop = nullptr;
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

        Presentation* getActivePresentation();
        %MethodCode
            wppapi::Presentation *prop = nullptr;
            HRESULT hr = sipCpp->get_ActivePresentation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActivePresentation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActivePresentation, get=getActivePresentation)

        SlideShowWindows* getSlideShowWindows();
        %MethodCode
            wppapi::SlideShowWindows *prop = nullptr;
            HRESULT hr = sipCpp->get_SlideShowWindows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideShowWindows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideShowWindows, get=getSlideShowWindows)

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

        ksoapi::IFind* getFileFind();
        %MethodCode
            ksoapi::IFind *prop = nullptr;
            HRESULT hr = sipCpp->get_FileFind(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileFind()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FileFind, get=getFileFind)

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

        BSTR getOperatingSystem();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OperatingSystem(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OperatingSystem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OperatingSystem, get=getOperatingSystem)

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

        %Property(name=ActivePrinter, get=getActivePrinter)

        AddIns* getAddIns();
        %MethodCode
            wppapi::AddIns *prop = nullptr;
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

        VBE* getVBE();
        %MethodCode
            wppapi::VBE *prop = nullptr;
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

        single getLeft();
        %MethodCode
            wppapi::single prop = 0;
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

        PyObject* setLeft(single prop);
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

        single getTop();
        %MethodCode
            wppapi::single prop = 0;
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

        PyObject* setTop(single prop);
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

        single getWidth();
        %MethodCode
            wppapi::single prop = 0;
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

        PyObject* setWidth(single prop);
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

        single getHeight();
        %MethodCode
            wppapi::single prop = 0;
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

        PyObject* setHeight(single prop);
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

        PpWindowState getWindowState();
        %MethodCode
            wppapi::PpWindowState prop = (wppapi::PpWindowState)0;
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

        PyObject* setWindowState(PpWindowState prop);
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

        MsoTriState getVisible();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Visible(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(a0);
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

        long getHWND();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HWND(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HWND()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HWND, get=getHWND)

        MsoTriState getActive();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Active(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Active()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Active, get=getActive)

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

        BSTR getProductCode();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ProductCode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProductCode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProductCode, get=getProductCode)

        DefaultWebOptions* getDefaultWebOptions();
        %MethodCode
            wppapi::DefaultWebOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_DefaultWebOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultWebOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DefaultWebOptions, get=getDefaultWebOptions)

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

        ksoapi::MsoDebugOptions* getMsoDebugOptions();
        %MethodCode
            ksoapi::MsoDebugOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_MsoDebugOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MsoDebugOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MsoDebugOptions, get=getMsoDebugOptions)

        MsoTriState getShowWindowsInTaskbar();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowWindowsInTaskbar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowWindowsInTaskbar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowWindowsInTaskbar(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowWindowsInTaskbar(a0);
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

        IUnknown* getMarker();
        %MethodCode
            IUnknown *prop = nullptr;
            HRESULT hr = sipCpp->get_Marker(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Marker()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Marker, get=getMarker)

        MsoFeatureInstall getFeatureInstall();
        %MethodCode
            wppapi::MsoFeatureInstall prop = (wppapi::MsoFeatureInstall)0;
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

        MsoTriState getDisplayGridLines();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_DisplayGridLines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayGridLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayGridLines(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayGridLines(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayGridLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayGridLines, get=getDisplayGridLines, set=setDisplayGridLines)

        MsoAutomationSecurity getAutomationSecurity();
        %MethodCode
            wppapi::MsoAutomationSecurity prop = (wppapi::MsoAutomationSecurity)0;
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

        ksoapi::NewFile* getNewPresentation();
        %MethodCode
            ksoapi::NewFile *prop = nullptr;
            HRESULT hr = sipCpp->get_NewPresentation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NewPresentation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NewPresentation, get=getNewPresentation)

        PpAlertLevel getDisplayAlerts();
        %MethodCode
            wppapi::PpAlertLevel prop = (wppapi::PpAlertLevel)0;
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

        PyObject* setDisplayAlerts(PpAlertLevel prop);
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

        MsoTriState getShowStartupDialog();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowStartupDialog(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowStartupDialog()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowStartupDialog(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowStartupDialog(a0);
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

        AutoCorrect* getAutoCorrect();
        %MethodCode
            wppapi::AutoCorrect *prop = nullptr;
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

        Options* getOptions();
        %MethodCode
            wppapi::Options *prop = nullptr;
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

        FileConverters* getFileConverters();
        %MethodCode
            wppapi::FileConverters *prop = nullptr;
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

        ProtectedViewWindows* getProtectedViewWindows();
        %MethodCode
            wppapi::ProtectedViewWindows *prop = nullptr;
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
            wppapi::ProtectedViewWindow *prop = nullptr;
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

        ResampleMediaTasks* getResampleMediaTasks();
        %MethodCode
            wppapi::ResampleMediaTasks *prop = nullptr;
            HRESULT hr = sipCpp->get_ResampleMediaTasks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ResampleMediaTasks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ResampleMediaTasks, get=getResampleMediaTasks)

        MsoFileValidationMode getFileValidation();
        %MethodCode
            wppapi::MsoFileValidationMode prop = (wppapi::MsoFileValidationMode)0;
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

        MsoTriState getDisplayGuides();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_DisplayGuides(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayGuides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayGuides(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayGuides(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayGuides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayGuides, get=getDisplayGuides, set=setDisplayGuides)

        wpsapiex::_ApplicationEx* getApplicationEx();
        %MethodCode
            wpsapiex::_ApplicationEx *prop = nullptr;
            HRESULT hr = sipCpp->QueryInterface(wpsapiex::IID__WppApplicationEx, (void**)&prop);
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
