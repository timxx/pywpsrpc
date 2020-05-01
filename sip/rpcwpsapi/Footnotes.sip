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
    struct Footnotes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Location(
            WdFootnoteLocation *prop /Out/) = 0;

        virtual HRESULT put_Location(
            WdFootnoteLocation prop) = 0;

        virtual HRESULT get_NumberStyle(
            WdNoteNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdNoteNumberStyle prop) = 0;

        virtual HRESULT get_StartingNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartingNumber(
            long prop) = 0;

        virtual HRESULT get_NumberingRule(
            WdNumberingRule *prop /Out/) = 0;

        virtual HRESULT put_NumberingRule(
            WdNumberingRule prop) = 0;

        virtual HRESULT get_Separator(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ContinuationSeparator(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ContinuationNotice(
            Range **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Footnote **prop /Out/) = 0;

        Footnote* __getitem__(long index) const;
        %MethodCode
            wpsapi::Footnote *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            Range *Range,
            VARIANT *Reference = argMissing(),
            VARIANT *Text = argMissing(),
            Footnote **prop /Out/ = 0) = 0;

        virtual HRESULT Convert() = 0;

        virtual HRESULT SwapWithEndnotes() = 0;

        virtual HRESULT ResetSeparator() = 0;

        virtual HRESULT ResetContinuationSeparator() = 0;

        virtual HRESULT ResetContinuationNotice() = 0;

    };
};
