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
    struct TableOfContents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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
