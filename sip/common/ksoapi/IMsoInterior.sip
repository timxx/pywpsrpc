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
    struct IMsoInterior : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Color(
            VARIANT pval) = 0;

        virtual HRESULT get_Color(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT pval) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT pval) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Pattern(
            VARIANT pval) = 0;

        virtual HRESULT get_Pattern(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_PatternColor(
            VARIANT pval) = 0;

        virtual HRESULT get_PatternColor(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_PatternColorIndex(
            VARIANT pval) = 0;

        virtual HRESULT get_PatternColorIndex(
            VARIANT *pval /Out/) = 0;

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
    };
};
