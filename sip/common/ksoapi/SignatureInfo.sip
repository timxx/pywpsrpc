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

    };
};
