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
    struct IUserAccess : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_AllowEdit(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AllowEdit(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

    };
};
