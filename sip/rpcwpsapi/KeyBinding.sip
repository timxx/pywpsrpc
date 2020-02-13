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
    struct KeyBinding : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Command(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_KeyString(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Protected(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_KeyCategory(
            WdKeyCategory *prop /Out/) = 0;

        virtual HRESULT get_KeyCode(
            long *prop /Out/) = 0;

        virtual HRESULT get_KeyCode2(
            long *prop /Out/) = 0;

        virtual HRESULT get_CommandParameter(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Context(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT Disable() = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT Rebind(
            WdKeyCategory KeyCategory,
            BSTR Command,
            VARIANT *CommandParameter = argMissing()) = 0;

    };
};
