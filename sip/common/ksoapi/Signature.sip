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
    struct Signature : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Signer(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Issuer(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_ExpireDate(
            VARIANT *pvarDate /Out/) = 0;

        virtual HRESULT get_IsValid(
            VARIANT_BOOL *pvarfValid /Out/) = 0;

        virtual HRESULT get_AttachCertificate(
            VARIANT_BOOL *pvarfAttach /Out/) = 0;

        virtual HRESULT put_AttachCertificate(
            VARIANT_BOOL pvarfAttach) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_IsCertificateExpired(
            VARIANT_BOOL *pvarfExpired /Out/) = 0;

        virtual HRESULT get_IsCertificateRevoked(
            VARIANT_BOOL *pvarfRevoked /Out/) = 0;

        virtual HRESULT get_SignDate(
            VARIANT *pvarDate /Out/) = 0;

        virtual HRESULT get_IsSigned(
            VARIANT_BOOL *pvarfSigned /Out/) = 0;

        virtual HRESULT Sign(
            VARIANT varSigImg = argMissing2(),
            VARIANT varDelSuggSigner = argMissing2(),
            VARIANT varDelSuggSignerLine2 = argMissing2(),
            VARIANT varDelSuggSignerEmail = argMissing2()) = 0;

        virtual HRESULT get_Details(
            SignatureInfo **ppsiginfo /Out/) = 0;

        virtual HRESULT ShowDetails() = 0;

        virtual HRESULT get_CanSetup(
            VARIANT_BOOL *pvarfCanSetup /Out/) = 0;

        virtual HRESULT get_Setup(
            SignatureSetup **ppsigsetup /Out/) = 0;

        virtual HRESULT get_IsSignatureLine(
            VARIANT_BOOL *pvarfSignatureLine /Out/) = 0;

        virtual HRESULT get_SignatureLineShape(
            IDispatch **ppidispShape /Out/) = 0;

        virtual HRESULT get_SortHint(
            long *plSortHint /Out/) = 0;

        BSTR getSigner();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Signer(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Signer()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Signer, get=getSigner)

        BSTR getIssuer();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Issuer(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Issuer()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Issuer, get=getIssuer)

        VARIANT getExpireDate();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ExpireDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExpireDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ExpireDate, get=getExpireDate)

        VARIANT_BOOL getIsValid();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsValid(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsValid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsValid, get=getIsValid)

        VARIANT_BOOL getAttachCertificate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AttachCertificate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AttachCertificate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAttachCertificate(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AttachCertificate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AttachCertificate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AttachCertificate, get=getAttachCertificate, set=setAttachCertificate)

        VARIANT_BOOL getIsCertificateExpired();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsCertificateExpired(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsCertificateExpired()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsCertificateExpired, get=getIsCertificateExpired)

        VARIANT_BOOL getIsCertificateRevoked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsCertificateRevoked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsCertificateRevoked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsCertificateRevoked, get=getIsCertificateRevoked)

        VARIANT getSignDate();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_SignDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SignDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SignDate, get=getSignDate)

        VARIANT_BOOL getIsSigned();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsSigned(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsSigned()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsSigned, get=getIsSigned)

        SignatureInfo* getDetails();
        %MethodCode
            ksoapi::SignatureInfo *prop = nullptr;
            HRESULT hr = sipCpp->get_Details(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Details()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Details, get=getDetails)

        VARIANT_BOOL getCanSetup();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CanSetup(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanSetup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanSetup, get=getCanSetup)

        SignatureSetup* getSetup();
        %MethodCode
            ksoapi::SignatureSetup *prop = nullptr;
            HRESULT hr = sipCpp->get_Setup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Setup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Setup, get=getSetup)

        VARIANT_BOOL getIsSignatureLine();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsSignatureLine(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsSignatureLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsSignatureLine, get=getIsSignatureLine)

        IDispatch* getSignatureLineShape();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_SignatureLineShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SignatureLineShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SignatureLineShape, get=getSignatureLineShape)

        long getSortHint();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SortHint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortHint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SortHint, get=getSortHint)
    };
};
