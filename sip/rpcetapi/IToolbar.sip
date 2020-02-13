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
    struct IToolbar : public IDispatch /Abstract/
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

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Height(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            long RHS) = 0;

        virtual HRESULT get_Left(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            long RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Position(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            long RHS) = 0;

        virtual HRESULT get_Protection(
            XlToolbarProtection *RHS /Out/) = 0;

        virtual HRESULT put_Protection(
            XlToolbarProtection RHS) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT get_ToolbarButtons(
            ToolbarButtons **RHS /Out/) = 0;

        virtual HRESULT get_Top(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            long RHS) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Width(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            long RHS) = 0;

    };
};
