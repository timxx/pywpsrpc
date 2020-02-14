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
    struct IToolbarButtons : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            VARIANT Button = argMissing2(),
            VARIANT Before = argMissing2(),
            VARIANT OnAction = argMissing2(),
            VARIANT Pushed = argMissing2(),
            VARIANT Enabled = argMissing2(),
            VARIANT StatusBar = argMissing2(),
            VARIANT HelpFile = argMissing2(),
            VARIANT HelpContextID = argMissing2(),
            ToolbarButton **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Item(
            long Index,
            ToolbarButton **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            long Index,
            ToolbarButton **RHS /Out/) = 0;

    };
};
