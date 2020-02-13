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
    struct DefaultWebOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_OptimizeForBrowser(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OptimizeForBrowser(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BrowserLevel(
            WdBrowserLevel *prop /Out/) = 0;

        virtual HRESULT put_BrowserLevel(
            WdBrowserLevel prop) = 0;

        virtual HRESULT get_RelyOnCSS(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RelyOnCSS(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OrganizeInFolder(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OrganizeInFolder(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UpdateLinksOnSave(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UpdateLinksOnSave(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseLongFileNames(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseLongFileNames(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CheckIfOfficeIsHTMLEditor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckIfOfficeIsHTMLEditor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CheckIfWordIsDefaultHTMLEditor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckIfWordIsDefaultHTMLEditor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RelyOnVML(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RelyOnVML(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowPNG(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowPNG(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ScreenSize(
            MsoScreenSize *prop /Out/) = 0;

        virtual HRESULT put_ScreenSize(
            MsoScreenSize prop) = 0;

        virtual HRESULT get_PixelsPerInch(
            long *prop /Out/) = 0;

        virtual HRESULT put_PixelsPerInch(
            long prop) = 0;

        virtual HRESULT get_Encoding(
            MsoEncoding *prop /Out/) = 0;

        virtual HRESULT put_Encoding(
            MsoEncoding prop) = 0;

        virtual HRESULT get_AlwaysSaveInDefaultEncoding(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlwaysSaveInDefaultEncoding(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Fonts(
            ksoapi::WebPageFonts **prop /Out/) = 0;

        virtual HRESULT get_FolderSuffix(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_TargetBrowser(
            MsoTargetBrowser *prop /Out/) = 0;

        virtual HRESULT put_TargetBrowser(
            MsoTargetBrowser prop) = 0;

        virtual HRESULT get_SaveNewWebPagesAsWebArchives(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SaveNewWebPagesAsWebArchives(
            VARIANT_BOOL prop) = 0;

    };
};
