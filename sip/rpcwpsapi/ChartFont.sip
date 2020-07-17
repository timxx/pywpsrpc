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
    struct ChartFont : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Background(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Background(
            VARIANT prop) = 0;

        virtual HRESULT get_Bold(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Bold(
            VARIANT prop) = 0;

        virtual HRESULT get_Color(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT prop) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT prop) = 0;

        virtual HRESULT get_FontStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_FontStyle(
            VARIANT prop) = 0;

        virtual HRESULT get_Italic(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Italic(
            VARIANT prop) = 0;

        virtual HRESULT get_Name(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Name(
            VARIANT prop) = 0;

        virtual HRESULT get_OutlineFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_OutlineFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT prop) = 0;

        virtual HRESULT get_Size(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Size(
            VARIANT prop) = 0;

        virtual HRESULT get_StrikeThrough(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_StrikeThrough(
            VARIANT prop) = 0;

        virtual HRESULT get_Subscript(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Subscript(
            VARIANT prop) = 0;

        virtual HRESULT get_Superscript(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Superscript(
            VARIANT prop) = 0;

        virtual HRESULT get_Underline(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Underline(
            VARIANT prop) = 0;

        VARIANT getBackground();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Background(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Background()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackground(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Background(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Background()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Background, get=getBackground, set=setBackground)

        VARIANT getBold();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Bold(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bold()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBold(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Bold(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Bold()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Bold, get=getBold, set=setBold)

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

        VARIANT getFontStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_FontStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FontStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFontStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FontStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FontStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FontStyle, get=getFontStyle, set=setFontStyle)

        VARIANT getItalic();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Italic(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Italic()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setItalic(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Italic(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Italic()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Italic, get=getItalic, set=setItalic)

        VARIANT getName();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
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

        PyObject* setName(VARIANT prop);
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

        VARIANT getOutlineFont();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_OutlineFont(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutlineFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutlineFont(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutlineFont(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutlineFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutlineFont, get=getOutlineFont, set=setOutlineFont)

        VARIANT getShadow();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Shadow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shadow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShadow(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Shadow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Shadow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Shadow, get=getShadow, set=setShadow)

        VARIANT getSize();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Size(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Size()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSize(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Size(*a0);
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

        VARIANT getStrikeThrough();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_StrikeThrough(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrikeThrough()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrikeThrough(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrikeThrough(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrikeThrough()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrikeThrough, get=getStrikeThrough, set=setStrikeThrough)

        VARIANT getSubscript();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Subscript(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Subscript()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubscript(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Subscript(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Subscript()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Subscript, get=getSubscript, set=setSubscript)

        VARIANT getSuperscript();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Superscript(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Superscript()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuperscript(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Superscript(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Superscript()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Superscript, get=getSuperscript, set=setSuperscript)

        VARIANT getUnderline();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Underline(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Underline()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUnderline(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Underline(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Underline()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Underline, get=getUnderline, set=setUnderline)
    };
};
