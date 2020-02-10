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
    struct Endnotes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Location(
            WdEndnoteLocation *prop /Out/) = 0;

        virtual HRESULT put_Location(
            WdEndnoteLocation prop) = 0;

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
            Endnote **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            VARIANT *Reference = argMissing(),
            VARIANT *Text = argMissing(),
            Endnote **prop /Out/ = 0) = 0;

        virtual HRESULT Convert() = 0;

        virtual HRESULT SwapWithFootnotes() = 0;

        virtual HRESULT ResetSeparator() = 0;

        virtual HRESULT ResetContinuationSeparator() = 0;

        virtual HRESULT ResetContinuationNotice() = 0;
    };

    struct Endnote : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Reference(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;
    };

    struct EndnoteOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Location(
            WdEndnoteLocation *prop /Out/) = 0;

        virtual HRESULT put_Location(
            WdEndnoteLocation prop) = 0;

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
    };
};