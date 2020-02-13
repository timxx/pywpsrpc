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
    struct CheckBox : public IDispatch /Abstract/
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

        virtual HRESULT get_AutoSize(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoSize(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Size(
            single *prop /Out/) = 0;

        virtual HRESULT put_Size(
            single prop) = 0;

        virtual HRESULT get_Default(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Default(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Value(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Value(
            VARIANT_BOOL prop) = 0;

    };
};
