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
    struct ColorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_RGB(
            long *prop /Out/) = 0;

        virtual HRESULT put_RGB(
            long prop) = 0;

        virtual HRESULT get_SchemeColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_SchemeColor(
            long prop) = 0;

        virtual HRESULT get_Type(
            MsoColorType *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_TintAndShade(
            single *prop /Out/) = 0;

        virtual HRESULT put_TintAndShade(
            single prop) = 0;

        virtual HRESULT get_OverPrint(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_OverPrint(
            MsoTriState prop) = 0;

        virtual HRESULT get_Ink(
            long Index,
            single *prop /Out/) = 0;

        virtual HRESULT put_Ink(
            long Index,
            single prop) = 0;

        virtual HRESULT get_Cyan(
            long *prop /Out/) = 0;

        virtual HRESULT put_Cyan(
            long prop) = 0;

        virtual HRESULT get_Magenta(
            long *prop /Out/) = 0;

        virtual HRESULT put_Magenta(
            long prop) = 0;

        virtual HRESULT get_Yellow(
            long *prop /Out/) = 0;

        virtual HRESULT put_Yellow(
            long prop) = 0;

        virtual HRESULT get_Black(
            long *prop /Out/) = 0;

        virtual HRESULT put_Black(
            long prop) = 0;

        virtual HRESULT SetCMYK(
            long Cyan,
            long Magenta,
            long Yellow,
            long Black) = 0;

        virtual HRESULT get_ObjectThemeColor(
            WdThemeColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ObjectThemeColor(
            WdThemeColorIndex prop) = 0;

        virtual HRESULT get_Brightness(
            single *prop /Out/) = 0;

        virtual HRESULT put_Brightness(
            single prop) = 0;

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

        long getRGB();
        %MethodCode
            long prop = 0;
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

        PyObject* setRGB(long prop);
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

        long getSchemeColor();
        %MethodCode
            long prop = 0;
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

        PyObject* setSchemeColor(long prop);
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
            wpsapi::MsoColorType prop = (wpsapi::MsoColorType)0;
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

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        single getTintAndShade();
        %MethodCode
            wpsapi::single prop = 0;
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

        MsoTriState getOverPrint();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_OverPrint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OverPrint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOverPrint(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OverPrint(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OverPrint()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OverPrint, get=getOverPrint, set=setOverPrint)

        long getCyan();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Cyan(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Cyan()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCyan(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Cyan(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Cyan()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Cyan, get=getCyan, set=setCyan)

        long getMagenta();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Magenta(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Magenta()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMagenta(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Magenta(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Magenta()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Magenta, get=getMagenta, set=setMagenta)

        long getYellow();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Yellow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Yellow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setYellow(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Yellow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Yellow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Yellow, get=getYellow, set=setYellow)

        long getBlack();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Black(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Black()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBlack(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Black(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Black()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Black, get=getBlack, set=setBlack)

        WdThemeColorIndex getObjectThemeColor();
        %MethodCode
            wpsapi::WdThemeColorIndex prop = (wpsapi::WdThemeColorIndex)0;
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

        PyObject* setObjectThemeColor(WdThemeColorIndex prop);
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
            wpsapi::single prop = 0;
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
