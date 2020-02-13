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
    struct IScenario : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT ChangeScenario(
            VARIANT ChangingCells,
            VARIANT Values,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ChangingCells(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Comment(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Comment(
            BSTR RHS) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Hidden(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Hidden(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT Show(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Values(
            VARIANT Index,
            VARIANT *RHS /Out/) = 0;

    };
};
