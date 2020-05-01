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
    struct TabStops : public IDispatch /Abstract/
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
            TabStop **prop /Out/) = 0;

        TabStop* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::TabStop *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            single Position,
            VARIANT *Alignment = argMissing(),
            VARIANT *Leader = argMissing(),
            TabStop **prop /Out/ = 0) = 0;

        virtual HRESULT ClearAll() = 0;

        virtual HRESULT Before(
            single Position,
            TabStop **prop /Out/) = 0;

        virtual HRESULT After(
            single Position,
            TabStop **prop /Out/) = 0;

    };
};
