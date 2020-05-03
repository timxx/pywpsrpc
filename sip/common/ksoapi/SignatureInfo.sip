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
    struct SignatureInfo : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_ReadOnly(
            VARIANT_BOOL *pvarf /Out/) = 0;

        virtual HRESULT get_SignatureProvider(
            BSTR *pbstrSigProv /Out/) = 0;

        virtual HRESULT get_SignatureText(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_SignatureText(
            BSTR pbstr) = 0;

        virtual HRESULT get_SignatureImage(
            IPictureDisp **ppipictdisp /Out/) = 0;

        virtual HRESULT put_SignatureImage(
            IPictureDisp *ppipictdisp) = 0;

        virtual HRESULT get_SignatureComment(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_SignatureComment(
            BSTR pbstr) = 0;

        virtual HRESULT GetSignatureDetail(
            SignatureDetail sigdet,
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT GetCertificateDetail(
            CertificateDetail certdet,
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_ContentVerificationResults(
            ContentVerificationResults *pcontverres /Out/) = 0;

        virtual HRESULT get_CertificateVerificationResults(
            CertificateVerificationResults *pcertverres /Out/) = 0;

        virtual HRESULT get_IsValid(
            VARIANT_BOOL *pvarfValid /Out/) = 0;

        virtual HRESULT get_IsCertificateExpired(
            VARIANT_BOOL *pvarfExpired /Out/) = 0;

        virtual HRESULT get_IsCertificateRevoked(
            VARIANT_BOOL *pvarfRevoked /Out/) = 0;

        virtual HRESULT get_IsCertificateUntrusted(
            VARIANT_BOOL *pvarfUntrusted /Out/) = 0;

        virtual HRESULT ShowSignatureCertificate(
            IUnknown *ParentWindow) = 0;

        virtual HRESULT SelectSignatureCertificate(
            IUnknown *ParentWindow) = 0;

        virtual HRESULT SelectCertificateDetailByThumbprint(
            BSTR bstrThumbprint) = 0;

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

        BSTR getSignatureText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SignatureText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SignatureText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSignatureText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SignatureText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SignatureText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SignatureText, get=getSignatureText, set=setSignatureText)

        IPictureDisp* getSignatureImage();
        %MethodCode
            IPictureDisp *prop = nullptr;
            HRESULT hr = sipCpp->get_SignatureImage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SignatureImage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSignatureImage(IPictureDisp *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SignatureImage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SignatureImage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SignatureImage, get=getSignatureImage, set=setSignatureImage)

        BSTR getSignatureComment();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SignatureComment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SignatureComment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSignatureComment(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SignatureComment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SignatureComment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SignatureComment, get=getSignatureComment, set=setSignatureComment)

        ContentVerificationResults getContentVerificationResults();
        %MethodCode
            ksoapi::ContentVerificationResults prop = (ksoapi::ContentVerificationResults)0;
            HRESULT hr = sipCpp->get_ContentVerificationResults(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContentVerificationResults()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContentVerificationResults, get=getContentVerificationResults)

        CertificateVerificationResults getCertificateVerificationResults();
        %MethodCode
            ksoapi::CertificateVerificationResults prop = (ksoapi::CertificateVerificationResults)0;
            HRESULT hr = sipCpp->get_CertificateVerificationResults(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CertificateVerificationResults()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CertificateVerificationResults, get=getCertificateVerificationResults)

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

        VARIANT_BOOL getIsCertificateUntrusted();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsCertificateUntrusted(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsCertificateUntrusted()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsCertificateUntrusted, get=getIsCertificateUntrusted)
    };
};
