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
    struct IMsoPlotArea : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *bstr /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Height(
            double *pd /Out/) = 0;

        virtual HRESULT put_Height(
            double pd) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_Left(
            double *pd /Out/) = 0;

        virtual HRESULT put_Left(
            double pd) = 0;

        virtual HRESULT get_Top(
            double *pd /Out/) = 0;

        virtual HRESULT put_Top(
            double pd) = 0;

        virtual HRESULT get_Width(
            double *pd /Out/) = 0;

        virtual HRESULT put_Width(
            double pd) = 0;

        virtual HRESULT get_InsideLeft(
            double *pd /Out/) = 0;

        virtual HRESULT put_InsideLeft(
            double pd) = 0;

        virtual HRESULT get_InsideTop(
            double *pd /Out/) = 0;

        virtual HRESULT put_InsideTop(
            double pd) = 0;

        virtual HRESULT get_InsideWidth(
            double *pd /Out/) = 0;

        virtual HRESULT put_InsideWidth(
            double pd) = 0;

        virtual HRESULT get_InsideHeight(
            double *pd /Out/) = 0;

        virtual HRESULT put_InsideHeight(
            double pd) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *pval /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition pval) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

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

        double getHeight();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        IMsoInterior* getInterior();
        %MethodCode
            ksoapi::IMsoInterior *prop = nullptr;
            HRESULT hr = sipCpp->get_Interior(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Interior()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Interior, get=getInterior)

        ChartFillFormat* getFill();
        %MethodCode
            ksoapi::ChartFillFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Fill(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fill()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Fill, get=getFill)

        double getLeft();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeft(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Left(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Left()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Left, get=getLeft, set=setLeft)

        double getTop();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTop(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Top(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Top()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Top, get=getTop, set=setTop)

        double getWidth();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidth(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)

        double getInsideLeft();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_InsideLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsideLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsideLeft(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsideLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsideLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsideLeft, get=getInsideLeft, set=setInsideLeft)

        double getInsideTop();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_InsideTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsideTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsideTop(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsideTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsideTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsideTop, get=getInsideTop, set=setInsideTop)

        double getInsideWidth();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_InsideWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsideWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsideWidth(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsideWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsideWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsideWidth, get=getInsideWidth, set=setInsideWidth)

        double getInsideHeight();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_InsideHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsideHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsideHeight(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsideHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsideHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsideHeight, get=getInsideHeight, set=setInsideHeight)

        XlChartElementPosition getPosition();
        %MethodCode
            ksoapi::XlChartElementPosition prop = (ksoapi::XlChartElementPosition)0;
            HRESULT hr = sipCpp->get_Position(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Position()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPosition(XlChartElementPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Position(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Position()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Position, get=getPosition, set=setPosition)

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
