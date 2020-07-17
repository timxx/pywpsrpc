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
    struct IInterior : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Color(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT RHS) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT RHS) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT RHS) = 0;

        virtual HRESULT get_Pattern(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Pattern(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternColor(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternColorIndex(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternColorIndex(
            VARIANT RHS) = 0;

        virtual HRESULT get_ThemeColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ThemeColor(
            VARIANT RHS) = 0;

        virtual HRESULT get_TintAndShade(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TintAndShade(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternThemeColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternThemeColor(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternTintAndShade(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternTintAndShade(
            VARIANT RHS) = 0;

        virtual HRESULT get_Gradient(
            IDispatch **RHS /Out/) = 0;

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

        VARIANT getColor();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Color(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Color()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColor(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Color(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Color()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Color, get=getColor, set=setColor)

        VARIANT getColorIndex();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ColorIndex(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColorIndex(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColorIndex(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColorIndex, get=getColorIndex, set=setColorIndex)

        VARIANT getInvertIfNegative();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_InvertIfNegative(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InvertIfNegative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInvertIfNegative(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InvertIfNegative(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InvertIfNegative()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InvertIfNegative, get=getInvertIfNegative, set=setInvertIfNegative)

        VARIANT getPattern();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Pattern(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Pattern()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPattern(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Pattern(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Pattern()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Pattern, get=getPattern, set=setPattern)

        VARIANT getPatternColor();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_PatternColor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PatternColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPatternColor(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PatternColor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PatternColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PatternColor, get=getPatternColor, set=setPatternColor)

        VARIANT getPatternColorIndex();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_PatternColorIndex(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PatternColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPatternColorIndex(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PatternColorIndex(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PatternColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PatternColorIndex, get=getPatternColorIndex, set=setPatternColorIndex)

        VARIANT getThemeColor();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ThemeColor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThemeColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setThemeColor(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ThemeColor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ThemeColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ThemeColor, get=getThemeColor, set=setThemeColor)

        VARIANT getTintAndShade();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_TintAndShade(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TintAndShade()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTintAndShade(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TintAndShade(*a0);
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

        VARIANT getPatternThemeColor();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_PatternThemeColor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PatternThemeColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPatternThemeColor(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PatternThemeColor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PatternThemeColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PatternThemeColor, get=getPatternThemeColor, set=setPatternThemeColor)

        VARIANT getPatternTintAndShade();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_PatternTintAndShade(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PatternTintAndShade()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPatternTintAndShade(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PatternTintAndShade(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PatternTintAndShade()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PatternTintAndShade, get=getPatternTintAndShade, set=setPatternTintAndShade)

        IDispatch* getGradient();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Gradient(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Gradient()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Gradient, get=getGradient)
    };
};
