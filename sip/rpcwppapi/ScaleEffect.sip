/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct ScaleEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_ByX(
            single *ByX /Out/) = 0;

        virtual HRESULT put_ByX(
            single ByX) = 0;

        virtual HRESULT get_ByY(
            single *ByY /Out/) = 0;

        virtual HRESULT put_ByY(
            single ByY) = 0;

        virtual HRESULT get_FromX(
            single *FromX /Out/) = 0;

        virtual HRESULT put_FromX(
            single FromX) = 0;

        virtual HRESULT get_FromY(
            single *FromY /Out/) = 0;

        virtual HRESULT put_FromY(
            single FromY) = 0;

        virtual HRESULT get_ToX(
            single *ToX /Out/) = 0;

        virtual HRESULT put_ToX(
            single ToX) = 0;

        virtual HRESULT get_ToY(
            single *ToY /Out/) = 0;

        virtual HRESULT put_ToY(
            single ToY) = 0;

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
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

        single getByX();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_ByX(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ByX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setByX(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ByX(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ByX()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ByX, get=getByX, set=setByX)

        single getByY();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_ByY(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ByY()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setByY(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ByY(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ByY()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ByY, get=getByY, set=setByY)

        single getFromX();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_FromX(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FromX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFromX(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FromX(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FromX()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FromX, get=getFromX, set=setFromX)

        single getFromY();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_FromY(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FromY()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFromY(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FromY(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FromY()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FromY, get=getFromY, set=setFromY)

        single getToX();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_ToX(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ToX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setToX(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ToX(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ToX()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ToX, get=getToX, set=setToX)

        single getToY();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_ToY(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ToY()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setToY(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ToY(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ToY()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ToY, get=getToY, set=setToY)
    };
};
