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
    struct IAddIn : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Comments(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_FullName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Installed(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Installed(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Keywords(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Subject(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Title(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_progID(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_CLSID(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_IsOpen(
            VARIANT_BOOL *RHS /Out/) = 0;

    };
};
