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
    struct Language : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ActiveGrammarDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT get_ActiveHyphenationDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT get_ActiveSpellingDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT get_ActiveThesaurusDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT get_DefaultWritingStyle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultWritingStyle(
            BSTR prop) = 0;

        virtual HRESULT get_WritingStyleList(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_SpellingDictionaryType(
            WdDictionaryType *prop /Out/) = 0;

        virtual HRESULT put_SpellingDictionaryType(
            WdDictionaryType prop) = 0;

    };
};