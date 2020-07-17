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
    struct IMailer : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_BCCRecipients(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_BCCRecipients(
            VARIANT RHS) = 0;

        virtual HRESULT get_CCRecipients(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CCRecipients(
            VARIANT RHS) = 0;

        virtual HRESULT get_Enclosures(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Enclosures(
            VARIANT RHS) = 0;

        virtual HRESULT get_Received(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SendDateTime(
            DATE *RHS /Out/) = 0;

        virtual HRESULT get_Sender(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Subject(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Subject(
            BSTR RHS) = 0;

        virtual HRESULT get_ToRecipients(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ToRecipients(
            VARIANT RHS) = 0;

        virtual HRESULT get_WhichAddress(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_WhichAddress(
            VARIANT RHS) = 0;

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

        PyObject* setBCCRecipients(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BCCRecipients(*a0);
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

        PyObject* setCCRecipients(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CCRecipients(*a0);
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

        PyObject* setEnclosures(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Enclosures(*a0);
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

        VARIANT getToRecipients();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ToRecipients(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ToRecipients()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setToRecipients(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ToRecipients(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ToRecipients()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ToRecipients, get=getToRecipients, set=setToRecipients)

        VARIANT getWhichAddress();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_WhichAddress(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WhichAddress()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWhichAddress(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WhichAddress(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WhichAddress()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WhichAddress, get=getWhichAddress, set=setWhichAddress)
    };
};
