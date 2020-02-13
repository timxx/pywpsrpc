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
    struct EmailOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_UseThemeStyle(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseThemeStyle(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MarkCommentsWith(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_MarkCommentsWith(
            BSTR prop) = 0;

        virtual HRESULT get_MarkComments(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MarkComments(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EmailSignature(
            EmailSignature **prop /Out/) = 0;

        virtual HRESULT get_ComposeStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_ReplyStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_ThemeName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ThemeName(
            BSTR prop) = 0;

        virtual HRESULT get_Dummy1(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Dummy2(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Dummy3() = 0;

        virtual HRESULT get_NewColorOnReply(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NewColorOnReply(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PlainTextStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_UseThemeStyleOnReply(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseThemeStyleOnReply(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyHeadings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyHeadings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyBorders(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyBorders(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyBulletedLists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyBulletedLists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyNumberedLists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyNumberedLists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceQuotes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceQuotes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceSymbols(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceSymbols(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceOrdinals(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceOrdinals(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceFractions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceFractions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplacePlainTextEmphasis(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplacePlainTextEmphasis(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeFormatListItemBeginning(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeFormatListItemBeginning(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeDefineStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeDefineStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceHyperlinks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceHyperlinks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyTables(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyTables(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyFirstIndents(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyFirstIndents(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyDates(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyDates(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyClosings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyClosings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeMatchParentheses(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeMatchParentheses(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceFarEastDashes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceFarEastDashes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeDeleteAutoSpaces(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeDeleteAutoSpaces(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeInsertClosings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeInsertClosings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeAutoLetterWizard(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeAutoLetterWizard(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeInsertOvers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeInsertOvers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RelyOnCSS(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RelyOnCSS(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HTMLFidelity(
            WdEmailHTMLFidelity *prop /Out/) = 0;

        virtual HRESULT put_HTMLFidelity(
            WdEmailHTMLFidelity prop) = 0;

        virtual HRESULT get_EmbedSmartTag(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EmbedSmartTag(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TabIndentKey(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TabIndentKey(
            VARIANT_BOOL prop) = 0;

    };
};
