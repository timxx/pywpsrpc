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
    struct ShadowFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT IncrementOffsetX(
            single Increment) = 0;

        virtual HRESULT IncrementOffsetY(
            single Increment) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **ForeColor /Out/) = 0;

        virtual HRESULT put_ForeColor(
            ColorFormat *ForeColor) = 0;

        virtual HRESULT get_Obscured(
            MsoTriState *Obscured /Out/) = 0;

        virtual HRESULT put_Obscured(
            MsoTriState Obscured) = 0;

        virtual HRESULT get_OffsetX(
            single *OffsetX /Out/) = 0;

        virtual HRESULT put_OffsetX(
            single OffsetX) = 0;

        virtual HRESULT get_OffsetY(
            single *OffsetY /Out/) = 0;

        virtual HRESULT put_OffsetY(
            single OffsetY) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Type(
            MsoShadowType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoShadowType Type) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Style(
            MsoShadowStyle *ShadowStyle /Out/) = 0;

        virtual HRESULT put_Style(
            MsoShadowStyle ShadowStyle) = 0;

        virtual HRESULT get_Blur(
            single *Blur /Out/) = 0;

        virtual HRESULT put_Blur(
            single Blur) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_RotateWithShape(
            MsoTriState *RotateWithShape /Out/) = 0;

        virtual HRESULT put_RotateWithShape(
            MsoTriState RotateWithShape) = 0;

        ColorFormat* getForeColor();
        %MethodCode
            etapi::ColorFormat *prop = nullptr;
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

        PyObject* setForeColor(ColorFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ForeColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ForeColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ForeColor, get=getForeColor, set=setForeColor)

        MsoTriState getObscured();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::MsoShadowType prop = (etapi::MsoShadowType)0;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::MsoShadowStyle prop = (etapi::MsoShadowStyle)0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
