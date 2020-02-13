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
    struct Index : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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
