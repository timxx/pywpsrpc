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
    struct IToolbarButton : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_BuiltInFace(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BuiltInFace(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Copy(
            Toolbar *Toolbar,
            long Before) = 0;

        virtual HRESULT CopyFace() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Edit() = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HelpContextID(
            long *RHS /Out/) = 0;

        virtual HRESULT put_HelpContextID(
            long RHS) = 0;

        virtual HRESULT get_HelpFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_HelpFile(
            BSTR RHS) = 0;

        virtual HRESULT get_ID(
            long *RHS /Out/) = 0;

        virtual HRESULT get_IsGap(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Move(
            Toolbar *Toolbar,
            long Before) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_OnAction(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnAction(
            BSTR RHS) = 0;

        virtual HRESULT PasteFace() = 0;

        virtual HRESULT get_Pushed(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Pushed(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT get_StatusBar(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_StatusBar(
            BSTR RHS) = 0;

        virtual HRESULT get_Width(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            long RHS) = 0;

    };
};
