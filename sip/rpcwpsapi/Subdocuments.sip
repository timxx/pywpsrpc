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
    struct Subdocuments : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Expanded(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Expanded(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Item(
            long Index,
            Subdocument **prop /Out/) = 0;

        Subdocument* __getitem__(long index) const;
        %MethodCode
            wpsapi::Subdocument *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT AddFromFile(
            VARIANT *Name,
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            Subdocument **prop /Out/ = 0) = 0;

        virtual HRESULT AddFromRange(
            Range *Range,
            Subdocument **prop /Out/) = 0;

        virtual HRESULT Merge(
            VARIANT *FirstSubdocument = argMissing(),
            VARIANT *LastSubdocument = argMissing()) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Select() = 0;

    };
};
