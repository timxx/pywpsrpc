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
    struct IRoutingSlip : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Delivery(
            XlRoutingSlipDelivery *RHS /Out/) = 0;

        virtual HRESULT put_Delivery(
            XlRoutingSlipDelivery RHS) = 0;

        virtual HRESULT get_Message(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Message(
            VARIANT RHS) = 0;

        virtual HRESULT get_Recipients(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_Recipients(
            VARIANT Index = argMissing2(),
            VARIANT RHS = argMissing2()) = 0;

        virtual HRESULT Reset(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ReturnWhenDone(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ReturnWhenDone(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Status(
            XlRoutingSlipStatus *RHS /Out/) = 0;

        virtual HRESULT get_Subject(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Subject(
            VARIANT RHS) = 0;

        virtual HRESULT get_TrackStatus(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TrackStatus(
            VARIANT_BOOL RHS) = 0;

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

        XlRoutingSlipDelivery getDelivery();
        %MethodCode
            etapi::XlRoutingSlipDelivery prop = (etapi::XlRoutingSlipDelivery)0;
            HRESULT hr = sipCpp->get_Delivery(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Delivery()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDelivery(XlRoutingSlipDelivery prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Delivery(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Delivery()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Delivery, get=getDelivery, set=setDelivery)

        VARIANT getMessage();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Message(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Message()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMessage(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Message(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Message()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Message, get=getMessage, set=setMessage)

        VARIANT_BOOL getReturnWhenDone();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReturnWhenDone(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReturnWhenDone()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReturnWhenDone(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReturnWhenDone(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReturnWhenDone()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReturnWhenDone, get=getReturnWhenDone, set=setReturnWhenDone)

        XlRoutingSlipStatus getStatus();
        %MethodCode
            etapi::XlRoutingSlipStatus prop = (etapi::XlRoutingSlipStatus)0;
            HRESULT hr = sipCpp->get_Status(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Status()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Status, get=getStatus)

        VARIANT getSubject();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Subject(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Subject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubject(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Subject(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Subject()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Subject, get=getSubject, set=setSubject)

        VARIANT_BOOL getTrackStatus();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TrackStatus(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TrackStatus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTrackStatus(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TrackStatus(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TrackStatus()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TrackStatus, get=getTrackStatus, set=setTrackStatus)
    };
};
