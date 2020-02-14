/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IAllowEditRange : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Title(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR RHS) = 0;

        virtual HRESULT get_Range(
            Range **RHS /Out/) = 0;

        virtual HRESULT putref_Range(
            Range *RHS) = 0;

        virtual HRESULT ChangePassword(
            BSTR Password) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Unprotect(
            VARIANT Password = argMissing2()) = 0;

        virtual HRESULT get_Users(
            UserAccessList **RHS /Out/) = 0;

    };
};
