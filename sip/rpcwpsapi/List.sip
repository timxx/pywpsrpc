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
    struct List : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ListParagraphs(
            ListParagraphs **prop /Out/) = 0;

        virtual HRESULT get_SingleListTemplate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT ConvertNumbersToText(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT RemoveNumbers(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT CountNumberedItems(
            VARIANT *NumberType = argMissing(),
            VARIANT *Level = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT ApplyListTemplateOld(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing()) = 0;

        virtual HRESULT CanContinuePreviousList(
            ListTemplate *ListTemplate,
            WdContinue *prop /Out/) = 0;

        virtual HRESULT ApplyListTemplate(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT get_StyleName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT ApplyListTemplateWithLevel(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *DefaultListBehavior = argMissing(),
            VARIANT *ApplyLevel = argMissing()) = 0;

    };
};
