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
    struct DropDown : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Valid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Default(
            long *prop /Out/) = 0;

        virtual HRESULT put_Default(
            long prop) = 0;

        virtual HRESULT get_Value(
            long *prop /Out/) = 0;

        virtual HRESULT put_Value(
            long prop) = 0;

        virtual HRESULT get_ListEntries(
            ListEntries **prop /Out/) = 0;

    };
};
