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
    struct TablesOfAuthorities : public IDispatch /Abstract/
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
            WdToaFormat *prop /Out/) = 0;

        virtual HRESULT put_Format(
            WdToaFormat prop) = 0;

        virtual HRESULT Item(
            long Index,
            TableOfAuthorities **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            VARIANT *Category = argMissing(),
            VARIANT *Bookmark = argMissing(),
            VARIANT *Passim = argMissing(),
            VARIANT *KeepEntryFormatting = argMissing(),
            VARIANT *Separator = argMissing(),
            VARIANT *IncludeSequenceName = argMissing(),
            VARIANT *EntrySeparator = argMissing(),
            VARIANT *PageRangeSeparator = argMissing(),
            VARIANT *IncludeCategoryHeader = argMissing(),
            VARIANT *PageNumberSeparator = argMissing(),
            TableOfAuthorities **prop /Out/ = 0) = 0;

        virtual HRESULT NextCitation(
            BSTR ShortCitation) = 0;

        virtual HRESULT MarkCitation(
            Range *Range,
            BSTR ShortCitation,
            VARIANT *LongCitation = argMissing(),
            VARIANT *LongCitationAutoText = argMissing(),
            VARIANT *Category = argMissing(),
            Field **prop /Out/ = 0) = 0;

        virtual HRESULT MarkAllCitations(
            BSTR ShortCitation,
            VARIANT *LongCitation = argMissing(),
            VARIANT *LongCitationAutoText = argMissing(),
            VARIANT *Category = argMissing()) = 0;
    };

    struct TableOfAuthorities : public IDispatch /Abstract/
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

        virtual HRESULT get_Passim(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Passim(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_KeepEntryFormatting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_KeepEntryFormatting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Category(
            long *prop /Out/) = 0;

        virtual HRESULT put_Category(
            long prop) = 0;

        virtual HRESULT get_Bookmark(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Bookmark(
            BSTR prop) = 0;

        virtual HRESULT get_Separator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Separator(
            BSTR prop) = 0;

        virtual HRESULT get_IncludeSequenceName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_IncludeSequenceName(
            BSTR prop) = 0;

        virtual HRESULT get_EntrySeparator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_EntrySeparator(
            BSTR prop) = 0;

        virtual HRESULT get_PageRangeSeparator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PageRangeSeparator(
            BSTR prop) = 0;

        virtual HRESULT get_IncludeCategoryHeader(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeCategoryHeader(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PageNumberSeparator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PageNumberSeparator(
            BSTR prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_TabLeader(
            WdTabLeader *prop /Out/) = 0;

        virtual HRESULT put_TabLeader(
            WdTabLeader prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Update() = 0;
    };

    struct TablesOfAuthoritiesCategories : public IDispatch /Abstract/
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

        virtual HRESULT Item(
            VARIANT *Index,
            TableOfAuthoritiesCategory **prop /Out/) = 0;
    };

    struct TableOfAuthoritiesCategory : public IDispatch /Abstract/
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

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;
    };
};