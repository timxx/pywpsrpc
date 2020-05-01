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
    struct DocumentFields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_DefaultSorting(
            WdDocumentFieldSortBy *prop /Out/) = 0;

        virtual HRESULT put_DefaultSorting(
            WdDocumentFieldSortBy prop) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            DocumentField **prop /Out/) = 0;

        DocumentField* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::DocumentField *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            BSTR Name,
            VARIANT *Range = argMissing(),
            VARIANT *Hidden = argMissing(),
            VARIANT *PrintOut = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            DocumentField **prop /Out/ = 0) = 0;

        virtual HRESULT Exists(
            BSTR Name,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_InsertionMode(
            VARIANT_BOOL *insertIntoItem /Out/) = 0;

        virtual HRESULT put_InsertionMode(
            VARIANT_BOOL insertIntoItem) = 0;

    };
};
