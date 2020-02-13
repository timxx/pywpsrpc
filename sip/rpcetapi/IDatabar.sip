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
    struct IDatabar : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Priority(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Priority(
            long RHS) = 0;

        virtual HRESULT get_StopIfTrue(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AppliesTo(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_MinPoint(
            ConditionValue **RHS /Out/) = 0;

        virtual HRESULT get_MaxPoint(
            ConditionValue **RHS /Out/) = 0;

        virtual HRESULT get_PercentMin(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PercentMin(
            long RHS) = 0;

        virtual HRESULT get_PercentMax(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PercentMax(
            long RHS) = 0;

        virtual HRESULT get_BarColor(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ShowValue(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowValue(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT SetFirstPriority() = 0;

        virtual HRESULT SetLastPriority() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT ModifyAppliesToRange(
            Range *Range) = 0;

        virtual HRESULT get_PTCondition(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ScopeType(
            XlPivotConditionScope *RHS /Out/) = 0;

        virtual HRESULT put_ScopeType(
            XlPivotConditionScope RHS) = 0;

        virtual HRESULT get_Direction(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Direction(
            long RHS) = 0;

        virtual HRESULT get_BarFillType(
            XlDataBarFillType *RHS /Out/) = 0;

        virtual HRESULT put_BarFillType(
            XlDataBarFillType RHS) = 0;

        virtual HRESULT get_AxisPosition(
            XlDataBarAxisPosition *RHS /Out/) = 0;

        virtual HRESULT put_AxisPosition(
            XlDataBarAxisPosition RHS) = 0;

        virtual HRESULT get_AxisColor(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BarBorder(
            DataBarBorder **RHS /Out/) = 0;

        virtual HRESULT get_NegativeBarFormat(
            NegativeBarFormat **RHS /Out/) = 0;

    };
};
