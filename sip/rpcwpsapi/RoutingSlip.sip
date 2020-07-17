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
    struct RoutingSlip : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Subject(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Subject(
            BSTR prop) = 0;

        virtual HRESULT get_Message(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Message(
            BSTR prop) = 0;

        virtual HRESULT get_Delivery(
            WdRoutingSlipDelivery *prop /Out/) = 0;

        virtual HRESULT put_Delivery(
            WdRoutingSlipDelivery prop) = 0;

        virtual HRESULT get_TrackStatus(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TrackStatus(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Protect(
            WdProtectionType *prop /Out/) = 0;

        virtual HRESULT put_Protect(
            WdProtectionType prop) = 0;

        virtual HRESULT get_ReturnWhenDone(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReturnWhenDone(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Status(
            WdRoutingSlipStatus *prop /Out/) = 0;

        virtual HRESULT get_Recipients(
            VARIANT *Index = argMissing(),
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT AddRecipient(
            BSTR Recipient) = 0;

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

        BSTR getSubject();
        %MethodCode
            BSTR *prop = new BSTR;
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

        PyObject* setSubject(BSTR prop);
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

        BSTR getMessage();
        %MethodCode
            BSTR *prop = new BSTR;
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

        PyObject* setMessage(BSTR prop);
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

        WdRoutingSlipDelivery getDelivery();
        %MethodCode
            wpsapi::WdRoutingSlipDelivery prop = (wpsapi::WdRoutingSlipDelivery)0;
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

        PyObject* setDelivery(WdRoutingSlipDelivery prop);
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

        WdProtectionType getProtect();
        %MethodCode
            wpsapi::WdProtectionType prop = (wpsapi::WdProtectionType)0;
            HRESULT hr = sipCpp->get_Protect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Protect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtect(WdProtectionType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Protect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Protect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Protect, get=getProtect, set=setProtect)

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

        WdRoutingSlipStatus getStatus();
        %MethodCode
            wpsapi::WdRoutingSlipStatus prop = (wpsapi::WdRoutingSlipStatus)0;
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
    };
};
