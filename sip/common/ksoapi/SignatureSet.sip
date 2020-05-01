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

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Item(
            int iSig,
            Signature **ppidisp /Out/) = 0;

        Signature* __getitem__(int index) const;
        %MethodCode
            ksoapi::Signature *prop = nullptr;
            if (sipCpp->get_Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

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
