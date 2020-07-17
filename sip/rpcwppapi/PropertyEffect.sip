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
    struct PropertyEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Property(
            MsoAnimProperty *Property /Out/) = 0;

        virtual HRESULT put_Property(
            MsoAnimProperty Property) = 0;

        virtual HRESULT get_Points(
            AnimationPoints **Points /Out/) = 0;

        virtual HRESULT get_From(
            VARIANT *From /Out/) = 0;

        virtual HRESULT put_From(
            VARIANT From) = 0;

        virtual HRESULT get_To(
            VARIANT *To /Out/) = 0;

        virtual HRESULT put_To(
            VARIANT To) = 0;

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

        MsoAnimProperty getProperty();
        %MethodCode
            wppapi::MsoAnimProperty prop = (wppapi::MsoAnimProperty)0;
            HRESULT hr = sipCpp->get_Property(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Property()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProperty(MsoAnimProperty prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Property(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Property()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Property, get=getProperty, set=setProperty)

        AnimationPoints* getPoints();
        %MethodCode
            wppapi::AnimationPoints *prop = nullptr;
            HRESULT hr = sipCpp->get_Points(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Points()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Points, get=getPoints)

        VARIANT getFrom();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_From(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_From()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrom(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_From(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_From()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=From, get=getFrom, set=setFrom)

        VARIANT getTo();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_To(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_To()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTo(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_To(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_To()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=To, get=getTo, set=setTo)
    };
};
