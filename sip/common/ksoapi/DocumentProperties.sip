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
    struct DocumentProperties : public IDispatch /Abstract/
    {
    public:
        virtual IDispatch *get_Parent() = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            long lcid,
            DocumentProperty **ppIDocProp /Out/) = 0;

        virtual HRESULT get_Count(
            long *pc /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Add(
            BSTR Name,
            VARIANT_BOOL LinkToContent,
            VARIANT Type = argMissing2(),
            VARIANT Value = argMissing2(),
            VARIANT LinkSource = argMissing2(),
            long lcid = 0,
            DocumentProperty **ppIDocProp /Out/ = 0) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Creator(
            long *plCreator /Out/) = 0;

    };
};
