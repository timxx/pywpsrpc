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
    struct Pane : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Document(
            Document **prop /Out/) = 0;

        virtual HRESULT get_Selection(
            Selection **prop /Out/) = 0;

        virtual HRESULT get_DisplayRulers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayRulers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayVerticalRuler(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayVerticalRuler(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Zooms(
            Zooms **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_View(
            View **prop /Out/) = 0;

        virtual HRESULT get_Next(
            Pane **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Pane **prop /Out/) = 0;

        virtual HRESULT get_HorizontalPercentScrolled(
            long *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPercentScrolled(
            long prop) = 0;

        virtual HRESULT get_VerticalPercentScrolled(
            long *prop /Out/) = 0;

        virtual HRESULT put_VerticalPercentScrolled(
            long prop) = 0;

        virtual HRESULT get_MinimumFontSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_MinimumFontSize(
            long prop) = 0;

        virtual HRESULT get_BrowseToWindow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BrowseToWindow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BrowseWidth(
            long *prop /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Close() = 0;

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

        virtual HRESULT AutoScroll(
            long Velocity) = 0;

        virtual HRESULT PageScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing()) = 0;

        virtual HRESULT NewFrameset() = 0;

        virtual HRESULT TOCInFrameset() = 0;

        virtual HRESULT get_Frameset(
            Frameset **prop /Out/) = 0;

        virtual HRESULT get_Pages(
            Pages **prop /Out/) = 0;

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

        Zooms* getZooms();
        %MethodCode
            wpsapi::Zooms *prop = nullptr;
            HRESULT hr = sipCpp->get_Zooms(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Zooms()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Zooms, get=getZooms)

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

        Pane* getNext();
        %MethodCode
            wpsapi::Pane *prop = nullptr;
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

        Pane* getPrevious();
        %MethodCode
            wpsapi::Pane *prop = nullptr;
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

        long getMinimumFontSize();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MinimumFontSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinimumFontSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMinimumFontSize(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MinimumFontSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MinimumFontSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MinimumFontSize, get=getMinimumFontSize, set=setMinimumFontSize)

        VARIANT_BOOL getBrowseToWindow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BrowseToWindow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BrowseToWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBrowseToWindow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BrowseToWindow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BrowseToWindow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BrowseToWindow, get=getBrowseToWindow, set=setBrowseToWindow)

        long getBrowseWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BrowseWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BrowseWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BrowseWidth, get=getBrowseWidth)

        Frameset* getFrameset();
        %MethodCode
            wpsapi::Frameset *prop = nullptr;
            HRESULT hr = sipCpp->get_Frameset(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Frameset()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Frameset, get=getFrameset)

        Pages* getPages();
        %MethodCode
            wpsapi::Pages *prop = nullptr;
            HRESULT hr = sipCpp->get_Pages(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Pages()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Pages, get=getPages)
    };
};
