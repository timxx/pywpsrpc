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

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            long Index,
            MailMergeField **prop /Out/) = 0;

        MailMergeField* __getitem__(long index) const;
        %MethodCode
            wpsapi::MailMergeField *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

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

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)
    };
};
