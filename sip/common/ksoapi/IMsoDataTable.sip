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
    struct IMsoDataTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT put_HasBorderHorizontal(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_HasBorderHorizontal(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT put_HasBorderVertical(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_HasBorderVertical(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT put_HasBorderOutline(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_HasBorderOutline(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppline /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **pfont /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        VARIANT_BOOL getShowLegendKey();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowLegendKey(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowLegendKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowLegendKey(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowLegendKey(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowLegendKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowLegendKey, get=getShowLegendKey, set=setShowLegendKey)

        VARIANT_BOOL getHasBorderHorizontal();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasBorderHorizontal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasBorderHorizontal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasBorderHorizontal(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasBorderHorizontal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasBorderHorizontal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasBorderHorizontal, get=getHasBorderHorizontal, set=setHasBorderHorizontal)

        VARIANT_BOOL getHasBorderVertical();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasBorderVertical(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasBorderVertical()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasBorderVertical(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasBorderVertical(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasBorderVertical()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasBorderVertical, get=getHasBorderVertical, set=setHasBorderVertical)

        VARIANT_BOOL getHasBorderOutline();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasBorderOutline(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasBorderOutline()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasBorderOutline(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasBorderOutline(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasBorderOutline()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasBorderOutline, get=getHasBorderOutline, set=setHasBorderOutline)

        IMsoBorder* getBorder();
        %MethodCode
            ksoapi::IMsoBorder *prop = nullptr;
            HRESULT hr = sipCpp->get_Border(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Border()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Border, get=getBorder)

        ChartFont* getFont();
        %MethodCode
            ksoapi::ChartFont *prop = nullptr;
            HRESULT hr = sipCpp->get_Font(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Font()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Font, get=getFont)

        VARIANT getAutoScaleFont();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_AutoScaleFont(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoScaleFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoScaleFont(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoScaleFont(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoScaleFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoScaleFont, get=getAutoScaleFont, set=setAutoScaleFont)

        IMsoChartFormat* getFormat();
        %MethodCode
            ksoapi::IMsoChartFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Format(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Format()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Format, get=getFormat)
    };
};
