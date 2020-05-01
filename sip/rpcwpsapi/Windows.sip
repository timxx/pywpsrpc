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
    struct Windows : public IDispatch /Abstract/
    {
    public:
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

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Window **prop /Out/) = 0;

        Window* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::Window *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            VARIANT *window = argMissing(),
            Window **prop /Out/ = 0) = 0;

        virtual HRESULT Arrange(
            VARIANT *ArrangeStyle = argMissing()) = 0;

        virtual HRESULT CompareSideBySideWith(
            VARIANT *Document,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT BreakSideBySide(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT ResetPositionsSideBySide() = 0;

        virtual HRESULT get_SyncScrollingSideBySide(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SyncScrollingSideBySide(
            VARIANT_BOOL prop) = 0;

    };
};
