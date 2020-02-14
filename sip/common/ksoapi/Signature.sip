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

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

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

    };
};
