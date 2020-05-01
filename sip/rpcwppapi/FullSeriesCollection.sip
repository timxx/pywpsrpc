/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct FullSeriesCollection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            VARIANT Index,
            Series **RHS /Out/) = 0;

        Series* __getitem__(VARIANT index) const;
        %MethodCode
            wppapi::Series *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get_Application(
            Application **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index,
            Series **RHS /Out/) = 0;

    };
};
