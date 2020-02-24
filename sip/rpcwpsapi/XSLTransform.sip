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
    struct XSLTransform : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Alias(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR *prop /Out/ = 0) = 0;

        virtual HRESULT put_Alias(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR prop = 0) = 0;

        virtual HRESULT get_Location(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR *prop /Out/ = 0) = 0;

        virtual HRESULT put_Location(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR prop = 0) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

    };
};
