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
    struct IMsoCategory : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT  get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT  get_Name(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT  get_IsFiltered(
            VARIANT_BOOL *pfIsFiltered /Out/) = 0;

        virtual HRESULT  put_IsFiltered(
            VARIANT_BOOL pfIsFiltered) = 0;

    };
};
