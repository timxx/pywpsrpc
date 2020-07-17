/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct _CustomTaskPane : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Title(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Window(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ContentControl(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Height(
            int *prop /Out/) = 0;

        virtual HRESULT put_Height(
            int prop) = 0;

        virtual HRESULT get_Width(
            int *prop /Out/) = 0;

        virtual HRESULT put_Width(
            int prop) = 0;

        virtual HRESULT get_DockPosition(
            MsoCTPDockPosition *prop /Out/) = 0;

        virtual HRESULT put_DockPosition(
            MsoCTPDockPosition prop) = 0;

        virtual HRESULT get_DockPositionRestrict(
            MsoCTPDockPositionRestrict *prop /Out/) = 0;

        virtual HRESULT put_DockPositionRestrict(
            MsoCTPDockPositionRestrict prop) = 0;

        virtual HRESULT Delete() = 0;

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Title, get=getTitle)

        IDispatch* getWindow();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Window(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Window()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Window, get=getWindow)

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

        IDispatch* getContentControl();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_ContentControl(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContentControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContentControl, get=getContentControl)

        int getHeight();
        %MethodCode
            int prop = 0;
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

        PyObject* setHeight(int prop);
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

        int getWidth();
        %MethodCode
            int prop = 0;
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

        PyObject* setWidth(int prop);
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

        MsoCTPDockPosition getDockPosition();
        %MethodCode
            ksoapi::MsoCTPDockPosition prop = (ksoapi::MsoCTPDockPosition)0;
            HRESULT hr = sipCpp->get_DockPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DockPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDockPosition(MsoCTPDockPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DockPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DockPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DockPosition, get=getDockPosition, set=setDockPosition)

        MsoCTPDockPositionRestrict getDockPositionRestrict();
        %MethodCode
            ksoapi::MsoCTPDockPositionRestrict prop = (ksoapi::MsoCTPDockPositionRestrict)0;
            HRESULT hr = sipCpp->get_DockPositionRestrict(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DockPositionRestrict()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDockPositionRestrict(MsoCTPDockPositionRestrict prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DockPositionRestrict(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DockPositionRestrict()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DockPositionRestrict, get=getDockPositionRestrict, set=setDockPositionRestrict)
    };
};
