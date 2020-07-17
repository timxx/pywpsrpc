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
    struct IPlotArea : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Border(
            Border **RHS /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **RHS /Out/) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get__InsideLeft(
            double *RHS /Out/) = 0;

        virtual HRESULT get__InsideTop(
            double *RHS /Out/) = 0;

        virtual HRESULT get__InsideWidth(
            double *RHS /Out/) = 0;

        virtual HRESULT get__InsideHeight(
            double *RHS /Out/) = 0;

        virtual HRESULT get_InsideLeft(
            double *RHS /Out/) = 0;

        virtual HRESULT put_InsideLeft(
            double RHS) = 0;

        virtual HRESULT get_InsideTop(
            double *RHS /Out/) = 0;

        virtual HRESULT put_InsideTop(
            double RHS) = 0;

        virtual HRESULT get_InsideWidth(
            double *RHS /Out/) = 0;

        virtual HRESULT put_InsideWidth(
            double RHS) = 0;

        virtual HRESULT get_InsideHeight(
            double *RHS /Out/) = 0;

        virtual HRESULT put_InsideHeight(
            double RHS) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **RHS /Out/) = 0;

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

        Border* getBorder();
        %MethodCode
            etapi::Border *prop = nullptr;
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

        Interior* getInterior();
        %MethodCode
            etapi::Interior *prop = nullptr;
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
            etapi::ChartFillFormat *prop = nullptr;
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

        double get_InsideLeft();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get__InsideLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__InsideLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_InsideLeft, get=get_InsideLeft)

        double get_InsideTop();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get__InsideTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__InsideTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_InsideTop, get=get_InsideTop)

        double get_InsideWidth();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get__InsideWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__InsideWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_InsideWidth, get=get_InsideWidth)

        double get_InsideHeight();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get__InsideHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__InsideHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_InsideHeight, get=get_InsideHeight)

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
            etapi::XlChartElementPosition prop = (etapi::XlChartElementPosition)0;
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

        ChartFormat* getFormat();
        %MethodCode
            etapi::ChartFormat *prop = nullptr;
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
