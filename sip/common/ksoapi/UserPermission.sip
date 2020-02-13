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
    struct UserPermission : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_UserId(
            BSTR *UserId /Out/) = 0;

        virtual HRESULT get_Permission(
            long *Permission /Out/) = 0;

        virtual HRESULT put_Permission(
            long Permission) = 0;

        virtual HRESULT get_ExpirationDate(
            VARIANT *ExpirationDate /Out/) = 0;

        virtual HRESULT put_ExpirationDate(
            VARIANT ExpirationDate) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT Remove() = 0;

    };
};
