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
    struct IPivotFilter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Order(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Order(
            long RHS) = 0;

        virtual HRESULT get_FilterType(
            XlPivotFilterType *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_PivotField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_DataField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_DataCubeField(
            CubeField **RHS /Out/) = 0;

        virtual HRESULT get_Value1(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Value2(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_MemberPropertyField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_IsMemberPropertyFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_WholeDayFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WholeDayFilter(
            VARIANT_BOOL RHS) = 0;

    };
};
