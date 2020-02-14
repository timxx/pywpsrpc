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
    struct SignatureSet : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT get_Count(
            int *pcSig /Out/) = 0;

        virtual HRESULT get_Item(
            int iSig,
            Signature **ppidisp /Out/) = 0;

        virtual HRESULT Add(
            Signature **ppidisp /Out/) = 0;

        virtual HRESULT Commit() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT AddNonVisibleSignature(
            VARIANT varSigProv = argMissing2(),
            Signature **ppidisp /Out/ = 0) = 0;

        virtual HRESULT get_CanAddSignatureLine(
            VARIANT_BOOL *pvarfCanAddSigLine /Out/) = 0;

        virtual HRESULT AddSignatureLine(
            VARIANT varSigProv = argMissing2(),
            Signature **ppidisp /Out/ = 0) = 0;

        virtual HRESULT get_Subset(
            MsoSignatureSubset *psubset /Out/) = 0;

        virtual HRESULT put_Subset(
            MsoSignatureSubset psubset) = 0;

        virtual HRESULT put_ShowSignaturesPane(
            VARIANT_BOOL rhs) = 0;

    };
};
