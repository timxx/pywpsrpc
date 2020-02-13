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
    struct INames : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            VARIANT name,
            VARIANT RefersTo,
            VARIANT Visible,
            VARIANT MacroType,
            VARIANT ShortcutKey,
            VARIANT Category,
            VARIANT NameLocal,
            VARIANT RefersToLocal,
            VARIANT CategoryLocal,
            VARIANT RefersToR1C1,
            VARIANT RefersToR1C1Local,
            Name **RHS /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            VARIANT IndexLocal,
            VARIANT RefersTo,
            long lcid,
            Name **RHS /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index,
            VARIANT IndexLocal,
            VARIANT RefersTo,
            long lcid,
            Name **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

    };
};
