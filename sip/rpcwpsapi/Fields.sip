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
    struct Fields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Locked(
            long *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            long prop) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Field **prop /Out/) = 0;

        virtual HRESULT ToggleShowCodes() = 0;

        virtual HRESULT Update(
            long *prop /Out/) = 0;

        virtual HRESULT Unlink() = 0;

        virtual HRESULT UpdateSource() = 0;

        virtual HRESULT Add(
            Range *Range,
            VARIANT *Type = argMissing(),
            VARIANT *Text = argMissing(),
            VARIANT *PreserveFormatting = argMissing(),
            Field **prop /Out/ = 0) = 0;
    };

    struct Field : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Code(
            Range **prop /Out/) = 0;

        virtual HRESULT put_Code(
            Range *prop) = 0;

        virtual HRESULT get_Type(
            WdFieldType *prop /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Kind(
            WdFieldKind *prop /Out/) = 0;

        virtual HRESULT get_Result(
            Range **prop /Out/) = 0;

        virtual HRESULT put_Result(
            Range *prop) = 0;

        virtual HRESULT get_Data(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Data(
            BSTR prop) = 0;

        virtual HRESULT get_Next(
            Field **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Field **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_ShowCodes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowCodes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LinkFormat(
            LinkFormat **prop /Out/) = 0;

        virtual HRESULT get_OLEFormat(
            OLEFormat **prop /Out/) = 0;

        virtual HRESULT get_InlineShape(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Update(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Unlink() = 0;

        virtual HRESULT UpdateSource() = 0;

        virtual HRESULT DoClick() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Delete() = 0;
    };

    struct FormFields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Shaded(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shaded(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            FormField **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            WdFieldType Type,
            FormField **prop /Out/) = 0;
    };

    struct FormField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

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

    struct TextInput : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

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

    struct CheckBox : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

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

    struct DropDown : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

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