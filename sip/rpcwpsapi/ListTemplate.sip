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
    struct ListTemplate : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_OutlineNumbered(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OutlineNumbered(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_ListLevels(
            ListLevels **prop /Out/) = 0;

        virtual HRESULT Convert(
            VARIANT *Level = argMissing(),
            ListTemplate **prop /Out/ = 0) = 0;

    };
};
