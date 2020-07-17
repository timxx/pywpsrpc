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
    struct ColorFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_RGB(
            MsoRGBType *RGB /Out/) = 0;

        virtual HRESULT put_RGB(
            MsoRGBType RGB) = 0;

        virtual HRESULT get_SchemeColor(
            int *SchemeColor /Out/) = 0;

        virtual HRESULT put_SchemeColor(
            int SchemeColor) = 0;

        virtual HRESULT get_Type(
            MsoColorType *Type /Out/) = 0;

        virtual HRESULT get_TintAndShade(
            single *pValue /Out/) = 0;

        virtual HRESULT put_TintAndShade(
            single pValue) = 0;

        virtual HRESULT get_ObjectThemeColor(
            MsoThemeColorIndex *ObjectThemeColor /Out/) = 0;

        virtual HRESULT put_ObjectThemeColor(
            MsoThemeColorIndex ObjectThemeColor) = 0;

        virtual HRESULT get_Brightness(
            single *Brightness /Out/) = 0;

        virtual HRESULT put_Brightness(
            single Brightness) = 0;

        MsoRGBType getRGB();
        %MethodCode
            ksoapi::MsoRGBType prop = 0;
            HRESULT hr = sipCpp->get_RGB(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RGB()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRGB(MsoRGBType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RGB(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RGB()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RGB, get=getRGB, set=setRGB)

        int getSchemeColor();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_SchemeColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SchemeColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSchemeColor(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SchemeColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SchemeColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SchemeColor, get=getSchemeColor, set=setSchemeColor)

        MsoColorType getType();
        %MethodCode
            ksoapi::MsoColorType prop = (ksoapi::MsoColorType)0;
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

        single getTintAndShade();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_TintAndShade(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TintAndShade()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTintAndShade(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TintAndShade(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TintAndShade()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TintAndShade, get=getTintAndShade, set=setTintAndShade)

        MsoThemeColorIndex getObjectThemeColor();
        %MethodCode
            ksoapi::MsoThemeColorIndex prop = (ksoapi::MsoThemeColorIndex)0;
            HRESULT hr = sipCpp->get_ObjectThemeColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ObjectThemeColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setObjectThemeColor(MsoThemeColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ObjectThemeColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ObjectThemeColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ObjectThemeColor, get=getObjectThemeColor, set=setObjectThemeColor)

        single getBrightness();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_Brightness(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Brightness()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBrightness(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Brightness(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Brightness()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Brightness, get=getBrightness, set=setBrightness)
    };
};
