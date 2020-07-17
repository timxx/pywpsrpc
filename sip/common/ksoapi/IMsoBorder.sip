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
    struct IMsoBorder : public IDispatch /Abstract/
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

        virtual HRESULT put_LineStyle(
            VARIANT pval) = 0;

        virtual HRESULT get_LineStyle(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Weight(
            VARIANT pval) = 0;

        virtual HRESULT get_Weight(
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

        VARIANT getLineStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_LineStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineStyle, get=getLineStyle, set=setLineStyle)

        VARIANT getWeight();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Weight(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Weight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWeight(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Weight(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Weight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Weight, get=getWeight, set=setWeight)
    };
};
