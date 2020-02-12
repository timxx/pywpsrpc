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
    struct Windows : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Window **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT *window = argMissing(),
            Window **prop /Out/ = 0) = 0;

        virtual HRESULT Arrange(
            VARIANT *ArrangeStyle = argMissing()) = 0;

        virtual HRESULT CompareSideBySideWith(
            VARIANT *Document,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT BreakSideBySide(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT ResetPositionsSideBySide() = 0;

        virtual HRESULT get_SyncScrollingSideBySide(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SyncScrollingSideBySide(
            VARIANT_BOOL prop) = 0;
    };

    struct Window : public IDispatch /Abstract/
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

        virtual HRESULT get_ActivePane(
            Pane **prop /Out/) = 0;

        virtual HRESULT get_Document(_Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Document((wpsapi::Document**)&a0);
        %End

        virtual HRESULT get_Panes(
            Panes **prop /Out/) = 0;

        virtual HRESULT get_Selection(
            Selection **prop /Out/) = 0;

        virtual HRESULT get_Left(
            long *prop /Out/) = 0;

        virtual HRESULT put_Left(
            long prop) = 0;

        virtual HRESULT get_Top(
            long *prop /Out/) = 0;

        virtual HRESULT put_Top(
            long prop) = 0;

        virtual HRESULT get_Width(
            long *prop /Out/) = 0;

        virtual HRESULT put_Width(
            long prop) = 0;

        virtual HRESULT get_Height(
            long *prop /Out/) = 0;

        virtual HRESULT put_Height(
            long prop) = 0;

        virtual HRESULT get_Split(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Split(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SplitVertical(
            long *prop /Out/) = 0;

        virtual HRESULT put_SplitVertical(
            long prop) = 0;

        virtual HRESULT get_Caption(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR prop) = 0;

        virtual HRESULT get_WindowState(
            WdWindowState *prop /Out/) = 0;

        virtual HRESULT put_WindowState(
            WdWindowState prop) = 0;

        virtual HRESULT get_DisplayRulers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayRulers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayVerticalRuler(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayVerticalRuler(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_View(
            View **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdWindowType *prop /Out/) = 0;

        virtual HRESULT get_Next(
            Window **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Window **prop /Out/) = 0;

        virtual HRESULT get_WindowNumber(
            long *prop /Out/) = 0;

        virtual HRESULT get_DisplayVerticalScrollBar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayVerticalScrollBar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayHorizontalScrollBar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayHorizontalScrollBar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StyleAreaWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_StyleAreaWidth(
            single prop) = 0;

        virtual HRESULT get_DisplayScreenTips(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayScreenTips(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HorizontalPercentScrolled(
            long *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPercentScrolled(
            long prop) = 0;

        virtual HRESULT get_VerticalPercentScrolled(
            long *prop /Out/) = 0;

        virtual HRESULT put_VerticalPercentScrolled(
            long prop) = 0;

        virtual HRESULT get_DocumentMap(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DocumentMap(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_DocumentMapPercentWidth(
            long *prop /Out/) = 0;

        virtual HRESULT put_DocumentMapPercentWidth(
            long prop) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_IMEMode(
            WdIMEMode *prop /Out/) = 0;

        virtual HRESULT put_IMEMode(
            WdIMEMode prop) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Close(
            VARIANT *SaveChanges = argMissing(),
            VARIANT *RouteDocument = argMissing()) = 0;

        virtual HRESULT LargeScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing(),
            VARIANT *ToRight = argMissing(),
            VARIANT *ToLeft = argMissing()) = 0;

        virtual HRESULT SmallScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing(),
            VARIANT *ToRight = argMissing(),
            VARIANT *ToLeft = argMissing()) = 0;

        virtual HRESULT NewWindow(
            Window **prop /Out/) = 0;

        virtual HRESULT PrintOutOld(
            VARIANT *Background = argMissing(),
            VARIANT *Append = argMissing(),
            VARIANT *Range = argMissing(),
            VARIANT *OutputFileName = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *Item = argMissing(),
            VARIANT *Copies = argMissing(),
            VARIANT *Pages = argMissing(),
            VARIANT *PageType = argMissing(),
            VARIANT *PrintToFile = argMissing(),
            VARIANT *Collate = argMissing(),
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing()) = 0;

        virtual HRESULT PageScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing()) = 0;

        virtual HRESULT SetFocus() = 0;

        virtual HRESULT RangeFromPoint(
            long x,
            long y,
            IDispatch **prop /Out/) = 0;

        virtual HRESULT ScrollIntoView(
            IDispatch *obj,
            VARIANT *Start = argMissing()) = 0;

        virtual HRESULT GetPoint(
            long *ScreenPixelsLeft /Out/,
            long *ScreenPixelsTop /Out/,
            long *ScreenPixelsWidth /Out/,
            long *ScreenPixelsHeight /Out/,
            IDispatch *obj) = 0;

        virtual HRESULT PrintOut2000(
            VARIANT *Background = argMissing(),
            VARIANT *Append = argMissing(),
            VARIANT *Range = argMissing(),
            VARIANT *OutputFileName = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *Item = argMissing(),
            VARIANT *Copies = argMissing(),
            VARIANT *Pages = argMissing(),
            VARIANT *PageType = argMissing(),
            VARIANT *PrintToFile = argMissing(),
            VARIANT *Collate = argMissing(),
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing(),
            VARIANT *PrintZoomColumn = argMissing(),
            VARIANT *PrintZoomRow = argMissing(),
            VARIANT *PrintZoomPaperWidth = argMissing(),
            VARIANT *PrintZoomPaperHeight = argMissing()) = 0;

        virtual HRESULT get_UsableWidth(
            long *prop /Out/) = 0;

        virtual HRESULT get_UsableHeight(
            long *prop /Out/) = 0;

        virtual HRESULT get_EnvelopeVisible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnvelopeVisible(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayRightRuler(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayRightRuler(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayLeftScrollBar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayLeftScrollBar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT PrintOut(
            VARIANT *Background = argMissing(),
            VARIANT *Append = argMissing(),
            VARIANT *Range = argMissing(),
            VARIANT *OutputFileName = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *Item = argMissing(),
            VARIANT *Copies = argMissing(),
            VARIANT *Pages = argMissing(),
            VARIANT *PageType = argMissing(),
            VARIANT *PrintToFile = argMissing(),
            VARIANT *Collate = argMissing(),
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing(),
            VARIANT *PrintZoomColumn = argMissing(),
            VARIANT *PrintZoomRow = argMissing(),
            VARIANT *PrintZoomPaperWidth = argMissing(),
            VARIANT *PrintZoomPaperHeight = argMissing()) = 0;

        virtual HRESULT ToggleShowAllReviewers() = 0;

        virtual HRESULT get_Thumbnails(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Thumbnails(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowSourceDocuments(
            WdShowSourceDocuments *prop /Out/) = 0;

        virtual HRESULT put_ShowSourceDocuments(
            WdShowSourceDocuments prop) = 0;

        virtual HRESULT ToggleRibbon() = 0;

        virtual HRESULT get_Hwnd(
            long *prop /Out/) = 0;
    };
};