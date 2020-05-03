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
    struct SignatureSetup : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_ReadOnly(
            VARIANT_BOOL *pvarf /Out/) = 0;

        virtual HRESULT get_Id(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_SignatureProvider(
            BSTR *pbstrSigProv /Out/) = 0;

        virtual HRESULT get_SuggestedSigner(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_SuggestedSigner(
            BSTR pbstr) = 0;

        virtual HRESULT get_SuggestedSignerLine2(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_SuggestedSignerLine2(
            BSTR pbstr) = 0;

        virtual HRESULT get_SuggestedSignerEmail(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_SuggestedSignerEmail(
            BSTR pbstr) = 0;

        virtual HRESULT get_SigningInstructions(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_SigningInstructions(
            BSTR pbstr) = 0;

        virtual HRESULT get_AllowComments(
            VARIANT_BOOL *pvarf /Out/) = 0;

        virtual HRESULT put_AllowComments(
            VARIANT_BOOL pvarf) = 0;

        virtual HRESULT get_ShowSignDate(
            VARIANT_BOOL *pvarf /Out/) = 0;

        virtual HRESULT put_ShowSignDate(
            VARIANT_BOOL pvarf) = 0;

        virtual HRESULT get_AdditionalXml(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_AdditionalXml(
            BSTR pbstr) = 0;

        VARIANT_BOOL getReadOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadOnly(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReadOnly, get=getReadOnly)

        BSTR getId();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Id(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Id()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Id, get=getId)

        BSTR getSignatureProvider();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SignatureProvider(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SignatureProvider()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SignatureProvider, get=getSignatureProvider)

        BSTR getSuggestedSigner();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SuggestedSigner(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SuggestedSigner()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuggestedSigner(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SuggestedSigner(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SuggestedSigner()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SuggestedSigner, get=getSuggestedSigner, set=setSuggestedSigner)

        BSTR getSuggestedSignerLine2();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SuggestedSignerLine2(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SuggestedSignerLine2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuggestedSignerLine2(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SuggestedSignerLine2(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SuggestedSignerLine2()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SuggestedSignerLine2, get=getSuggestedSignerLine2, set=setSuggestedSignerLine2)

        BSTR getSuggestedSignerEmail();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SuggestedSignerEmail(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SuggestedSignerEmail()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuggestedSignerEmail(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SuggestedSignerEmail(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SuggestedSignerEmail()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SuggestedSignerEmail, get=getSuggestedSignerEmail, set=setSuggestedSignerEmail)

        BSTR getSigningInstructions();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SigningInstructions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SigningInstructions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSigningInstructions(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SigningInstructions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SigningInstructions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SigningInstructions, get=getSigningInstructions, set=setSigningInstructions)

        VARIANT_BOOL getAllowComments();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowComments(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowComments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowComments(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowComments(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowComments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowComments, get=getAllowComments, set=setAllowComments)

        VARIANT_BOOL getShowSignDate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowSignDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSignDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSignDate(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSignDate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSignDate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSignDate, get=getShowSignDate, set=setShowSignDate)

        BSTR getAdditionalXml();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AdditionalXml(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AdditionalXml()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAdditionalXml(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AdditionalXml(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AdditionalXml()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AdditionalXml, get=getAdditionalXml, set=setAdditionalXml)
    };
};
