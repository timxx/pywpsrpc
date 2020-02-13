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
    struct RecentFiles : public IDispatch /Abstract/
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

        virtual HRESULT get_Maximum(
            long *prop /Out/) = 0;

        virtual HRESULT put_Maximum(
            long prop) = 0;

        virtual HRESULT Item(
            long Index,
            RecentFile **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT *Document,
            VARIANT *ReadOnly = argMissing(),
            RecentFile **prop /Out/ = 0) = 0;

    };
};
