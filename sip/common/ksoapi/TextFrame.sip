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
    struct TextFrame : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_MarginBottom(
            single *MarginBottom /Out/) = 0;

        virtual HRESULT put_MarginBottom(
            single MarginBottom) = 0;

        virtual HRESULT get_MarginLeft(
            single *MarginLeft /Out/) = 0;

        virtual HRESULT put_MarginLeft(
            single MarginLeft) = 0;

        virtual HRESULT get_MarginRight(
            single *MarginRight /Out/) = 0;

        virtual HRESULT put_MarginRight(
            single MarginRight) = 0;

        virtual HRESULT get_MarginTop(
            single *MarginTop /Out/) = 0;

        virtual HRESULT put_MarginTop(
            single MarginTop) = 0;

        virtual HRESULT get_Orientation(
            MsoTextOrientation *Orientation /Out/) = 0;

        virtual HRESULT put_Orientation(
            MsoTextOrientation Orientation) = 0;

        single getMarginBottom();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_MarginBottom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarginBottom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarginBottom(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarginBottom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarginBottom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarginBottom, get=getMarginBottom, set=setMarginBottom)

        single getMarginLeft();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_MarginLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarginLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarginLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarginLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarginLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarginLeft, get=getMarginLeft, set=setMarginLeft)

        single getMarginRight();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_MarginRight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarginRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarginRight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarginRight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarginRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarginRight, get=getMarginRight, set=setMarginRight)

        single getMarginTop();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_MarginTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarginTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarginTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarginTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarginTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarginTop, get=getMarginTop, set=setMarginTop)

        MsoTextOrientation getOrientation();
        %MethodCode
            ksoapi::MsoTextOrientation prop = (ksoapi::MsoTextOrientation)0;
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

        PyObject* setOrientation(MsoTextOrientation prop);
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
    };
};
