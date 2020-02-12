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
    struct Indexes : public IDispatch /Abstract/
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
            WdIndexFormat *prop /Out/) = 0;

        virtual HRESULT put_Format(
            WdIndexFormat prop) = 0;

        virtual HRESULT Item(
            long index,
            Index **prop /Out/) = 0;

        virtual HRESULT AddOld(
            Range *Range,
            VARIANT *HeadingSeparator = argMissing(),
            VARIANT *RightAlignPageNumbers = argMissing(),
            VARIANT *Type = argMissing(),
            VARIANT *NumberOfColumns = argMissing(),
            VARIANT *AccentedLetters = argMissing(),
            Index **prop /Out/ = 0) = 0;

        virtual HRESULT MarkEntry(
            Range *Range,
            VARIANT *Entry = argMissing(),
            VARIANT *EntryAutoText = argMissing(),
            VARIANT *CrossReference = argMissing(),
            VARIANT *CrossReferenceAutoText = argMissing(),
            VARIANT *BookmarkName = argMissing(),
            VARIANT *Bold = argMissing(),
            VARIANT *Italic = argMissing(),
            VARIANT *Reading = argMissing(),
            Field **prop /Out/ = 0) = 0;

        virtual HRESULT MarkAllEntries(
            Range *Range,
            VARIANT *Entry = argMissing(),
            VARIANT *EntryAutoText = argMissing(),
            VARIANT *CrossReference = argMissing(),
            VARIANT *CrossReferenceAutoText = argMissing(),
            VARIANT *BookmarkName = argMissing(),
            VARIANT *Bold = argMissing(),
            VARIANT *Italic = argMissing()) = 0;

        virtual HRESULT AutoMarkEntries(
            BSTR ConcordanceFileName) = 0;

        virtual HRESULT Add(
            Range *Range,
            VARIANT *HeadingSeparator = argMissing(),
            VARIANT *RightAlignPageNumbers = argMissing(),
            VARIANT *Type = argMissing(),
            VARIANT *NumberOfColumns = argMissing(),
            VARIANT *AccentedLetters = argMissing(),
            VARIANT *SortBy = argMissing(),
            VARIANT *IndexLanguage = argMissing(),
            Index **prop /Out/ = 0) = 0;
    };

    struct Index : public IDispatch /Abstract/
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

        virtual HRESULT get_HeadingSeparator(
            WdHeadingSeparator *prop /Out/) = 0;

        virtual HRESULT put_HeadingSeparator(
            WdHeadingSeparator prop) = 0;

        virtual HRESULT get_RightAlignPageNumbers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RightAlignPageNumbers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Type(
            WdIndexType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdIndexType prop) = 0;

        virtual HRESULT get_NumberOfColumns(
            long *prop /Out/) = 0;

        virtual HRESULT put_NumberOfColumns(
            long prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_TabLeader(
            WdTabLeader *prop /Out/) = 0;

        virtual HRESULT put_TabLeader(
            WdTabLeader prop) = 0;

        virtual HRESULT get_AccentedLetters(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AccentedLetters(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SortBy(
            WdIndexSortBy *prop /Out/) = 0;

        virtual HRESULT put_SortBy(
            WdIndexSortBy prop) = 0;

        virtual HRESULT get_Filter(
            WdIndexFilter *prop /Out/) = 0;

        virtual HRESULT put_Filter(
            WdIndexFilter prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT get_IndexLanguage(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_IndexLanguage(
            WdLanguageID prop) = 0;
    };
};