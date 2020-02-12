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
    struct TablesOfContents : public IDispatch /Abstract/
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

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Format(
            WdTocFormat *prop /Out/) = 0;

        virtual HRESULT put_Format(
            WdTocFormat prop) = 0;

        virtual HRESULT Item(
            long Index,
            TableOfContents **prop /Out/) = 0;

        virtual HRESULT AddOld(
            Range *Range,
            VARIANT *UseHeadingStyles = argMissing(),
            VARIANT *UpperHeadingLevel = argMissing(),
            VARIANT *LowerHeadingLevel = argMissing(),
            VARIANT *UseFields = argMissing(),
            VARIANT *TableID = argMissing(),
            VARIANT *RightAlignPageNumbers = argMissing(),
            VARIANT *IncludePageNumbers = argMissing(),
            VARIANT *AddedStyles = argMissing(),
            TableOfContents **prop /Out/ = 0) = 0;

        virtual HRESULT MarkEntry(
            Range *Range,
            VARIANT *Entry = argMissing(),
            VARIANT *EntryAutoText = argMissing(),
            VARIANT *TableID = argMissing(),
            VARIANT *Level = argMissing(),
            Field **prop /Out/ = 0) = 0;

        virtual HRESULT Add2000(
            Range *Range,
            VARIANT *UseHeadingStyles = argMissing(),
            VARIANT *UpperHeadingLevel = argMissing(),
            VARIANT *LowerHeadingLevel = argMissing(),
            VARIANT *UseFields = argMissing(),
            VARIANT *TableID = argMissing(),
            VARIANT *RightAlignPageNumbers = argMissing(),
            VARIANT *IncludePageNumbers = argMissing(),
            VARIANT *AddedStyles = argMissing(),
            VARIANT *UseHyperlinks = argMissing(),
            VARIANT *HidePageNumbersInWeb = argMissing(),
            TableOfContents **prop /Out/ = 0) = 0;

        virtual HRESULT Add(
            Range *Range,
            VARIANT *UseHeadingStyles = argMissing(),
            VARIANT *UpperHeadingLevel = argMissing(),
            VARIANT *LowerHeadingLevel = argMissing(),
            VARIANT *UseFields = argMissing(),
            VARIANT *TableID = argMissing(),
            VARIANT *RightAlignPageNumbers = argMissing(),
            VARIANT *IncludePageNumbers = argMissing(),
            VARIANT *AddedStyles = argMissing(),
            VARIANT *UseHyperlinks = argMissing(),
            VARIANT *HidePageNumbersInWeb = argMissing(),
            VARIANT *UseOutlineLevels = argMissing(),
            TableOfContents **prop /Out/ = 0) = 0;
    };

    struct TableOfContents : public IDispatch /Abstract/
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

        virtual HRESULT get_UseHeadingStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseHeadingStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseFields(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseFields(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UpperHeadingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT put_UpperHeadingLevel(
            long prop) = 0;

        virtual HRESULT get_LowerHeadingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT put_LowerHeadingLevel(
            long prop) = 0;

        virtual HRESULT get_TableID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_TableID(
            BSTR prop) = 0;

        virtual HRESULT get_HeadingStyles(
            HeadingStyles **prop /Out/) = 0;

        virtual HRESULT get_RightAlignPageNumbers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RightAlignPageNumbers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IncludePageNumbers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludePageNumbers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_TabLeader(
            WdTabLeader *prop /Out/) = 0;

        virtual HRESULT put_TabLeader(
            WdTabLeader prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT UpdatePageNumbers() = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT get_UseHyperlinks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseHyperlinks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HidePageNumbersInWeb(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HidePageNumbersInWeb(
            VARIANT_BOOL prop) = 0;
    };
};