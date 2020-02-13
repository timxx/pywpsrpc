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
    struct ISpellingOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_DictLang(
            long *RHS /Out/) = 0;

        virtual HRESULT put_DictLang(
            long RHS) = 0;

        virtual HRESULT get_UserDict(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_UserDict(
            BSTR RHS) = 0;

        virtual HRESULT get_IgnoreCaps(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IgnoreCaps(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SuggestMainOnly(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SuggestMainOnly(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IgnoreMixedDigits(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IgnoreMixedDigits(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IgnoreFileNames(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IgnoreFileNames(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_GermanPostReform(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_GermanPostReform(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_KoreanCombineAux(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_KoreanCombineAux(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_KoreanUseAutoChangeList(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_KoreanUseAutoChangeList(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_KoreanProcessCompound(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_KoreanProcessCompound(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HebrewModes(
            XlHebrewModes *RHS /Out/) = 0;

        virtual HRESULT put_HebrewModes(
            XlHebrewModes RHS) = 0;

        virtual HRESULT get_ArabicModes(
            XlArabicModes *RHS /Out/) = 0;

        virtual HRESULT put_ArabicModes(
            XlArabicModes RHS) = 0;

        virtual HRESULT get_ArabicStrictAlefHamza(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ArabicStrictAlefHamza(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ArabicStrictFinalYaa(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ArabicStrictFinalYaa(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ArabicStrictTaaMarboota(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ArabicStrictTaaMarboota(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RussianStrictE(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RussianStrictE(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SpanishModes(
            XlSpanishModes *RHS /Out/) = 0;

        virtual HRESULT put_SpanishModes(
            XlSpanishModes RHS) = 0;

        virtual HRESULT get_PortugalReform(
            XlPortugueseReform *RHS /Out/) = 0;

        virtual HRESULT put_PortugalReform(
            XlPortugueseReform RHS) = 0;

        virtual HRESULT get_BrazilReform(
            XlPortugueseReform *RHS /Out/) = 0;

        virtual HRESULT put_BrazilReform(
            XlPortugueseReform RHS) = 0;

    };
};
