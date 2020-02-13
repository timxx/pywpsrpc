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
    struct CustomLayouts : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            CustomLayout **Item /Out/) = 0;

        virtual HRESULT Add(
            int Index,
            CustomLayout **Add /Out/) = 0;

        virtual HRESULT Paste(
            int Index,
            CustomLayout **Paste /Out/) = 0;

    };
};
