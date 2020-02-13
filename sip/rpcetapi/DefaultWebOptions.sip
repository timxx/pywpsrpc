/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct DefaultWebOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_RelyOnCSS(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RelyOnCSS(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SaveHiddenData(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SaveHiddenData(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LoadPictures(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LoadPictures(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_OrganizeInFolder(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_OrganizeInFolder(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_UpdateLinksOnSave(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UpdateLinksOnSave(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_UseLongFileNames(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseLongFileNames(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CheckIfOfficeIsHTMLEditor(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CheckIfOfficeIsHTMLEditor(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DownloadComponents(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DownloadComponents(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RelyOnVML(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RelyOnVML(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AllowPNG(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AllowPNG(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ScreenSize(
            MsoScreenSize *RHS /Out/) = 0;

        virtual HRESULT put_ScreenSize(
            MsoScreenSize RHS) = 0;

        virtual HRESULT get_PixelsPerInch(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PixelsPerInch(
            long RHS) = 0;

        virtual HRESULT get_LocationOfComponents(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_LocationOfComponents(
            BSTR RHS) = 0;

        virtual HRESULT get_Encoding(
            MsoEncoding *RHS /Out/) = 0;

        virtual HRESULT put_Encoding(
            MsoEncoding RHS) = 0;

        virtual HRESULT get_AlwaysSaveInDefaultEncoding(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AlwaysSaveInDefaultEncoding(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Fonts(
            ksoapi::WebPageFonts **RHS /Out/) = 0;

        virtual HRESULT get_FolderSuffix(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_TargetBrowser(
            MsoTargetBrowser *RHS /Out/) = 0;

        virtual HRESULT put_TargetBrowser(
            MsoTargetBrowser RHS) = 0;

        virtual HRESULT get_SaveNewWebPagesAsWebArchives(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SaveNewWebPagesAsWebArchives(
            VARIANT_BOOL RHS) = 0;

    };
};
