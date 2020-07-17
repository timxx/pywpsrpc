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
    struct ITimelineViewState : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ShowHeader(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowHeader(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowSelectionLabel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowSelectionLabel(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTimeLevel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTimeLevel(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowHorizontalScrollbar(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowHorizontalScrollbar(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Level(
            XlTimelineLevel *RHS /Out/) = 0;

        virtual HRESULT put_Level(
            XlTimelineLevel RHS) = 0;

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

        VARIANT_BOOL getShowHeader();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowHeader(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowHeader(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowHeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowHeader, get=getShowHeader, set=setShowHeader)

        VARIANT_BOOL getShowSelectionLabel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowSelectionLabel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSelectionLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSelectionLabel(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSelectionLabel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSelectionLabel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSelectionLabel, get=getShowSelectionLabel, set=setShowSelectionLabel)

        VARIANT_BOOL getShowTimeLevel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTimeLevel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTimeLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTimeLevel(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTimeLevel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTimeLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTimeLevel, get=getShowTimeLevel, set=setShowTimeLevel)

        VARIANT_BOOL getShowHorizontalScrollbar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowHorizontalScrollbar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowHorizontalScrollbar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowHorizontalScrollbar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowHorizontalScrollbar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowHorizontalScrollbar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowHorizontalScrollbar, get=getShowHorizontalScrollbar, set=setShowHorizontalScrollbar)

        XlTimelineLevel getLevel();
        %MethodCode
            etapi::XlTimelineLevel prop = (etapi::XlTimelineLevel)0;
            HRESULT hr = sipCpp->get_Level(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Level()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLevel(XlTimelineLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Level(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Level()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Level, get=getLevel, set=setLevel)
    };
};
