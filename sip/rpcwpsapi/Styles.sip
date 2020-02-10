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
    struct Styles : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Style **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            VARIANT *Type = argMissing(),
            Style **prop /Out/ = 0) = 0;
    };

    struct Style : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameLocal(
            BSTR prop) = 0;

        virtual HRESULT get_BaseStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_BaseStyle(
            VARIANT *prop) = 0;

        virtual HRESULT get_Description(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdStyleType *prop /Out/) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_NextParagraphStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_NextParagraphStyle(
            VARIANT *prop) = 0;

        virtual HRESULT get_InUse(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_ParagraphFormat(_ParagraphFormat **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_ParagraphFormat((wpsapi::ParagraphFormat**)&a0);
        %End

        virtual HRESULT put_ParagraphFormat(_ParagraphFormat *prop) = 0;
        %MethodCode
            sipRes = sipCpp->put_ParagraphFormat((wpsapi::ParagraphFormat*)a0);
        %End

        virtual HRESULT get_Font(_Font **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Font((wpsapi::Font**)&a0);
        %End

        virtual HRESULT put_Font(_Font *prop) = 0;
        %MethodCode
            sipRes = sipCpp->put_Font((wpsapi::Font*)a0);
        %End

        virtual HRESULT get_Frame(
            Frame **prop /Out/) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_AutomaticallyUpdate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutomaticallyUpdate(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ListTemplate(
            ListTemplate **prop /Out/) = 0;

        virtual HRESULT get_ListLevelNumber(
            long *prop /Out/) = 0;

        virtual HRESULT get_LanguageIDFarEast(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDFarEast(
            WdLanguageID prop) = 0;

        virtual HRESULT get_Hidden(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Hidden(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT LinkToListTemplate(
            ListTemplate *ListTemplate,
            VARIANT *ListLevelNumber = argMissing()) = 0;

        virtual HRESULT get_NoProofing(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoProofing(
            long prop) = 0;

        virtual HRESULT get_LinkStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_LinkStyle(
            VARIANT *prop) = 0;

        virtual HRESULT get_Visibility(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visibility(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NoSpaceBetweenParagraphsOfSameStyle(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoSpaceBetweenParagraphsOfSameStyle(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Table(
            TableStyle **prop /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Priority(
            long *prop /Out/) = 0;

        virtual HRESULT put_Priority(
            long prop) = 0;

        virtual HRESULT get_UnhideWhenUsed(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UnhideWhenUsed(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_QuickStyle(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_QuickStyle(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Linked(
            VARIANT_BOOL *prop /Out/) = 0;
    };

    struct TableStyle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

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

    struct ConditionalStyle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_BottomPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_BottomPadding(
            single prop) = 0;

        virtual HRESULT get_TopPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopPadding(
            single prop) = 0;

        virtual HRESULT get_LeftPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftPadding(
            single prop) = 0;

        virtual HRESULT get_RightPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightPadding(
            single prop) = 0;

        virtual HRESULT get_ParagraphFormat(_ParagraphFormat **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_ParagraphFormat((wpsapi::ParagraphFormat**)&a0);
        %End

        virtual HRESULT put_ParagraphFormat(_ParagraphFormat *prop) = 0;
        %MethodCode
            sipRes = sipCpp->put_ParagraphFormat((wpsapi::ParagraphFormat*)a0);
        %End

        virtual HRESULT get_Font(_Font **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Font((wpsapi::Font**)&a0);
        %End

        virtual HRESULT put_Font(_Font *prop) = 0;
        %MethodCode
            sipRes = sipCpp->put_Font((wpsapi::Font*)a0);
        %End
    };
};