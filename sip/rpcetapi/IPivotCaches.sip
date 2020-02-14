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
    struct IPivotCaches : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            PivotCache **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            PivotCache **RHS /Out/) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT Add(
            XlPivotTableSourceType SourceType,
            VARIANT SourceData = argMissing2(),
            PivotCache **RHS /Out/ = 0) = 0;

        virtual HRESULT Create(
            XlPivotTableSourceType SourceType,
            VARIANT SourceData = argMissing2(),
            VARIANT Version = argMissing2(),
            PivotCache **RHS /Out/ = 0) = 0;

    };
};
