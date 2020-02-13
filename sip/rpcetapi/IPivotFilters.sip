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
    struct IPivotFilters : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            PivotFilter **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            PivotFilter **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Add(
            XlPivotFilterType Type,
            VARIANT DataField,
            VARIANT Value1,
            VARIANT Value2,
            VARIANT Order,
            VARIANT Name,
            VARIANT Description,
            VARIANT MemberPropertyField,
            PivotFilter **RHS /Out/) = 0;

        virtual HRESULT Add2(
            XlPivotFilterType Type,
            VARIANT DataField,
            VARIANT Value1,
            VARIANT Value2,
            VARIANT Order,
            VARIANT Name,
            VARIANT Description,
            VARIANT MemberPropertyField,
            VARIANT WholeDayFilter,
            PivotFilter **RHS /Out/) = 0;

    };
};
