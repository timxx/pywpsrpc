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
    struct ISmartTagAction : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Type(
            XlSmartTagControlType *RHS /Out/) = 0;

        virtual HRESULT get_PresentInPane(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ExpandHelp(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ExpandHelp(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CheckboxState(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CheckboxState(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextboxText(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextboxText(
            BSTR RHS) = 0;

        virtual HRESULT get_ListSelection(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ListSelection(
            long RHS) = 0;

        virtual HRESULT get_RadioGroupSelection(
            long *RHS /Out/) = 0;

        virtual HRESULT put_RadioGroupSelection(
            long RHS) = 0;

        virtual HRESULT get_ActiveXControl(
            IDispatch **RHS /Out/) = 0;

    };
};
