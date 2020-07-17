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
    struct IMsoTickLabels : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Delete(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **ppval /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pval /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *pval /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR pval) = 0;

        virtual HRESULT get_NumberFormatLinked(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_NumberFormatLinked(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT pval) = 0;

        virtual HRESULT get_Orientation(
            XlTickLabelOrientation *pval /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlTickLabelOrientation pval) = 0;

        virtual HRESULT Select(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            int *pval /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            int pval) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT pval) = 0;

        virtual HRESULT get_Depth(
            int *pval /Out/) = 0;

        virtual HRESULT get_Offset(
            int *pval /Out/) = 0;

        virtual HRESULT put_Offset(
            int pval) = 0;

        virtual HRESULT get_Alignment(
            int *pval /Out/) = 0;

        virtual HRESULT put_Alignment(
            int pval) = 0;

        virtual HRESULT get_MultiLevel(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MultiLevel(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

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

        %Property(name=Name, get=getName)

        BSTR getNumberFormat();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NumberFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormat(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormat, get=getNumberFormat, set=setNumberFormat)

        VARIANT_BOOL getNumberFormatLinked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NumberFormatLinked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormatLinked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormatLinked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormatLinked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormatLinked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormatLinked, get=getNumberFormatLinked, set=setNumberFormatLinked)

        VARIANT getNumberFormatLocal();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_NumberFormatLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormatLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormatLocal(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormatLocal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormatLocal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormatLocal, get=getNumberFormatLocal, set=setNumberFormatLocal)

        XlTickLabelOrientation getOrientation();
        %MethodCode
            ksoapi::XlTickLabelOrientation prop = (ksoapi::XlTickLabelOrientation)0;
            HRESULT hr = sipCpp->get_Orientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Orientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrientation(XlTickLabelOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Orientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Orientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Orientation, get=getOrientation, set=setOrientation)

        int getReadingOrder();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_ReadingOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingOrder(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingOrder, get=getReadingOrder, set=setReadingOrder)

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

        int getDepth();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Depth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Depth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Depth, get=getDepth)

        int getOffset();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Offset(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Offset()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOffset(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Offset(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Offset()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Offset, get=getOffset, set=setOffset)

        int getAlignment();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Alignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Alignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlignment(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Alignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Alignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Alignment, get=getAlignment, set=setAlignment)

        VARIANT_BOOL getMultiLevel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MultiLevel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MultiLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMultiLevel(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MultiLevel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MultiLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MultiLevel, get=getMultiLevel, set=setMultiLevel)

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
