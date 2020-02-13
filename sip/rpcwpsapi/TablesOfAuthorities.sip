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
};
