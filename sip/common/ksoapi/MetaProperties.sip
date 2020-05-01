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
    struct MetaProperties : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            VARIANT Index,
            MetaProperty **ppmp /Out/) = 0;

        MetaProperty* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::MetaProperty *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT GetItemByInternalName(
            BSTR InternalName,
            MetaProperty **ppmp /Out/) = 0;

        virtual HRESULT get_Count(
            long *pc /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Validate(
            BSTR *pbstrError /Out/) = 0;

        virtual HRESULT get_ValidationError(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_SchemaXml(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };
};
