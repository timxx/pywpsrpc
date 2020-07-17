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
    struct SoftEdgeFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            MsoSoftEdgeType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoSoftEdgeType prop) = 0;

        virtual HRESULT get_Radius(
            single *prop /Out/) = 0;

        virtual HRESULT put_Radius(
            single prop) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        MsoSoftEdgeType getType();
        %MethodCode
            wpsapi::MsoSoftEdgeType prop = (wpsapi::MsoSoftEdgeType)0;
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

        PyObject* setType(MsoSoftEdgeType prop);
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

        single getRadius();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Radius(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Radius()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRadius(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Radius(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Radius()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Radius, get=getRadius, set=setRadius)

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
    };
};
