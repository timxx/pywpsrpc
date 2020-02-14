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
    struct IAutoCorrect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT AddReplacement(
            BSTR What,
            BSTR Replacement,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_CapitalizeNamesOfDays(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CapitalizeNamesOfDays(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT DeleteReplacement(
            BSTR What,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ReplacementList(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_ReplacementList(
            VARIANT Index,
            VARIANT RHS) = 0;

        virtual HRESULT get_ReplaceText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ReplaceText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TwoInitialCapitals(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TwoInitialCapitals(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CorrectSentenceCap(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CorrectSentenceCap(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CorrectCapsLock(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CorrectCapsLock(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayAutoCorrectOptions(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayAutoCorrectOptions(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoExpandListRange(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoExpandListRange(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoFillFormulasInLists(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoFillFormulasInLists(
            VARIANT_BOOL RHS) = 0;

    };
};
