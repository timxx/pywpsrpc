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
    struct PageSetup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_TopMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopMargin(
            single prop) = 0;

        virtual HRESULT get_BottomMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_BottomMargin(
            single prop) = 0;

        virtual HRESULT get_LeftMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftMargin(
            single prop) = 0;

        virtual HRESULT get_RightMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightMargin(
            single prop) = 0;

        virtual HRESULT get_Gutter(
            single *prop /Out/) = 0;

        virtual HRESULT put_Gutter(
            single prop) = 0;

        virtual HRESULT get_PageWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_PageWidth(
            single prop) = 0;

        virtual HRESULT get_PageHeight(
            single *prop /Out/) = 0;

        virtual HRESULT put_PageHeight(
            single prop) = 0;

        virtual HRESULT get_Orientation(
            WdOrientation *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            WdOrientation prop) = 0;

        virtual HRESULT get_FirstPageTray(
            WdPaperTray *prop /Out/) = 0;

        virtual HRESULT put_FirstPageTray(
            WdPaperTray prop) = 0;

        virtual HRESULT get_OtherPagesTray(
            WdPaperTray *prop /Out/) = 0;

        virtual HRESULT put_OtherPagesTray(
            WdPaperTray prop) = 0;

        virtual HRESULT get_VerticalAlignment(
            WdVerticalAlignment *prop /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            WdVerticalAlignment prop) = 0;

        virtual HRESULT get_MirrorMargins(
            long *prop /Out/) = 0;

        virtual HRESULT put_MirrorMargins(
            long prop) = 0;

        virtual HRESULT get_HeaderDistance(
            single *prop /Out/) = 0;

        virtual HRESULT put_HeaderDistance(
            single prop) = 0;

        virtual HRESULT get_FooterDistance(
            single *prop /Out/) = 0;

        virtual HRESULT put_FooterDistance(
            single prop) = 0;

        virtual HRESULT get_SectionStart(
            WdSectionStart *prop /Out/) = 0;

        virtual HRESULT put_SectionStart(
            WdSectionStart prop) = 0;

        virtual HRESULT get_OddAndEvenPagesHeaderFooter(
            long *prop /Out/) = 0;

        virtual HRESULT put_OddAndEvenPagesHeaderFooter(
            long prop) = 0;

        virtual HRESULT get_DifferentFirstPageHeaderFooter(
            long *prop /Out/) = 0;

        virtual HRESULT put_DifferentFirstPageHeaderFooter(
            long prop) = 0;

        virtual HRESULT get_SuppressEndnotes(
            long *prop /Out/) = 0;

        virtual HRESULT put_SuppressEndnotes(
            long prop) = 0;

        virtual HRESULT get_LineNumbering(
            LineNumbering **prop /Out/) = 0;

        virtual HRESULT put_LineNumbering(
            LineNumbering *prop) = 0;

        virtual HRESULT get_TextColumns(
            TextColumns **prop /Out/) = 0;

        virtual HRESULT put_TextColumns(
            TextColumns *prop) = 0;

        virtual HRESULT get_PaperSize(
            WdPaperSize *prop /Out/) = 0;

        virtual HRESULT put_PaperSize(
            WdPaperSize prop) = 0;

        virtual HRESULT get_TwoPagesOnOne(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TwoPagesOnOne(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_GutterOnTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_GutterOnTop(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CharsLine(
            single *prop /Out/) = 0;

        virtual HRESULT put_CharsLine(
            single prop) = 0;

        virtual HRESULT get_LinesPage(
            single *prop /Out/) = 0;

        virtual HRESULT put_LinesPage(
            single prop) = 0;

        virtual HRESULT get_ShowGrid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowGrid(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT TogglePortrait() = 0;

        virtual HRESULT SetAsTemplateDefault() = 0;

        virtual HRESULT get_GutterStyle(
            WdGutterStyleOld *prop /Out/) = 0;

        virtual HRESULT put_GutterStyle(
            WdGutterStyleOld prop) = 0;

        virtual HRESULT get_SectionDirection(
            WdSectionDirection *prop /Out/) = 0;

        virtual HRESULT put_SectionDirection(
            WdSectionDirection prop) = 0;

        virtual HRESULT get_LayoutMode(
            WdLayoutMode *prop /Out/) = 0;

        virtual HRESULT put_LayoutMode(
            WdLayoutMode prop) = 0;

        virtual HRESULT get_GutterPos(
            WdGutterStyle *prop /Out/) = 0;

        virtual HRESULT put_GutterPos(
            WdGutterStyle prop) = 0;

        virtual HRESULT get_BookFoldPrinting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BookFoldPrinting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BookFoldRevPrinting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BookFoldRevPrinting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BookFoldPrintingSheets(
            long *prop /Out/) = 0;

        virtual HRESULT put_BookFoldPrintingSheets(
            long prop) = 0;

    };
};
