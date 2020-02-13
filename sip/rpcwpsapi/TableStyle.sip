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
    struct TableStyle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_AllowPageBreaks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowPageBreaks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_BottomPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_BottomPadding(
            single prop) = 0;

        virtual HRESULT get_LeftPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftPadding(
            single prop) = 0;

        virtual HRESULT get_TopPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopPadding(
            single prop) = 0;

        virtual HRESULT get_RightPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightPadding(
            single prop) = 0;

        virtual HRESULT get_Alignment(
            WdRowAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdRowAlignment prop) = 0;

        virtual HRESULT get_Spacing(
            single *prop /Out/) = 0;

        virtual HRESULT put_Spacing(
            single prop) = 0;

        virtual HRESULT Condition(
            WdConditionCode ConditionCode,
            ConditionalStyle **prop /Out/) = 0;

        virtual HRESULT get_TableDirection(
            WdTableDirection *prop /Out/) = 0;

        virtual HRESULT put_TableDirection(
            WdTableDirection prop) = 0;

        virtual HRESULT get_AllowBreakAcrossPage(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllowBreakAcrossPage(
            long prop) = 0;

        virtual HRESULT get_LeftIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_RowStripe(
            long *prop /Out/) = 0;

        virtual HRESULT put_RowStripe(
            long prop) = 0;

        virtual HRESULT get_ColumnStripe(
            long *prop /Out/) = 0;

        virtual HRESULT put_ColumnStripe(
            long prop) = 0;

    };
};
