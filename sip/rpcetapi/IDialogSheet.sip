/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IDialogSheet : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Activate(
            long lcid) = 0;

        virtual HRESULT Copy(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Delete(
            long lcid) = 0;

        virtual HRESULT get_CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get__CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__CodeName(
            BSTR RHS) = 0;

        virtual HRESULT get_Index(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT Move(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Next(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_OnDoubleClick(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnDoubleClick(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetActivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetActivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetDeactivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetDeactivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_PageSetup(
            PageSetup **RHS /Out/) = 0;

        virtual HRESULT get_Previous(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT __PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT _Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_ProtectContents(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ProtectDrawingObjects(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ProtectionMode(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ProtectScenarios(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT _SaveAs(
            BSTR Filename,
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Unprotect(
            VARIANT Password = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Visible(
            long lcid,
            XlSheetVisibility *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            long lcid,
            XlSheetVisibility RHS) = 0;

        virtual HRESULT get_Shapes(
            Shapes **RHS /Out/) = 0;

        virtual void _Dummy29() = 0;

        virtual HRESULT Arcs(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void _Dummy31() = 0;

        virtual void _Dummy32() = 0;

        virtual HRESULT Buttons(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void _Dummy34() = 0;

        virtual HRESULT get_EnableCalculation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableCalculation(
            VARIANT_BOOL RHS) = 0;

        virtual void _Dummy36() = 0;

        virtual HRESULT ChartObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT CheckBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT CheckSpelling(
            VARIANT CustomDictionary = argMissing2(),
            VARIANT IgnoreUppercase = argMissing2(),
            VARIANT AlwaysSuggest = argMissing2(),
            VARIANT SpellLang = argMissing2(),
            long lcid = 0) = 0;

        virtual void _Dummy40() = 0;

        virtual void _Dummy41() = 0;

        virtual void _Dummy42() = 0;

        virtual void _Dummy43() = 0;

        virtual void _Dummy44() = 0;

        virtual void _Dummy45() = 0;

        virtual HRESULT get_DisplayAutomaticPageBreaks(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayAutomaticPageBreaks(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Drawings(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT DrawingObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT DropDowns(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_EnableAutoFilter(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableAutoFilter(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableSelection(
            XlEnableSelection *RHS /Out/) = 0;

        virtual HRESULT put_EnableSelection(
            XlEnableSelection RHS) = 0;

        virtual HRESULT get_EnableOutlining(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableOutlining(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnablePivotTable(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnablePivotTable(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Evaluate(
            VARIANT Name,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _Evaluate(
            VARIANT Name,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual void _Dummy56() = 0;

        virtual HRESULT ResetAllPageBreaks() = 0;

        virtual HRESULT GroupBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT GroupObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Labels(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Lines(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT ListBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Names(
            Names **RHS /Out/) = 0;

        virtual HRESULT OLEObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void _Dummy65() = 0;

        virtual void _Dummy66() = 0;

        virtual void _Dummy67() = 0;

        virtual HRESULT OptionButtons(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void _Dummy69() = 0;

        virtual HRESULT Ovals(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Paste(
            VARIANT Destination = argMissing2(),
            VARIANT Link = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT _PasteSpecial(
            VARIANT Format = argMissing2(),
            VARIANT Link = argMissing2(),
            VARIANT DisplayAsIcon = argMissing2(),
            VARIANT IconFileName = argMissing2(),
            VARIANT IconIndex = argMissing2(),
            VARIANT IconLabel = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Pictures(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void _Dummy74() = 0;

        virtual void _Dummy75() = 0;

        virtual void _Dummy76() = 0;

        virtual HRESULT Rectangles(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void _Dummy78() = 0;

        virtual void _Dummy79() = 0;

        virtual HRESULT get_ScrollArea(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ScrollArea(
            BSTR RHS) = 0;

        virtual HRESULT ScrollBars(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void _Dummy82() = 0;

        virtual void _Dummy83() = 0;

        virtual HRESULT Spinners(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void _Dummy85() = 0;

        virtual void _Dummy86() = 0;

        virtual HRESULT TextBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void _Dummy88() = 0;

        virtual void _Dummy89() = 0;

        virtual void _Dummy90() = 0;

        virtual HRESULT get_HPageBreaks(
            HPageBreaks **RHS /Out/) = 0;

        virtual HRESULT get_VPageBreaks(
            VPageBreaks **RHS /Out/) = 0;

        virtual HRESULT get_QueryTables(
            QueryTables **RHS /Out/) = 0;

        virtual HRESULT get_DisplayPageBreaks(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayPageBreaks(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Comments(
            Comments **RHS /Out/) = 0;

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **RHS /Out/) = 0;

        virtual HRESULT ClearCircles() = 0;

        virtual HRESULT CircleInvalid() = 0;

        virtual HRESULT get__DisplayRightToLeft(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put__DisplayRightToLeft(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_AutoFilter(
            AutoFilter **RHS /Out/) = 0;

        virtual HRESULT get_DisplayRightToLeft(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayRightToLeft(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Scripts(
            ksoapi::Scripts **RHS /Out/) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT _CheckSpelling(
            VARIANT CustomDictionary = argMissing2(),
            VARIANT IgnoreUppercase = argMissing2(),
            VARIANT AlwaysSuggest = argMissing2(),
            VARIANT SpellLang = argMissing2(),
            VARIANT IgnoreFinalYaa = argMissing2(),
            VARIANT SpellScript = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Tab(
            Tab **RHS /Out/) = 0;

        virtual HRESULT get_MailEnvelope(
            ksoapi::MsoEnvelope **RHS /Out/) = 0;

        virtual HRESULT SaveAs(
            BSTR Filename,
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            VARIANT Local = argMissing2()) = 0;

        virtual HRESULT get_CustomProperties(
            CustomProperties **RHS /Out/) = 0;

        virtual HRESULT get_SmartTags(
            SmartTags **RHS /Out/) = 0;

        virtual HRESULT get_Protection(
            Protection **RHS /Out/) = 0;

        virtual HRESULT PasteSpecial(
            VARIANT Format = argMissing2(),
            VARIANT Link = argMissing2(),
            VARIANT DisplayAsIcon = argMissing2(),
            VARIANT IconFileName = argMissing2(),
            VARIANT IconIndex = argMissing2(),
            VARIANT IconLabel = argMissing2(),
            VARIANT NoHTMLFormatting = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2(),
            VARIANT AllowFormattingCells = argMissing2(),
            VARIANT AllowFormattingColumns = argMissing2(),
            VARIANT AllowFormattingRows = argMissing2(),
            VARIANT AllowInsertingColumns = argMissing2(),
            VARIANT AllowInsertingRows = argMissing2(),
            VARIANT AllowInsertingHyperlinks = argMissing2(),
            VARIANT AllowDeletingColumns = argMissing2(),
            VARIANT AllowDeletingRows = argMissing2(),
            VARIANT AllowSorting = argMissing2(),
            VARIANT AllowFiltering = argMissing2(),
            VARIANT AllowUsingPivotTables = argMissing2()) = 0;

        virtual void _Dummy113() = 0;

        virtual void _Dummy114() = 0;

        virtual void _Dummy115() = 0;

        virtual HRESULT PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2()) = 0;

        virtual HRESULT get_EnableFormatConditionsCalculation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableFormatConditionsCalculation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Sort(
            Sort **RHS /Out/) = 0;

        virtual HRESULT ExportAsFixedFormat(
            XlFixedFormatType Type,
            VARIANT Filename = argMissing2(),
            VARIANT Quality = argMissing2(),
            VARIANT IncludeDocProperties = argMissing2(),
            VARIANT IgnorePrintAreas = argMissing2(),
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT OpenAfterPublish = argMissing2(),
            VARIANT FixedFormatExtClassPtr = argMissing2()) = 0;

        virtual HRESULT get_PrintedCommentPages(
            long *RHS /Out/) = 0;

        virtual HRESULT get_DefaultButton(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_DefaultButton(
            VARIANT RHS) = 0;

        virtual HRESULT get_DialogFrame(
            DialogFrame **RHS /Out/) = 0;

        virtual HRESULT EditBoxes(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Focus(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Focus(
            VARIANT RHS) = 0;

        virtual HRESULT Hide(
            VARIANT Cancel = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT Show(
            VARIANT_BOOL *RHS /Out/) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        BSTR getCodeName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CodeName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CodeName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CodeName, get=getCodeName)

        BSTR get_CodeName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__CodeName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__CodeName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* set_CodeName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put__CodeName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__CodeName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_CodeName, get=get_CodeName, set=set_CodeName)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

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

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        IDispatch* getNext();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Next(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Next()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Next, get=getNext)

        BSTR getOnDoubleClick();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnDoubleClick(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnDoubleClick()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnDoubleClick(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnDoubleClick(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnDoubleClick()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnDoubleClick, get=getOnDoubleClick, set=setOnDoubleClick)

        BSTR getOnSheetActivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetActivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetActivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetActivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetActivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetActivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetActivate, get=getOnSheetActivate, set=setOnSheetActivate)

        BSTR getOnSheetDeactivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetDeactivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetDeactivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetDeactivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetDeactivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetDeactivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetDeactivate, get=getOnSheetDeactivate, set=setOnSheetDeactivate)

        PageSetup* getPageSetup();
        %MethodCode
            etapi::PageSetup *prop = nullptr;
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

        IDispatch* getPrevious();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Previous(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Previous()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Previous, get=getPrevious)

        VARIANT_BOOL getProtectContents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectContents(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectContents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectContents, get=getProtectContents)

        VARIANT_BOOL getProtectDrawingObjects();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectDrawingObjects(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectDrawingObjects()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectDrawingObjects, get=getProtectDrawingObjects)

        VARIANT_BOOL getProtectionMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectionMode(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectionMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectionMode, get=getProtectionMode)

        VARIANT_BOOL getProtectScenarios();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectScenarios(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectScenarios()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectScenarios, get=getProtectScenarios)

        XlSheetVisibility getVisible();
        %MethodCode
            etapi::XlSheetVisibility prop = (etapi::XlSheetVisibility)0;
            HRESULT hr = sipCpp->get_Visible(0, &prop);
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

        PyObject* setVisible(XlSheetVisibility prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(0, a0);
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

        Shapes* getShapes();
        %MethodCode
            etapi::Shapes *prop = nullptr;
            HRESULT hr = sipCpp->get_Shapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shapes, get=getShapes)

        VARIANT_BOOL getEnableCalculation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableCalculation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableCalculation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableCalculation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableCalculation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableCalculation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableCalculation, get=getEnableCalculation, set=setEnableCalculation)

        VARIANT_BOOL getDisplayAutomaticPageBreaks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAutomaticPageBreaks(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAutomaticPageBreaks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAutomaticPageBreaks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAutomaticPageBreaks(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAutomaticPageBreaks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAutomaticPageBreaks, get=getDisplayAutomaticPageBreaks, set=setDisplayAutomaticPageBreaks)

        VARIANT_BOOL getEnableAutoFilter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableAutoFilter(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableAutoFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableAutoFilter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableAutoFilter(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableAutoFilter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableAutoFilter, get=getEnableAutoFilter, set=setEnableAutoFilter)

        XlEnableSelection getEnableSelection();
        %MethodCode
            etapi::XlEnableSelection prop = (etapi::XlEnableSelection)0;
            HRESULT hr = sipCpp->get_EnableSelection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableSelection(XlEnableSelection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableSelection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableSelection, get=getEnableSelection, set=setEnableSelection)

        VARIANT_BOOL getEnableOutlining();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableOutlining(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableOutlining()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableOutlining(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableOutlining(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableOutlining()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableOutlining, get=getEnableOutlining, set=setEnableOutlining)

        VARIANT_BOOL getEnablePivotTable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnablePivotTable(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnablePivotTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnablePivotTable(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnablePivotTable(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnablePivotTable()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnablePivotTable, get=getEnablePivotTable, set=setEnablePivotTable)

        Names* getNames();
        %MethodCode
            etapi::Names *prop = nullptr;
            HRESULT hr = sipCpp->get_Names(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Names()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Names, get=getNames)

        BSTR getScrollArea();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ScrollArea(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScrollArea()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScrollArea(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScrollArea(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScrollArea()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScrollArea, get=getScrollArea, set=setScrollArea)

        HPageBreaks* getHPageBreaks();
        %MethodCode
            etapi::HPageBreaks *prop = nullptr;
            HRESULT hr = sipCpp->get_HPageBreaks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HPageBreaks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HPageBreaks, get=getHPageBreaks)

        VPageBreaks* getVPageBreaks();
        %MethodCode
            etapi::VPageBreaks *prop = nullptr;
            HRESULT hr = sipCpp->get_VPageBreaks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VPageBreaks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VPageBreaks, get=getVPageBreaks)

        QueryTables* getQueryTables();
        %MethodCode
            etapi::QueryTables *prop = nullptr;
            HRESULT hr = sipCpp->get_QueryTables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_QueryTables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=QueryTables, get=getQueryTables)

        VARIANT_BOOL getDisplayPageBreaks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayPageBreaks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayPageBreaks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayPageBreaks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayPageBreaks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayPageBreaks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayPageBreaks, get=getDisplayPageBreaks, set=setDisplayPageBreaks)

        Comments* getComments();
        %MethodCode
            etapi::Comments *prop = nullptr;
            HRESULT hr = sipCpp->get_Comments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Comments, get=getComments)

        Hyperlinks* getHyperlinks();
        %MethodCode
            etapi::Hyperlinks *prop = nullptr;
            HRESULT hr = sipCpp->get_Hyperlinks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hyperlinks, get=getHyperlinks)

        long get_DisplayRightToLeft();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get__DisplayRightToLeft(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__DisplayRightToLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* set_DisplayRightToLeft(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put__DisplayRightToLeft(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__DisplayRightToLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_DisplayRightToLeft, get=get_DisplayRightToLeft, set=set_DisplayRightToLeft)

        AutoFilter* getAutoFilter();
        %MethodCode
            etapi::AutoFilter *prop = nullptr;
            HRESULT hr = sipCpp->get_AutoFilter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoFilter, get=getAutoFilter)

        VARIANT_BOOL getDisplayRightToLeft();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayRightToLeft(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayRightToLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayRightToLeft(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayRightToLeft(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayRightToLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayRightToLeft, get=getDisplayRightToLeft, set=setDisplayRightToLeft)

        ksoapi::Scripts* getScripts();
        %MethodCode
            ksoapi::Scripts *prop = nullptr;
            HRESULT hr = sipCpp->get_Scripts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Scripts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Scripts, get=getScripts)

        Tab* getTab();
        %MethodCode
            etapi::Tab *prop = nullptr;
            HRESULT hr = sipCpp->get_Tab(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tab()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tab, get=getTab)

        ksoapi::MsoEnvelope* getMailEnvelope();
        %MethodCode
            ksoapi::MsoEnvelope *prop = nullptr;
            HRESULT hr = sipCpp->get_MailEnvelope(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailEnvelope()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MailEnvelope, get=getMailEnvelope)

        CustomProperties* getCustomProperties();
        %MethodCode
            etapi::CustomProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomProperties(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomProperties, get=getCustomProperties)

        SmartTags* getSmartTags();
        %MethodCode
            etapi::SmartTags *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartTags(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartTags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartTags, get=getSmartTags)

        Protection* getProtection();
        %MethodCode
            etapi::Protection *prop = nullptr;
            HRESULT hr = sipCpp->get_Protection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Protection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Protection, get=getProtection)

        VARIANT_BOOL getEnableFormatConditionsCalculation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableFormatConditionsCalculation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableFormatConditionsCalculation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableFormatConditionsCalculation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableFormatConditionsCalculation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableFormatConditionsCalculation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableFormatConditionsCalculation, get=getEnableFormatConditionsCalculation, set=setEnableFormatConditionsCalculation)

        Sort* getSort();
        %MethodCode
            etapi::Sort *prop = nullptr;
            HRESULT hr = sipCpp->get_Sort(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sort()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sort, get=getSort)

        long getPrintedCommentPages();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PrintedCommentPages(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintedCommentPages()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrintedCommentPages, get=getPrintedCommentPages)

        VARIANT getDefaultButton();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DefaultButton(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultButton()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultButton(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultButton(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultButton()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultButton, get=getDefaultButton, set=setDefaultButton)

        DialogFrame* getDialogFrame();
        %MethodCode
            etapi::DialogFrame *prop = nullptr;
            HRESULT hr = sipCpp->get_DialogFrame(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DialogFrame()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DialogFrame, get=getDialogFrame)

        VARIANT getFocus();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Focus(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Focus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFocus(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Focus(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Focus()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Focus, get=getFocus, set=setFocus)
    };
};
