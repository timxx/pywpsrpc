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
    struct Source : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Tag(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Field(
            BSTR Name,
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Field(
            BSTR Name,
            BSTR prop) = 0;

        virtual HRESULT get_XML(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Cited(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

    };
};
