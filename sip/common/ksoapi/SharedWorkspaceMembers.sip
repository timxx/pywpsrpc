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
    struct SharedWorkspaceMembers : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT get_Item(
            int Index,
            SharedWorkspaceMember **ppidisp /Out/) = 0;

        virtual HRESULT get_Count(
            int *pcItems /Out/) = 0;

        virtual HRESULT Add(
            BSTR Email,
            BSTR DomainName,
            BSTR DisplayName,
            VARIANT Role = argMissing2(),
            SharedWorkspaceMember **ppMember /Out/ = 0) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_ItemCountExceeded(
            VARIANT_BOOL *pf /Out/) = 0;

    };
};
