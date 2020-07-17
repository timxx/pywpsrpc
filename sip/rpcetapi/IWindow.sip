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
    struct IWindow : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Activate(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ActivateNext(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ActivatePrevious(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ActiveCell(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ActiveChart(
            Chart **RHS /Out/) = 0;

        virtual HRESULT get_ActivePane(
            Pane **RHS /Out/) = 0;

        virtual HRESULT get_ActiveSheet(
            _Worksheet **RHS /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_ActiveSheet((IDispatch**)&a0);
        %End

        virtual HRESULT get_Caption(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            VARIANT RHS) = 0;

        virtual HRESULT Close(
            VARIANT SaveChanges = argMissing2(),
            VARIANT Filename = argMissing2(),
            VARIANT RouteWorkbook = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT get_DisplayFormulas(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayFormulas(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayGridlines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayGridlines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayHeadings(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHeadings(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayHorizontalScrollBar(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHorizontalScrollBar(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayOutline(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayOutline(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get__DisplayRightToLeft(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put__DisplayRightToLeft(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayVerticalScrollBar(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayVerticalScrollBar(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayWorkbookTabs(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayWorkbookTabs(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayZeros(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayZeros(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableResize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableResize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FreezePanes(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FreezePanes(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_GridlineColor(
            long *RHS /Out/) = 0;

        virtual HRESULT put_GridlineColor(
            long RHS) = 0;

        virtual HRESULT get_GridlineColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT put_GridlineColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT LargeScroll(
            VARIANT Down = argMissing2(),
            VARIANT Up = argMissing2(),
            VARIANT ToRight = argMissing2(),
            VARIANT ToLeft = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT NewWindow(
            Window **RHS /Out/) = 0;

        virtual HRESULT get_OnWindow(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnWindow(
            BSTR RHS) = 0;

        virtual HRESULT get_Panes(
            Panes **RHS /Out/) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_RangeSelection(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ScrollColumn(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ScrollColumn(
            long RHS) = 0;

        virtual HRESULT get_ScrollRow(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ScrollRow(
            long RHS) = 0;

        virtual HRESULT ScrollWorkbookTabs(
            VARIANT Sheets = argMissing2(),
            VARIANT Position = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_SelectedSheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_Selection(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT SmallScroll(
            VARIANT Down = argMissing2(),
            VARIANT Up = argMissing2(),
            VARIANT ToRight = argMissing2(),
            VARIANT ToLeft = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Split(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Split(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SplitColumn(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SplitColumn(
            long RHS) = 0;

        virtual HRESULT get_SplitHorizontal(
            double *RHS /Out/) = 0;

        virtual HRESULT put_SplitHorizontal(
            double RHS) = 0;

        virtual HRESULT get_SplitRow(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SplitRow(
            long RHS) = 0;

        virtual HRESULT get_SplitVertical(
            double *RHS /Out/) = 0;

        virtual HRESULT put_SplitVertical(
            double RHS) = 0;

        virtual HRESULT get_TabRatio(
            double *RHS /Out/) = 0;

        virtual HRESULT put_TabRatio(
            double RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_Type(
            XlWindowType *RHS /Out/) = 0;

        virtual HRESULT get_UsableHeight(
            double *RHS /Out/) = 0;

        virtual HRESULT get_UsableWidth(
            double *RHS /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_VisibleRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get_WindowNumber(
            long *RHS /Out/) = 0;

        virtual HRESULT get_WindowState(
            XlWindowState *RHS /Out/) = 0;

        virtual HRESULT put_WindowState(
            XlWindowState RHS) = 0;

        virtual HRESULT get_Zoom(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Zoom(
            VARIANT RHS) = 0;

        virtual HRESULT get_View(
            XlWindowView *RHS /Out/) = 0;

        virtual HRESULT put_View(
            XlWindowView RHS) = 0;

        virtual HRESULT get_DisplayRightToLeft(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayRightToLeft(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT PointsToScreenPixelsX(
            long Points,
            long *RHS /Out/) = 0;

        virtual HRESULT PointsToScreenPixelsY(
            long Points,
            long *RHS /Out/) = 0;

        virtual HRESULT RangeFromPoint(
            long x,
            long y,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT ScrollIntoView(
            long Left,
            long Top,
            long Width,
            long Height,
            VARIANT Start = argMissing2()) = 0;

        virtual HRESULT get_SheetViews(
            SheetViews **RHS /Out/) = 0;

        virtual HRESULT get_ActiveSheetView(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_DisplayRuler(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayRuler(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoFilterDateGrouping(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoFilterDateGrouping(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayWhitespace(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayWhitespace(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Hwnd(
            long *RHS /Out/) = 0;

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

        Range* getActiveCell();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveCell, get=getActiveCell)

        Chart* getActiveChart();
        %MethodCode
            etapi::Chart *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveChart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveChart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveChart, get=getActiveChart)

        Pane* getActivePane();
        %MethodCode
            etapi::Pane *prop = nullptr;
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

        _Worksheet* getActiveSheet();
        %MethodCode
            etapi::_Worksheet *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveSheet((IDispatch**)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveSheet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveSheet, get=getActiveSheet)

        VARIANT getCaption();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
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

        PyObject* setCaption(VARIANT prop);
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

        VARIANT_BOOL getDisplayFormulas();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayFormulas(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFormulas()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayFormulas(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayFormulas(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayFormulas()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayFormulas, get=getDisplayFormulas, set=setDisplayFormulas)

        VARIANT_BOOL getDisplayGridlines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayGridlines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayGridlines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayGridlines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayGridlines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayGridlines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayGridlines, get=getDisplayGridlines, set=setDisplayGridlines)

        VARIANT_BOOL getDisplayHeadings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayHeadings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayHeadings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayHeadings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayHeadings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayHeadings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayHeadings, get=getDisplayHeadings, set=setDisplayHeadings)

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

        VARIANT_BOOL getDisplayOutline();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayOutline(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayOutline()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayOutline(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayOutline(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayOutline()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayOutline, get=getDisplayOutline, set=setDisplayOutline)

        VARIANT_BOOL get_DisplayRightToLeft();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get__DisplayRightToLeft(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__DisplayRightToLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* set_DisplayRightToLeft(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put__DisplayRightToLeft(*a0);
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

        VARIANT_BOOL getDisplayWorkbookTabs();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayWorkbookTabs(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayWorkbookTabs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayWorkbookTabs(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayWorkbookTabs(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayWorkbookTabs()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayWorkbookTabs, get=getDisplayWorkbookTabs, set=setDisplayWorkbookTabs)

        VARIANT_BOOL getDisplayZeros();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayZeros(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayZeros()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayZeros(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayZeros(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayZeros()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayZeros, get=getDisplayZeros, set=setDisplayZeros)

        VARIANT_BOOL getEnableResize();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableResize(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableResize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableResize(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableResize(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableResize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableResize, get=getEnableResize, set=setEnableResize)

        VARIANT_BOOL getFreezePanes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FreezePanes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FreezePanes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFreezePanes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FreezePanes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FreezePanes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FreezePanes, get=getFreezePanes, set=setFreezePanes)

        long getGridlineColor();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_GridlineColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridlineColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridlineColor(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridlineColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridlineColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridlineColor, get=getGridlineColor, set=setGridlineColor)

        XlColorIndex getGridlineColorIndex();
        %MethodCode
            etapi::XlColorIndex prop = (etapi::XlColorIndex)0;
            HRESULT hr = sipCpp->get_GridlineColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridlineColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridlineColorIndex(XlColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridlineColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridlineColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridlineColorIndex, get=getGridlineColorIndex, set=setGridlineColorIndex)

        double getHeight();
        %MethodCode
            double prop = 0;
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

        PyObject* setHeight(double prop);
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

        double getLeft();
        %MethodCode
            double prop = 0;
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

        PyObject* setLeft(double prop);
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

        BSTR getOnWindow();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnWindow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnWindow(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnWindow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnWindow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnWindow, get=getOnWindow, set=setOnWindow)

        Panes* getPanes();
        %MethodCode
            etapi::Panes *prop = nullptr;
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

        Range* getRangeSelection();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_RangeSelection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RangeSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RangeSelection, get=getRangeSelection)

        long getScrollColumn();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ScrollColumn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScrollColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScrollColumn(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScrollColumn(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScrollColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScrollColumn, get=getScrollColumn, set=setScrollColumn)

        long getScrollRow();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ScrollRow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScrollRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScrollRow(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScrollRow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScrollRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScrollRow, get=getScrollRow, set=setScrollRow)

        Sheets* getSelectedSheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_SelectedSheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SelectedSheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SelectedSheets, get=getSelectedSheets)

        IDispatch* getSelection();
        %MethodCode
            IDispatch *prop = nullptr;
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

        long getSplitColumn();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SplitColumn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SplitColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSplitColumn(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SplitColumn(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SplitColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SplitColumn, get=getSplitColumn, set=setSplitColumn)

        double getSplitHorizontal();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_SplitHorizontal(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SplitHorizontal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSplitHorizontal(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SplitHorizontal(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SplitHorizontal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SplitHorizontal, get=getSplitHorizontal, set=setSplitHorizontal)

        long getSplitRow();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SplitRow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SplitRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSplitRow(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SplitRow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SplitRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SplitRow, get=getSplitRow, set=setSplitRow)

        double getSplitVertical();
        %MethodCode
            double prop = 0;
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

        PyObject* setSplitVertical(double prop);
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

        double getTabRatio();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_TabRatio(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TabRatio()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTabRatio(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TabRatio(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TabRatio()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TabRatio, get=getTabRatio, set=setTabRatio)

        double getTop();
        %MethodCode
            double prop = 0;
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

        PyObject* setTop(double prop);
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

        XlWindowType getType();
        %MethodCode
            etapi::XlWindowType prop = (etapi::XlWindowType)0;
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

        double getUsableHeight();
        %MethodCode
            double prop = 0;
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

        double getUsableWidth();
        %MethodCode
            double prop = 0;
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

        Range* getVisibleRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_VisibleRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisibleRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VisibleRange, get=getVisibleRange)

        double getWidth();
        %MethodCode
            double prop = 0;
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

        PyObject* setWidth(double prop);
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

        XlWindowState getWindowState();
        %MethodCode
            etapi::XlWindowState prop = (etapi::XlWindowState)0;
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

        PyObject* setWindowState(XlWindowState prop);
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

        VARIANT getZoom();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Zoom(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Zoom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setZoom(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Zoom(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Zoom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Zoom, get=getZoom, set=setZoom)

        XlWindowView getView();
        %MethodCode
            etapi::XlWindowView prop = (etapi::XlWindowView)0;
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

        PyObject* setView(XlWindowView prop);
        %MethodCode
            HRESULT hr = sipCpp->put_View(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_View()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=View, get=getView, set=setView)

        VARIANT_BOOL getDisplayRightToLeft();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayRightToLeft(prop);
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
            HRESULT hr = sipCpp->put_DisplayRightToLeft(*a0);
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

        SheetViews* getSheetViews();
        %MethodCode
            etapi::SheetViews *prop = nullptr;
            HRESULT hr = sipCpp->get_SheetViews(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SheetViews()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SheetViews, get=getSheetViews)

        IDispatch* getActiveSheetView();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveSheetView(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveSheetView()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveSheetView, get=getActiveSheetView)

        VARIANT_BOOL getDisplayRuler();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayRuler(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayRuler()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayRuler(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayRuler(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayRuler()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayRuler, get=getDisplayRuler, set=setDisplayRuler)

        VARIANT_BOOL getAutoFilterDateGrouping();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFilterDateGrouping(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFilterDateGrouping()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFilterDateGrouping(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFilterDateGrouping(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFilterDateGrouping()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFilterDateGrouping, get=getAutoFilterDateGrouping, set=setAutoFilterDateGrouping)

        VARIANT_BOOL getDisplayWhitespace();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayWhitespace(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayWhitespace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayWhitespace(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayWhitespace(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayWhitespace()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayWhitespace, get=getDisplayWhitespace, set=setDisplayWhitespace)

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
