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
    struct TabStops : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            int Index,
            TabStop **Item /Out/) = 0;

        TabStop* __getitem__(int index) const;
        %MethodCode
            wppapi::TabStop *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_DefaultSpacing(
            single *DefaultSpacing /Out/) = 0;

        virtual HRESULT put_DefaultSpacing(
            single DefaultSpacing) = 0;

        virtual HRESULT Add(
            PpTabStopType Type,
            single Position,
            TabStop **Add /Out/) = 0;

    };
};
