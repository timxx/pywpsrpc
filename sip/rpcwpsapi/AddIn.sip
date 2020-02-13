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
    struct AddIn : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Installed(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Installed(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Compiled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Autoload(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

    };
};
