/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct DefaultWebOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_IncludeNavigation(
            MsoTriState *IncludeNavigation /Out/) = 0;

        virtual HRESULT put_IncludeNavigation(
            MsoTriState IncludeNavigation) = 0;

        virtual HRESULT get_FrameColors(
            PpFrameColors *FrameColors /Out/) = 0;

        virtual HRESULT put_FrameColors(
            PpFrameColors FrameColors) = 0;

        virtual HRESULT get_ResizeGraphics(
            MsoTriState *ResizeGraphics /Out/) = 0;

        virtual HRESULT put_ResizeGraphics(
            MsoTriState ResizeGraphics) = 0;

        virtual HRESULT get_ShowSlideAnimation(
            MsoTriState *ShowSlideAnimation /Out/) = 0;

        virtual HRESULT put_ShowSlideAnimation(
            MsoTriState ShowSlideAnimation) = 0;

        virtual HRESULT get_OrganizeInFolder(
            MsoTriState *OrganizeInFolder /Out/) = 0;

        virtual HRESULT put_OrganizeInFolder(
            MsoTriState OrganizeInFolder) = 0;

        virtual HRESULT get_UseLongFileNames(
            MsoTriState *UseLongFileNames /Out/) = 0;

        virtual HRESULT put_UseLongFileNames(
            MsoTriState UseLongFileNames) = 0;

        virtual HRESULT get_RelyOnVML(
            MsoTriState *RelyOnVML /Out/) = 0;

        virtual HRESULT put_RelyOnVML(
            MsoTriState RelyOnVML) = 0;

        virtual HRESULT get_AllowPNG(
            MsoTriState *AllowPNG /Out/) = 0;

        virtual HRESULT put_AllowPNG(
            MsoTriState AllowPNG) = 0;

        virtual HRESULT get_ScreenSize(
            MsoScreenSize *ScreenSize /Out/) = 0;

        virtual HRESULT put_ScreenSize(
            MsoScreenSize ScreenSize) = 0;

        virtual HRESULT get_Encoding(
            MsoEncoding *Encoding /Out/) = 0;

        virtual HRESULT put_Encoding(
            MsoEncoding Encoding) = 0;

        virtual HRESULT get_UpdateLinksOnSave(
            MsoTriState *UpdateLinksOnSave /Out/) = 0;

        virtual HRESULT put_UpdateLinksOnSave(
            MsoTriState UpdateLinksOnSave) = 0;

        virtual HRESULT get_CheckIfOfficeIsHTMLEditor(
            MsoTriState *CheckIfOfficeIsHTMLEditor /Out/) = 0;

        virtual HRESULT put_CheckIfOfficeIsHTMLEditor(
            MsoTriState CheckIfOfficeIsHTMLEditor) = 0;

        virtual HRESULT get_AlwaysSaveInDefaultEncoding(
            MsoTriState *AlwaysSaveInDefaultEncoding /Out/) = 0;

        virtual HRESULT put_AlwaysSaveInDefaultEncoding(
            MsoTriState AlwaysSaveInDefaultEncoding) = 0;

        virtual HRESULT get_Fonts(
            ksoapi::WebPageFonts **Fonts /Out/) = 0;

        virtual HRESULT get_FolderSuffix(
            BSTR *FolderSuffix /Out/) = 0;

        virtual HRESULT get_TargetBrowser(
            MsoTargetBrowser *TargetBrowser /Out/) = 0;

        virtual HRESULT put_TargetBrowser(
            MsoTargetBrowser TargetBrowser) = 0;

        virtual HRESULT get_SaveNewWebPagesAsWebArchives(
            MsoTriState *SaveNewWebPagesAsWebArchives /Out/) = 0;

        virtual HRESULT put_SaveNewWebPagesAsWebArchives(
            MsoTriState SaveNewWebPagesAsWebArchives) = 0;

        virtual HRESULT get_HTMLVersion(
            PpHTMLVersion *HTMLVersion /Out/) = 0;

        virtual HRESULT put_HTMLVersion(
            PpHTMLVersion HTMLVersion) = 0;

    };
};
