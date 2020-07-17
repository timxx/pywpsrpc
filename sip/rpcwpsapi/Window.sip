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
    struct Window : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_ActivePane(
            Pane **prop /Out/) = 0;

        virtual HRESULT get_Document(
            Document **prop /Out/) = 0;

        virtual HRESULT get_Panes(
            Panes **prop /Out/) = 0;

        virtual HRESULT get_Selection(
            Selection **prop /Out/) = 0;

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

        virtual HRESULT get_Split(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Split(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SplitVertical(
            long *prop /Out/) = 0;

        virtual HRESULT put_SplitVertical(
            long prop) = 0;

        virtual HRESULT get_Caption(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR prop) = 0;

        virtual HRESULT get_WindowState(
            WdWindowState *prop /Out/) = 0;

        virtual HRESULT put_WindowState(
            WdWindowState prop) = 0;

        virtual HRESULT get_DisplayRulers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayRulers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayVerticalRuler(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayVerticalRuler(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_View(
            View **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdWindowType *prop /Out/) = 0;

        virtual HRESULT get_Next(
            Window **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Window **prop /Out/) = 0;

        virtual HRESULT get_WindowNumber(
            long *prop /Out/) = 0;

        virtual HRESULT get_DisplayVerticalScrollBar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayVerticalScrollBar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayHorizontalScrollBar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayHorizontalScrollBar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StyleAreaWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_StyleAreaWidth(
            single prop) = 0;

        virtual HRESULT get_DisplayScreenTips(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayScreenTips(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HorizontalPercentScrolled(
            long *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPercentScrolled(
            long prop) = 0;

        virtual HRESULT get_VerticalPercentScrolled(
            long *prop /Out/) = 0;

        virtual HRESULT put_VerticalPercentScrolled(
            long prop) = 0;

        virtual HRESULT get_DocumentMap(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DocumentMap(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_DocumentMapPercentWidth(
            long *prop /Out/) = 0;

        virtual HRESULT put_DocumentMapPercentWidth(
            long prop) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_IMEMode(
            WdIMEMode *prop /Out/) = 0;

        virtual HRESULT put_IMEMode(
            WdIMEMode prop) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Close(
            VARIANT *SaveChanges = argMissing(),
            VARIANT *RouteDocument = argMissing()) = 0;

        virtual HRESULT LargeScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing(),
            VARIANT *ToRight = argMissing(),
            VARIANT *ToLeft = argMissing()) = 0;

        virtual HRESULT SmallScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing(),
            VARIANT *ToRight = argMissing(),
            VARIANT *ToLeft = argMissing()) = 0;

        virtual HRESULT NewWindow(
            Window **prop /Out/) = 0;

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
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing()) = 0;

        virtual HRESULT PageScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing()) = 0;

        virtual HRESULT SetFocus() = 0;

        virtual HRESULT RangeFromPoint(
            long x,
            long y,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT ScrollIntoView(
            IDispatch *obj,
            VARIANT *Start = argMissing()) = 0;

        virtual HRESULT GetPoint(
            long *ScreenPixelsLeft /Out/,
            long *ScreenPixelsTop /Out/,
            long *ScreenPixelsWidth /Out/,
            long *ScreenPixelsHeight /Out/,
            IDispatch *obj) = 0;

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
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing(),
            VARIANT *PrintZoomColumn = argMissing(),
            VARIANT *PrintZoomRow = argMissing(),
            VARIANT *PrintZoomPaperWidth = argMissing(),
            VARIANT *PrintZoomPaperHeight = argMissing()) = 0;

        virtual HRESULT get_UsableWidth(
            long *prop /Out/) = 0;

        virtual HRESULT get_UsableHeight(
            long *prop /Out/) = 0;

        virtual HRESULT get_EnvelopeVisible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnvelopeVisible(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayRightRuler(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayRightRuler(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayLeftScrollBar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayLeftScrollBar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL prop) = 0;

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
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing(),
            VARIANT *PrintZoomColumn = argMissing(),
            VARIANT *PrintZoomRow = argMissing(),
            VARIANT *PrintZoomPaperWidth = argMissing(),
            VARIANT *PrintZoomPaperHeight = argMissing()) = 0;

        virtual HRESULT ToggleShowAllReviewers() = 0;

        virtual HRESULT get_Thumbnails(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Thumbnails(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowSourceDocuments(
            WdShowSourceDocuments *prop /Out/) = 0;

        virtual HRESULT put_ShowSourceDocuments(
            WdShowSourceDocuments prop) = 0;

        virtual HRESULT ToggleRibbon() = 0;

        virtual HRESULT get_Hwnd(
            long *prop /Out/) = 0;

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

        Pane* getActivePane();
        %MethodCode
            wpsapi::Pane *prop = nullptr;
            HRESULT hr = sipCpp->get_ActivePane(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActivePane()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActivePane, get=getActivePane)

        Document* getDocument();
        %MethodCode
            wpsapi::Document *prop = nullptr;
            HRESULT hr = sipCpp->get_Document(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Document()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Document, get=getDocument)

        Panes* getPanes();
        %MethodCode
            wpsapi::Panes *prop = nullptr;
            HRESULT hr = sipCpp->get_Panes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Panes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Panes, get=getPanes)

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

        VARIANT_BOOL getSplit();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Split(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Split()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSplit(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Split(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Split()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Split, get=getSplit, set=setSplit)

        long getSplitVertical();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SplitVertical(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SplitVertical()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSplitVertical(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SplitVertical(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SplitVertical()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SplitVertical, get=getSplitVertical, set=setSplitVertical)

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

        VARIANT_BOOL getDisplayRulers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayRulers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayRulers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayRulers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayRulers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayRulers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayRulers, get=getDisplayRulers, set=setDisplayRulers)

        VARIANT_BOOL getDisplayVerticalRuler();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayVerticalRuler(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayVerticalRuler()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayVerticalRuler(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayVerticalRuler(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayVerticalRuler()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayVerticalRuler, get=getDisplayVerticalRuler, set=setDisplayVerticalRuler)

        View* getView();
        %MethodCode
            wpsapi::View *prop = nullptr;
            HRESULT hr = sipCpp->get_View(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_View()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=View, get=getView)

        WdWindowType getType();
        %MethodCode
            wpsapi::WdWindowType prop = (wpsapi::WdWindowType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

        Window* getNext();
        %MethodCode
            wpsapi::Window *prop = nullptr;
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

        Window* getPrevious();
        %MethodCode
            wpsapi::Window *prop = nullptr;
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

        long getWindowNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_WindowNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WindowNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WindowNumber, get=getWindowNumber)

        VARIANT_BOOL getDisplayVerticalScrollBar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayVerticalScrollBar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayVerticalScrollBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayVerticalScrollBar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayVerticalScrollBar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayVerticalScrollBar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayVerticalScrollBar, get=getDisplayVerticalScrollBar, set=setDisplayVerticalScrollBar)

        VARIANT_BOOL getDisplayHorizontalScrollBar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayHorizontalScrollBar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayHorizontalScrollBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayHorizontalScrollBar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayHorizontalScrollBar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayHorizontalScrollBar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayHorizontalScrollBar, get=getDisplayHorizontalScrollBar, set=setDisplayHorizontalScrollBar)

        single getStyleAreaWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_StyleAreaWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StyleAreaWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyleAreaWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StyleAreaWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StyleAreaWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StyleAreaWidth, get=getStyleAreaWidth, set=setStyleAreaWidth)

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

        long getHorizontalPercentScrolled();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HorizontalPercentScrolled(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalPercentScrolled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalPercentScrolled(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalPercentScrolled(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalPercentScrolled()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalPercentScrolled, get=getHorizontalPercentScrolled, set=setHorizontalPercentScrolled)

        long getVerticalPercentScrolled();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_VerticalPercentScrolled(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalPercentScrolled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalPercentScrolled(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalPercentScrolled(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalPercentScrolled()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalPercentScrolled, get=getVerticalPercentScrolled, set=setVerticalPercentScrolled)

        VARIANT_BOOL getDocumentMap();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DocumentMap(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentMap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDocumentMap(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DocumentMap(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DocumentMap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DocumentMap, get=getDocumentMap, set=setDocumentMap)

        VARIANT_BOOL getActive();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Active(prop);
            if (hr != S_OK)
            {
                delete prop;
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

        long getDocumentMapPercentWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DocumentMapPercentWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentMapPercentWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDocumentMapPercentWidth(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DocumentMapPercentWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DocumentMapPercentWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DocumentMapPercentWidth, get=getDocumentMapPercentWidth, set=setDocumentMapPercentWidth)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
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

        WdIMEMode getIMEMode();
        %MethodCode
            wpsapi::WdIMEMode prop = (wpsapi::WdIMEMode)0;
            HRESULT hr = sipCpp->get_IMEMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IMEMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIMEMode(WdIMEMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IMEMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IMEMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IMEMode, get=getIMEMode, set=setIMEMode)

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

        VARIANT_BOOL getEnvelopeVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnvelopeVisible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnvelopeVisible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnvelopeVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnvelopeVisible(*a0);
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

        VARIANT_BOOL getDisplayRightRuler();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayRightRuler(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayRightRuler()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayRightRuler(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayRightRuler(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayRightRuler()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayRightRuler, get=getDisplayRightRuler, set=setDisplayRightRuler)

        VARIANT_BOOL getDisplayLeftScrollBar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayLeftScrollBar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayLeftScrollBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayLeftScrollBar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayLeftScrollBar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayLeftScrollBar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayLeftScrollBar, get=getDisplayLeftScrollBar, set=setDisplayLeftScrollBar)

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

        VARIANT_BOOL getThumbnails();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Thumbnails(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Thumbnails()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setThumbnails(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Thumbnails(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Thumbnails()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Thumbnails, get=getThumbnails, set=setThumbnails)

        WdShowSourceDocuments getShowSourceDocuments();
        %MethodCode
            wpsapi::WdShowSourceDocuments prop = (wpsapi::WdShowSourceDocuments)0;
            HRESULT hr = sipCpp->get_ShowSourceDocuments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSourceDocuments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSourceDocuments(WdShowSourceDocuments prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSourceDocuments(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSourceDocuments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSourceDocuments, get=getShowSourceDocuments, set=setShowSourceDocuments)

        long getHwnd();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Hwnd(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hwnd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hwnd, get=getHwnd)
    };
};
