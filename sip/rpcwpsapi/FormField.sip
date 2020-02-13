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
    struct FormField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdFieldType *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_EntryMacro(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_EntryMacro(
            BSTR prop) = 0;

        virtual HRESULT get_ExitMacro(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ExitMacro(
            BSTR prop) = 0;

        virtual HRESULT get_OwnHelp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OwnHelp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OwnStatus(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OwnStatus(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HelpText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_HelpText(
            BSTR prop) = 0;

        virtual HRESULT get_StatusText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_StatusText(
            BSTR prop) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Result(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Result(
            BSTR prop) = 0;

        virtual HRESULT get_TextInput(
            TextInput **prop /Out/) = 0;

        virtual HRESULT get_CheckBox(
            CheckBox **prop /Out/) = 0;

        virtual HRESULT get_DropDown(
            DropDown **prop /Out/) = 0;

        virtual HRESULT get_Next(
            FormField **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            FormField **prop /Out/) = 0;

        virtual HRESULT get_CalculateOnExit(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CalculateOnExit(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Delete() = 0;

    };
};
