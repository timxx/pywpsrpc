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
    struct WrapFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdWrapType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdWrapType prop) = 0;

        virtual HRESULT get_Side(
            WdWrapSideType *prop /Out/) = 0;

        virtual HRESULT put_Side(
            WdWrapSideType prop) = 0;

        virtual HRESULT get_DistanceTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceTop(
            single prop) = 0;

        virtual HRESULT get_DistanceBottom(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceBottom(
            single prop) = 0;

        virtual HRESULT get_DistanceLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceLeft(
            single prop) = 0;

        virtual HRESULT get_DistanceRight(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceRight(
            single prop) = 0;

        virtual HRESULT get_AllowOverlap(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllowOverlap(
            long prop) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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

        WdWrapType getType();
        %MethodCode
            wpsapi::WdWrapType prop = (wpsapi::WdWrapType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setType(WdWrapType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        WdWrapSideType getSide();
        %MethodCode
            wpsapi::WdWrapSideType prop = (wpsapi::WdWrapSideType)0;
            HRESULT hr = sipCpp->get_Side(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Side()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSide(WdWrapSideType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Side(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Side()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Side, get=getSide, set=setSide)

        single getDistanceTop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DistanceTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceTop, get=getDistanceTop, set=setDistanceTop)

        single getDistanceBottom();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DistanceBottom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceBottom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceBottom(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceBottom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceBottom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceBottom, get=getDistanceBottom, set=setDistanceBottom)

        single getDistanceLeft();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DistanceLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceLeft, get=getDistanceLeft, set=setDistanceLeft)

        single getDistanceRight();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DistanceRight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceRight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceRight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceRight, get=getDistanceRight, set=setDistanceRight)

        long getAllowOverlap();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AllowOverlap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowOverlap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowOverlap(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowOverlap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowOverlap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowOverlap, get=getAllowOverlap, set=setAllowOverlap)
    };
};
