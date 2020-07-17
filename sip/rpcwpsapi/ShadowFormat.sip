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
    struct ShadowFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_Obscured(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Obscured(
            MsoTriState prop) = 0;

        virtual HRESULT get_OffsetX(
            single *prop /Out/) = 0;

        virtual HRESULT put_OffsetX(
            single prop) = 0;

        virtual HRESULT get_OffsetY(
            single *prop /Out/) = 0;

        virtual HRESULT put_OffsetY(
            single prop) = 0;

        virtual HRESULT get_Transparency(
            single *prop /Out/) = 0;

        virtual HRESULT put_Transparency(
            single prop) = 0;

        virtual HRESULT get_Type(
            MsoShadowType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoShadowType prop) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT IncrementOffsetX(
            single Increment) = 0;

        virtual HRESULT IncrementOffsetY(
            single Increment) = 0;

        virtual HRESULT get_Style(
            MsoShadowStyle *prop /Out/) = 0;

        virtual HRESULT put_Style(
            MsoShadowStyle prop) = 0;

        virtual HRESULT get_Blur(
            single *prop /Out/) = 0;

        virtual HRESULT put_Blur(
            single prop) = 0;

        virtual HRESULT get_Size(
            single *prop /Out/) = 0;

        virtual HRESULT put_Size(
            single prop) = 0;

        virtual HRESULT get_RotateWithShape(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_RotateWithShape(
            MsoTriState prop) = 0;

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

        ColorFormat* getForeColor();
        %MethodCode
            wpsapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ForeColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ForeColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ForeColor, get=getForeColor)

        MsoTriState getObscured();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Obscured(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Obscured()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setObscured(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Obscured(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Obscured()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Obscured, get=getObscured, set=setObscured)

        single getOffsetX();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_OffsetX(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OffsetX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOffsetX(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OffsetX(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OffsetX()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OffsetX, get=getOffsetX, set=setOffsetX)

        single getOffsetY();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_OffsetY(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OffsetY()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOffsetY(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OffsetY(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OffsetY()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OffsetY, get=getOffsetY, set=setOffsetY)

        single getTransparency();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Transparency(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Transparency()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTransparency(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Transparency(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Transparency()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Transparency, get=getTransparency, set=setTransparency)

        MsoShadowType getType();
        %MethodCode
            wpsapi::MsoShadowType prop = (wpsapi::MsoShadowType)0;
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

        PyObject* setType(MsoShadowType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        MsoTriState getVisible();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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

        MsoShadowStyle getStyle();
        %MethodCode
            wpsapi::MsoShadowStyle prop = (wpsapi::MsoShadowStyle)0;
            HRESULT hr = sipCpp->get_Style(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyle(MsoShadowStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Style()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Style, get=getStyle, set=setStyle)

        single getBlur();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Blur(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Blur()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBlur(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Blur(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Blur()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Blur, get=getBlur, set=setBlur)

        single getSize();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Size(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Size()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSize(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Size(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Size()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Size, get=getSize, set=setSize)

        MsoTriState getRotateWithShape();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_RotateWithShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RotateWithShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRotateWithShape(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RotateWithShape(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RotateWithShape()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RotateWithShape, get=getRotateWithShape, set=setRotateWithShape)
    };
};
