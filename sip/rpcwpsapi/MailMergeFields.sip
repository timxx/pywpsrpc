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
    struct MailMergeFields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            BSTR Name,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT AddAsk(
            Range *Range,
            BSTR Name,
            VARIANT *Prompt = argMissing(),
            VARIANT *DefaultAskText = argMissing(),
            VARIANT *AskOnce = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddFillIn(
            Range *Range,
            VARIANT *Prompt = argMissing(),
            VARIANT *DefaultFillInText = argMissing(),
            VARIANT *AskOnce = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddIf(
            Range *Range,
            BSTR MergeField,
            WdMailMergeComparison Comparison,
            VARIANT *CompareTo = argMissing(),
            VARIANT *TrueAutoText = argMissing(),
            VARIANT *TrueText = argMissing(),
            VARIANT *FalseAutoText = argMissing(),
            VARIANT *FalseText = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddMergeRec(
            Range *Range,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT AddMergeSeq(
            Range *Range,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT AddNext(
            Range *Range,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT AddNextIf(
            Range *Range,
            BSTR MergeField,
            WdMailMergeComparison Comparison,
            VARIANT *CompareTo = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddSet(
            Range *Range,
            BSTR Name,
            VARIANT *ValueText = argMissing(),
            VARIANT *ValueAutoText = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddSkipIf(
            Range *Range,
            BSTR MergeField,
            WdMailMergeComparison Comparison,
            VARIANT *CompareTo = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

    };
};
