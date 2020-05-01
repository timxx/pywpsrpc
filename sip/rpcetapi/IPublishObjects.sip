/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IPublishObjects : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            XlSourceType SourceType,
            BSTR Filename,
            VARIANT Sheet = argMissing2(),
            VARIANT Source = argMissing2(),
            VARIANT HtmlType = argMissing2(),
            VARIANT DivID = argMissing2(),
            VARIANT Title = argMissing2(),
            PublishObject **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Item(
            VARIANT Index,
            PublishObject **RHS /Out/) = 0;

        PublishObject* __getitem__(VARIANT index) const;
        %MethodCode
            etapi::PublishObject *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get__Default(
            VARIANT Index,
            PublishObject **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Publish() = 0;

    };
};
