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
    struct AutoCorrect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_CorrectDays(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectDays(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectInitialCaps(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectInitialCaps(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectSentenceCaps(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectSentenceCaps(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReplaceText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReplaceText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Entries(
            AutoCorrectEntries **prop /Out/) = 0;

        virtual HRESULT get_FirstLetterExceptions(
            FirstLetterExceptions **prop /Out/) = 0;

        virtual HRESULT get_FirstLetterAutoAdd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FirstLetterAutoAdd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TwoInitialCapsExceptions(
            TwoInitialCapsExceptions **prop /Out/) = 0;

        virtual HRESULT get_TwoInitialCapsAutoAdd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TwoInitialCapsAutoAdd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectCapsLock(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectCapsLock(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectHangulAndAlphabet(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectHangulAndAlphabet(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HangulAndAlphabetExceptions(
            HangulAndAlphabetExceptions **prop /Out/) = 0;

        virtual HRESULT get_HangulAndAlphabetAutoAdd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HangulAndAlphabetAutoAdd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReplaceTextFromSpellingChecker(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReplaceTextFromSpellingChecker(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OtherCorrectionsAutoAdd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OtherCorrectionsAutoAdd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OtherCorrectionsExceptions(
            OtherCorrectionsExceptions **prop /Out/) = 0;

        virtual HRESULT get_CorrectKeyboardSetting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectKeyboardSetting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectTableCells(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectTableCells(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayAutoCorrectOptions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayAutoCorrectOptions(
            VARIANT_BOOL prop) = 0;

    };
};
