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
    struct Find : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Forward(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Forward(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Font(
            Font **prop /Out/) = 0;

        virtual HRESULT put_Font(
            Font *prop) = 0;

        virtual HRESULT get_Found(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_MatchAllWordForms(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchAllWordForms(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchCase(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchCase(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchWildcards(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchWildcards(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchSoundsLike(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchSoundsLike(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchWholeWord(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchWholeWord(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzy(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzy(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchByte(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchByte(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ParagraphFormat(
            ParagraphFormat **prop /Out/) = 0;

        virtual HRESULT put_ParagraphFormat(
            ParagraphFormat *prop) = 0;

        virtual HRESULT get_Style(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT *prop) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_Highlight(
            long *prop /Out/) = 0;

        virtual HRESULT put_Highlight(
            long prop) = 0;

        virtual HRESULT get_Replacement(
            Replacement **prop /Out/) = 0;

        virtual HRESULT get_Frame(
            Frame **prop /Out/) = 0;

        virtual HRESULT get_Wrap(
            WdFindWrap *prop /Out/) = 0;

        virtual HRESULT put_Wrap(
            WdFindWrap prop) = 0;

        virtual HRESULT get_Format(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Format(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LanguageIDFarEast(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDFarEast(
            WdLanguageID prop) = 0;

        virtual HRESULT get_LanguageIDOther(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDOther(
            WdLanguageID prop) = 0;

        virtual HRESULT get_CorrectHangulEndings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectHangulEndings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ExecuteOld(
            VARIANT *FindText = argMissing(),
            VARIANT *MatchCase = argMissing(),
            VARIANT *MatchWholeWord = argMissing(),
            VARIANT *MatchWildcards = argMissing(),
            VARIANT *MatchSoundsLike = argMissing(),
            VARIANT *MatchAllWordForms = argMissing(),
            VARIANT *Forward = argMissing(),
            VARIANT *Wrap = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *ReplaceWith = argMissing(),
            VARIANT *Replace = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT ClearFormatting() = 0;

        virtual HRESULT SetAllFuzzyOptions() = 0;

        virtual HRESULT ClearAllFuzzyOptions() = 0;

        virtual HRESULT Execute(
            VARIANT *FindText = argMissing(),
            VARIANT *MatchCase = argMissing(),
            VARIANT *MatchWholeWord = argMissing(),
            VARIANT *MatchWildcards = argMissing(),
            VARIANT *MatchSoundsLike = argMissing(),
            VARIANT *MatchAllWordForms = argMissing(),
            VARIANT *Forward = argMissing(),
            VARIANT *Wrap = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *ReplaceWith = argMissing(),
            VARIANT *Replace = argMissing(),
            VARIANT *MatchKashida = argMissing(),
            VARIANT *MatchDiacritics = argMissing(),
            VARIANT *MatchAlefHamza = argMissing(),
            VARIANT *MatchControl = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT get_NoProofing(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoProofing(
            long prop) = 0;

        virtual HRESULT get_MatchKashida(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchKashida(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchDiacritics(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchDiacritics(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchAlefHamza(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchAlefHamza(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchControl(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchControl(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchPhrase(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchPhrase(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchPrefix(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchPrefix(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchSuffix(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchSuffix(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IgnoreSpace(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IgnoreSpace(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IgnorePunct(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IgnorePunct(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT HitHighlight(
            VARIANT *FindText,
            VARIANT *HighlightColor = argMissing(),
            VARIANT *TextColor = argMissing(),
            VARIANT *MatchCase = argMissing(),
            VARIANT *MatchWholeWord = argMissing(),
            VARIANT *MatchPrefix = argMissing(),
            VARIANT *MatchSuffix = argMissing(),
            VARIANT *MatchPhrase = argMissing(),
            VARIANT *MatchWildcards = argMissing(),
            VARIANT *MatchSoundsLike = argMissing(),
            VARIANT *MatchAllWordForms = argMissing(),
            VARIANT *MatchByte = argMissing(),
            VARIANT *MatchFuzzy = argMissing(),
            VARIANT *MatchKashida = argMissing(),
            VARIANT *MatchDiacritics = argMissing(),
            VARIANT *MatchAlefHamza = argMissing(),
            VARIANT *MatchControl = argMissing(),
            VARIANT *IgnoreSpace = argMissing(),
            VARIANT *IgnorePunct = argMissing(),
            // VARIANT *HanjaPhoneticHangul = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;
        %MethodCode
            // FIXME: increase the value of MAX_NR_ARGS
            sipRes = sipCpp->HitHighlight(a0, a1, a2, a3, a4, a5,
                a6, a7, a8, a9, a10,
                a11, a12, a13, a14, a15,
                a16, a17, a18,
                argMissing(),
                a19);
        %End

        virtual HRESULT ClearHitHighlight(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Execute2007(
            VARIANT *FindText = argMissing(),
            VARIANT *MatchCase = argMissing(),
            VARIANT *MatchWholeWord = argMissing(),
            VARIANT *MatchWildcards = argMissing(),
            VARIANT *MatchSoundsLike = argMissing(),
            VARIANT *MatchAllWordForms = argMissing(),
            VARIANT *Forward = argMissing(),
            VARIANT *Wrap = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *ReplaceWith = argMissing(),
            VARIANT *Replace = argMissing(),
            VARIANT *MatchKashida = argMissing(),
            VARIANT *MatchDiacritics = argMissing(),
            VARIANT *MatchAlefHamza = argMissing(),
            VARIANT *MatchControl = argMissing(),
            VARIANT *MatchPrefix = argMissing(),
            VARIANT *MatchSuffix = argMissing(),
            VARIANT *MatchPhrase = argMissing(),
            VARIANT *IgnoreSpace = argMissing(),
            // VARIANT *IgnorePunct = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;
        %MethodCode
            // FIXME: increase the value of MAX_NR_ARGS
            sipRes = sipCpp->Execute2007(a0, a1, a2, a3, a4, a5,
                a6, a7, a8, a9, a10,
                a11, a12, a13, a14, a15,
                a16, a17, a18,
                argMissing(),
                a19);
        %End
        virtual HRESULT get_HanjaPhoneticHangul(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HanjaPhoneticHangul(
            VARIANT_BOOL prop) = 0;

    };
};
