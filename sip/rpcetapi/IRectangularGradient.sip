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
    struct IRectangularGradient : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ColorStops(
            ColorStops **RHS /Out/) = 0;

        virtual HRESULT get_RectangleTop(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RectangleTop(
            double RHS) = 0;

        virtual HRESULT get_RectangleBottom(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RectangleBottom(
            double RHS) = 0;

        virtual HRESULT get_RectangleLeft(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RectangleLeft(
            double RHS) = 0;

        virtual HRESULT get_RectangleRight(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RectangleRight(
            double RHS) = 0;

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

        ColorStops* getColorStops();
        %MethodCode
            etapi::ColorStops *prop = nullptr;
            HRESULT hr = sipCpp->get_ColorStops(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorStops()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColorStops, get=getColorStops)

        double getRectangleTop();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_RectangleTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RectangleTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRectangleTop(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RectangleTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RectangleTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RectangleTop, get=getRectangleTop, set=setRectangleTop)

        double getRectangleBottom();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_RectangleBottom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RectangleBottom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRectangleBottom(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RectangleBottom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RectangleBottom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RectangleBottom, get=getRectangleBottom, set=setRectangleBottom)

        double getRectangleLeft();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_RectangleLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RectangleLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRectangleLeft(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RectangleLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RectangleLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RectangleLeft, get=getRectangleLeft, set=setRectangleLeft)

        double getRectangleRight();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_RectangleRight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RectangleRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRectangleRight(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RectangleRight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RectangleRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RectangleRight, get=getRectangleRight, set=setRectangleRight)
    };
};
