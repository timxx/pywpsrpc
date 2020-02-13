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
    struct TextInput : public IDispatch /Abstract/
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
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Default(
            BSTR prop) = 0;

        virtual HRESULT get_Type(
            WdTextFormFieldType *prop /Out/) = 0;

        virtual HRESULT get_Format(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Width(
            long *prop /Out/) = 0;

        virtual HRESULT put_Width(
            long prop) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT EditType(
            WdTextFormFieldType Type,
            VARIANT *Default = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *Enabled = argMissing()) = 0;

    };
};
