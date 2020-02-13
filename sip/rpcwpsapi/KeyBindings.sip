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
    struct KeyBindings : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Context(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            KeyBinding **prop /Out/) = 0;

        virtual HRESULT Add(
            WdKeyCategory KeyCategory,
            BSTR Command,
            long KeyCode,
            VARIANT *KeyCode2 = argMissing(),
            VARIANT *CommandParameter = argMissing(),
            KeyBinding **prop /Out/ = 0) = 0;

        virtual HRESULT ClearAll() = 0;

        virtual HRESULT Key(
            long KeyCode,
            VARIANT *KeyCode2 = argMissing(),
            KeyBinding **prop /Out/ = 0) = 0;

    };
};
