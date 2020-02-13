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
    struct TableOfAuthorities : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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
};
