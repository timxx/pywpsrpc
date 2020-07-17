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
    struct DocumentWindow : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Selection(
            Selection **Selection /Out/) = 0;

        virtual HRESULT get_View(
            View **View /Out/) = 0;

        virtual HRESULT get_Presentation(
            Presentation **Presentation /Out/) = 0;

        virtual HRESULT get_ViewType(
            PpViewType *ViewType /Out/) = 0;

        virtual HRESULT put_ViewType(
            PpViewType ViewType) = 0;

        virtual HRESULT get_BlackAndWhite(
            MsoTriState *BlackAndWhite /Out/) = 0;

        virtual HRESULT put_BlackAndWhite(
            MsoTriState BlackAndWhite) = 0;

        virtual HRESULT get_Active(
            MsoTriState *Active /Out/) = 0;

        virtual HRESULT get_WindowState(
            PpWindowState *WindowState /Out/) = 0;

        virtual HRESULT put_WindowState(
            PpWindowState WindowState) = 0;

        virtual HRESULT get_Caption(
            BSTR *Caption /Out/) = 0;

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

        virtual HRESULT FitToPage() = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT LargeScroll(
            int Down = 1,
            int Up = 0,
            int ToRight = 0,
            int ToLeft = 0) = 0;

        virtual HRESULT SmallScroll(
            int Down = 1,
            int Up = 0,
            int ToRight = 0,
            int ToLeft = 0) = 0;

        virtual HRESULT NewWindow(
            DocumentWindow **NewWindow /Out/) = 0;

        virtual HRESULT Close() = 0;

        virtual HRESULT get_HWND(
            long *HWND /Out/) = 0;

        virtual HRESULT get_ActivePane(
            Pane **ActivePane /Out/) = 0;

        virtual HRESULT get_Panes(
            Panes **Panes /Out/) = 0;

        virtual HRESULT get_SplitVertical(
            long *SplitVertical /Out/) = 0;

        virtual HRESULT put_SplitVertical(
            long SplitVertical) = 0;

        virtual HRESULT get_SplitHorizontal(
            long *SplitHorizontal /Out/) = 0;

        virtual HRESULT put_SplitHorizontal(
            long SplitHorizontal) = 0;

        virtual HRESULT RangeFromPoint(
            int X,
            int Y,
            IDispatch **RangeFromPoint /Out/) = 0;

        virtual HRESULT PointsToScreenPixelsX(
            single Points,
            int *PointsToScreenPixelsX /Out/) = 0;

        virtual HRESULT PointsToScreenPixelsY(
            single Points,
            int *PointsToScreenPixelsY /Out/) = 0;

        virtual HRESULT ScrollIntoView(
            single Left,
            single Top,
            single Width,
            single Height,
            MsoTriState Start = wppapi::msoTrue) = 0;

        virtual HRESULT IsSectionExpanded(
            int sectionIndex,
            VARIANT_BOOL *IsSectionExpanded /Out/) = 0;

        virtual HRESULT ExpandSection(
            int sectionIndex,
            VARIANT_BOOL Expand) = 0;

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

        Selection* getSelection();
        %MethodCode
            wppapi::Selection *prop = nullptr;
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

        View* getView();
        %MethodCode
            wppapi::View *prop = nullptr;
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

        Presentation* getPresentation();
        %MethodCode
            wppapi::Presentation *prop = nullptr;
            HRESULT hr = sipCpp->get_Presentation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Presentation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Presentation, get=getPresentation)

        PpViewType getViewType();
        %MethodCode
            wppapi::PpViewType prop = (wppapi::PpViewType)0;
            HRESULT hr = sipCpp->get_ViewType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ViewType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setViewType(PpViewType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ViewType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ViewType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ViewType, get=getViewType, set=setViewType)

        MsoTriState getBlackAndWhite();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_BlackAndWhite(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BlackAndWhite()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBlackAndWhite(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BlackAndWhite(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BlackAndWhite()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BlackAndWhite, get=getBlackAndWhite, set=setBlackAndWhite)

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

        %Property(name=Caption, get=getCaption)

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

        Pane* getActivePane();
        %MethodCode
            wppapi::Pane *prop = nullptr;
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

        Panes* getPanes();
        %MethodCode
            wppapi::Panes *prop = nullptr;
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

        long getSplitHorizontal();
        %MethodCode
            long prop = 0;
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

        PyObject* setSplitHorizontal(long prop);
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
    };
};
