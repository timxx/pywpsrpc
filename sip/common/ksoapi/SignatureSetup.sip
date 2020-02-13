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

    };
};
