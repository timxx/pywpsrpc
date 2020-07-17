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
    struct EmailSignature : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_NewMessageSignature(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NewMessageSignature(
            BSTR prop) = 0;

        virtual HRESULT get_ReplyMessageSignature(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ReplyMessageSignature(
            BSTR prop) = 0;

        virtual HRESULT get_EmailSignatureEntries(
            EmailSignatureEntries **prop /Out/) = 0;

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

        BSTR getNewMessageSignature();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NewMessageSignature(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NewMessageSignature()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNewMessageSignature(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NewMessageSignature(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NewMessageSignature()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NewMessageSignature, get=getNewMessageSignature, set=setNewMessageSignature)

        BSTR getReplyMessageSignature();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ReplyMessageSignature(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReplyMessageSignature()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReplyMessageSignature(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReplyMessageSignature(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReplyMessageSignature()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReplyMessageSignature, get=getReplyMessageSignature, set=setReplyMessageSignature)

        EmailSignatureEntries* getEmailSignatureEntries();
        %MethodCode
            wpsapi::EmailSignatureEntries *prop = nullptr;
            HRESULT hr = sipCpp->get_EmailSignatureEntries(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmailSignatureEntries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EmailSignatureEntries, get=getEmailSignatureEntries)
    };
};
