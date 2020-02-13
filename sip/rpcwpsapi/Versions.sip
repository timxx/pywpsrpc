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
    struct Versions : public IDispatch /Abstract/
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

        virtual HRESULT get_AutoVersion(
            WdAutoVersions *prop /Out/) = 0;

        virtual HRESULT put_AutoVersion(
            WdAutoVersions prop) = 0;

        virtual HRESULT Item(
            long Index,
            Version **prop /Out/) = 0;

        virtual HRESULT Save(
            VARIANT *Comment = argMissing()) = 0;

    };
};
