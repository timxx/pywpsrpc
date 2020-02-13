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
    struct SignatureProvider : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT GenerateSignatureLineImage(
            SignatureLineImage siglnimg,
            SignatureSetup *psigsetup,
            SignatureInfo *psiginfo,
            IUnknown *XmlDsigStream,
            IPictureDisp **ppipictdisp /Out/) = 0;

        virtual HRESULT ShowSignatureSetup(
            IUnknown *ParentWindow,
            SignatureSetup *psigsetup) = 0;

        virtual HRESULT ShowSigningCeremony(
            IUnknown *ParentWindow,
            SignatureSetup *psigsetup,
            SignatureInfo *psiginfo) = 0;

        virtual HRESULT SignXmlDsig(
            IUnknown *QueryContinue,
            SignatureSetup *psigsetup,
            SignatureInfo *psiginfo,
            IUnknown *XmlDsigStream) = 0;

        virtual HRESULT NotifySignatureAdded(
            IUnknown *ParentWindow,
            SignatureSetup *psigsetup,
            SignatureInfo *psiginfo) = 0;

        virtual HRESULT VerifyXmlDsig(
            IUnknown *QueryContinue,
            SignatureSetup *psigsetup,
            SignatureInfo *psiginfo,
            IUnknown *XmlDsigStream,
            ContentVerificationResults *pcontverres /In,Out/,
            CertificateVerificationResults *pcertverres /In,Out/) = 0;

        virtual HRESULT ShowSignatureDetails(
            IUnknown *ParentWindow,
            SignatureSetup *psigsetup,
            SignatureInfo *psiginfo,
            IUnknown *XmlDsigStream,
            ContentVerificationResults *pcontverres /In,Out/,
            CertificateVerificationResults *pcertverres /In,Out/) = 0;

        virtual HRESULT GetProviderDetail(
            SignatureProviderDetail sigprovdet,
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT HashStream(
            IUnknown *QueryContinue,
            IUnknown *Stream,
            SAFEARRAY * *ppsargb /Out/) = 0;

    };
};
