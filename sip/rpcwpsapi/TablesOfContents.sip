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
};
