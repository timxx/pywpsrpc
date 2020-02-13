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
    struct PdfExportOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ViewPdfAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ViewPdfAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT  get_ConvertTablesOfContents(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertTablesOfContents(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertCommentsMode(
            WpsPdfCommentsMode *prop /Out/) = 0;

        virtual HRESULT put_ConvertCommentsMode(
            WpsPdfCommentsMode prop) = 0;

        virtual HRESULT get_ConvertFootnotes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertFootnotes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertEndnotes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertEndnotes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertSummaryInfo(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertSummaryInfo(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EditRight(
            WpsPdfEditRight Rights,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EditRight(
            WpsPdfEditRight Rights,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintRight(
            WpsPdfPrintRight *prop /Out/) = 0;

        virtual HRESULT put_PrintRight(
            WpsPdfPrintRight prop) = 0;

        virtual HRESULT get_CopyRight(
            WpsPdfCopyRight *prop /Out/) = 0;

        virtual HRESULT put_CopyRight(
            WpsPdfCopyRight prop) = 0;

        virtual HRESULT get_ConvertHyperlinks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertHyperlinks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertTitleStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertTitleStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertBuildinStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertBuildinStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertBookmark(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertBookmark(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertCustomStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertCustomStyles(
            VARIANT_BOOL prop) = 0;

    };
};
