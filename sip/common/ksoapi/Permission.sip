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
    struct Permission : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            VARIANT Index,
            UserPermission **UserPerm /Out/) = 0;

        virtual HRESULT get_Count(
            long *Count /Out/) = 0;

        virtual HRESULT get_EnableTrustedBrowser(
            VARIANT_BOOL *Enable /Out/) = 0;

        virtual HRESULT put_EnableTrustedBrowser(
            VARIANT_BOOL Enable) = 0;

        virtual HRESULT Add(
            BSTR UserId,
            VARIANT Permission,
            VARIANT ExpirationDate,
            UserPermission **UserPerm /Out/) = 0;

        virtual HRESULT ApplyPolicy(
            BSTR FileName) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT RemoveAll() = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *Enabled /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL Enabled) = 0;

        virtual HRESULT get_RequestPermissionURL(
            BSTR *Contact /Out/) = 0;

        virtual HRESULT put_RequestPermissionURL(
            BSTR Contact) = 0;

        virtual HRESULT get_PolicyName(
            BSTR *PolicyName /Out/) = 0;

        virtual HRESULT get_PolicyDescription(
            BSTR *PolicyDescription /Out/) = 0;

        virtual HRESULT get_StoreLicenses(
            VARIANT_BOOL *Enabled /Out/) = 0;

        virtual HRESULT put_StoreLicenses(
            VARIANT_BOOL Enabled) = 0;

        virtual HRESULT get_DocumentAuthor(
            BSTR *Author /Out/) = 0;

        virtual HRESULT put_DocumentAuthor(
            BSTR Author) = 0;

        virtual HRESULT get_PermissionFromPolicy(
            VARIANT_BOOL *FromPolicy /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };
};
