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
    struct Frame : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_HeightRule(
            WdFrameSizeRule *prop /Out/) = 0;

        virtual HRESULT put_HeightRule(
            WdFrameSizeRule prop) = 0;

        virtual HRESULT get_WidthRule(
            WdFrameSizeRule *prop /Out/) = 0;

        virtual HRESULT put_WidthRule(
            WdFrameSizeRule prop) = 0;

        virtual HRESULT get_HorizontalDistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_HorizontalDistanceFromText(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HorizontalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPosition(
            single prop) = 0;

        virtual HRESULT get_LockAnchor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LockAnchor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition prop) = 0;

        virtual HRESULT get_RelativeVerticalPosition(
            WdRelativeVerticalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeVerticalPosition(
            WdRelativeVerticalPosition prop) = 0;

        virtual HRESULT get_VerticalDistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_VerticalDistanceFromText(
            single prop) = 0;

        virtual HRESULT get_VerticalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_VerticalPosition(
            single prop) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_TextWrap(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TextWrap(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

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

        WdFrameSizeRule getHeightRule();
        %MethodCode
            wpsapi::WdFrameSizeRule prop = (wpsapi::WdFrameSizeRule)0;
            HRESULT hr = sipCpp->get_HeightRule(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeightRule()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeightRule(WdFrameSizeRule prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeightRule(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeightRule()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeightRule, get=getHeightRule, set=setHeightRule)

        WdFrameSizeRule getWidthRule();
        %MethodCode
            wpsapi::WdFrameSizeRule prop = (wpsapi::WdFrameSizeRule)0;
            HRESULT hr = sipCpp->get_WidthRule(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WidthRule()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidthRule(WdFrameSizeRule prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WidthRule(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WidthRule()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WidthRule, get=getWidthRule, set=setWidthRule)

        single getHorizontalDistanceFromText();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_HorizontalDistanceFromText(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalDistanceFromText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalDistanceFromText(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalDistanceFromText(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalDistanceFromText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalDistanceFromText, get=getHorizontalDistanceFromText, set=setHorizontalDistanceFromText)

        single getHeight();
        %MethodCode
            wpsapi::single prop = 0;
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

        single getHorizontalPosition();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_HorizontalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalPosition(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalPosition, get=getHorizontalPosition, set=setHorizontalPosition)

        VARIANT_BOOL getLockAnchor();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LockAnchor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LockAnchor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLockAnchor(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LockAnchor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LockAnchor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LockAnchor, get=getLockAnchor, set=setLockAnchor)

        WdRelativeHorizontalPosition getRelativeHorizontalPosition();
        %MethodCode
            wpsapi::WdRelativeHorizontalPosition prop = (wpsapi::WdRelativeHorizontalPosition)0;
            HRESULT hr = sipCpp->get_RelativeHorizontalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelativeHorizontalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelativeHorizontalPosition(WdRelativeHorizontalPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelativeHorizontalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelativeHorizontalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelativeHorizontalPosition, get=getRelativeHorizontalPosition, set=setRelativeHorizontalPosition)

        WdRelativeVerticalPosition getRelativeVerticalPosition();
        %MethodCode
            wpsapi::WdRelativeVerticalPosition prop = (wpsapi::WdRelativeVerticalPosition)0;
            HRESULT hr = sipCpp->get_RelativeVerticalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelativeVerticalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelativeVerticalPosition(WdRelativeVerticalPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelativeVerticalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelativeVerticalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelativeVerticalPosition, get=getRelativeVerticalPosition, set=setRelativeVerticalPosition)

        single getVerticalDistanceFromText();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_VerticalDistanceFromText(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalDistanceFromText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalDistanceFromText(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalDistanceFromText(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalDistanceFromText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalDistanceFromText, get=getVerticalDistanceFromText, set=setVerticalDistanceFromText)

        single getVerticalPosition();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_VerticalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalPosition(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalPosition, get=getVerticalPosition, set=setVerticalPosition)

        single getWidth();
        %MethodCode
            wpsapi::single prop = 0;
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

        VARIANT_BOOL getTextWrap();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextWrap(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextWrap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextWrap(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextWrap(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextWrap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextWrap, get=getTextWrap, set=setTextWrap)

        Shading* getShading();
        %MethodCode
            wpsapi::Shading *prop = nullptr;
            HRESULT hr = sipCpp->get_Shading(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shading, get=getShading)

        Borders* getBorders();
        %MethodCode
            wpsapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorders(Borders *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Borders(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Borders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Borders, get=getBorders, set=setBorders)

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)
    };
};
