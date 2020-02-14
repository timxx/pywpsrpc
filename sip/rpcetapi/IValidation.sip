/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IValidation : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            XlDVType Type,
            VARIANT AlertStyle = argMissing2(),
            VARIANT Operator = argMissing2(),
            VARIANT Formula1 = argMissing2(),
            VARIANT Formula2 = argMissing2()) = 0;

        virtual HRESULT get_AlertStyle(
            long *RHS /Out/) = 0;

        virtual HRESULT get_IgnoreBlank(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IgnoreBlank(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IMEMode(
            long *RHS /Out/) = 0;

        virtual HRESULT put_IMEMode(
            long RHS) = 0;

        virtual HRESULT get_InCellDropdown(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InCellDropdown(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_ErrorMessage(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ErrorMessage(
            BSTR RHS) = 0;

        virtual HRESULT get_ErrorTitle(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ErrorTitle(
            BSTR RHS) = 0;

        virtual HRESULT get_InputMessage(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_InputMessage(
            BSTR RHS) = 0;

        virtual HRESULT get_InputTitle(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_InputTitle(
            BSTR RHS) = 0;

        virtual HRESULT get_Formula1(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Formula2(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Modify(
            VARIANT Type = argMissing2(),
            VARIANT AlertStyle = argMissing2(),
            VARIANT Operator = argMissing2(),
            VARIANT Formula1 = argMissing2(),
            VARIANT Formula2 = argMissing2()) = 0;

        virtual HRESULT get_Operator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_ShowError(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowError(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowInput(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowInput(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            VARIANT_BOOL *RHS /Out/) = 0;

    };
};
