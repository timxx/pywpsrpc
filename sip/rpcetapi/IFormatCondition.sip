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
    struct IFormatCondition : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT _Modify(
            XlFormatConditionType Type,
            VARIANT Operator,
            VARIANT Formula1,
            VARIANT Formula2) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Operator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Formula1(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Formula2(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **RHS /Out/) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Modify(
            XlFormatConditionType Type,
            VARIANT Operator,
            VARIANT Formula1,
            VARIANT Formula2,
            VARIANT String,
            VARIANT Operator2) = 0;

        virtual HRESULT get_Text(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR RHS) = 0;

        virtual HRESULT get_TextOperator(
            XlContainsOperator *RHS /Out/) = 0;

        virtual HRESULT put_TextOperator(
            XlContainsOperator RHS) = 0;

        virtual HRESULT get_DateOperator(
            XlTimePeriods *RHS /Out/) = 0;

        virtual HRESULT put_DateOperator(
            XlTimePeriods RHS) = 0;

        virtual HRESULT get_NumberFormat(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            VARIANT RHS) = 0;

        virtual HRESULT get_Priority(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Priority(
            long RHS) = 0;

        virtual HRESULT get_StopIfTrue(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_StopIfTrue(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AppliesTo(
            Range **RHS /Out/) = 0;

        virtual HRESULT ModifyAppliesToRange(
            Range *Range) = 0;

        virtual HRESULT SetFirstPriority() = 0;

        virtual HRESULT SetLastPriority() = 0;

        virtual HRESULT get_PTCondition(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ScopeType(
            XlPivotConditionScope *RHS /Out/) = 0;

        virtual HRESULT put_ScopeType(
            XlPivotConditionScope RHS) = 0;

    };
};
