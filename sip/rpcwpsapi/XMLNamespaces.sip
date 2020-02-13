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
    struct XMLNamespaces : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            XMLNamespace **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Path,
            VARIANT *NamespaceURI = argMissing(),
            VARIANT *Alias = argMissing(),
            VARIANT_BOOL InstallForAllUsers = VARIANT_FALSE,
            XMLNamespace **prop /Out/ = 0) = 0;

        virtual HRESULT InstallManifest(
            BSTR Path,
            VARIANT_BOOL InstallForAllUsers = 0) = 0;

    };
};
