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
    struct IMenuItems : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            BSTR Caption,
            VARIANT OnAction = argMissing2(),
            VARIANT ShortcutKey = argMissing2(),
            VARIANT Before = argMissing2(),
            VARIANT Restore = argMissing2(),
            VARIANT StatusBar = argMissing2(),
            VARIANT HelpFile = argMissing2(),
            VARIANT HelpContextID = argMissing2(),
            MenuItem **RHS /Out/ = 0) = 0;

        virtual HRESULT AddMenu(
            BSTR Caption,
            VARIANT Before = argMissing2(),
            VARIANT Restore = argMissing2(),
            Menu **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

    };
};
