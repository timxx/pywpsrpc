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
    struct Mailer : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_BCCRecipients(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_BCCRecipients(
            VARIANT *prop) = 0;

        virtual HRESULT get_CCRecipients(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_CCRecipients(
            VARIANT *prop) = 0;

        virtual HRESULT get_Recipients(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Recipients(
            VARIANT *prop) = 0;

        virtual HRESULT get_Enclosures(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Enclosures(
            VARIANT *prop) = 0;

        virtual HRESULT get_Sender(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_SendDateTime(
            DATE *prop /Out/) = 0;

        virtual HRESULT get_Received(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Subject(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Subject(
            BSTR prop) = 0;

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

        VARIANT getBCCRecipients();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_BCCRecipients(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BCCRecipients()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBCCRecipients(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BCCRecipients(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BCCRecipients()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BCCRecipients, get=getBCCRecipients, set=setBCCRecipients)

        VARIANT getCCRecipients();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CCRecipients(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CCRecipients()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCCRecipients(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CCRecipients(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CCRecipients()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CCRecipients, get=getCCRecipients, set=setCCRecipients)

        VARIANT getRecipients();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Recipients(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Recipients()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipients(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Recipients(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Recipients()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Recipients, get=getRecipients, set=setRecipients)

        VARIANT getEnclosures();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Enclosures(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Enclosures()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnclosures(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Enclosures(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Enclosures()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Enclosures, get=getEnclosures, set=setEnclosures)

        BSTR getSender();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Sender(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sender()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sender, get=getSender)

        DATE getSendDateTime();
        %MethodCode
            DATE prop = 0;
            HRESULT hr = sipCpp->get_SendDateTime(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SendDateTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SendDateTime, get=getSendDateTime)

        VARIANT_BOOL getReceived();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Received(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Received()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Received, get=getReceived)

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
    };
};
