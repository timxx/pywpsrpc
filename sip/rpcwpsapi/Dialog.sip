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
    struct Dialog : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_DefaultTab(
            WdWordDialogTab *prop /Out/) = 0;

        virtual HRESULT put_DefaultTab(
            WdWordDialogTab prop) = 0;

        virtual HRESULT get_Type(
            WdWordDialog *prop /Out/) = 0;

        virtual HRESULT Show(
            VARIANT *TimeOut = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT Display(
            VARIANT *TimeOut = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT get_CommandName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_CommandBarId(
            long *prop /Out/) = 0;

    };
};
