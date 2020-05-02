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
    struct IWindow : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Activate(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ActivateNext(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ActivatePrevious(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ActiveCell(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ActiveChart(
            Chart **RHS /Out/) = 0;

        virtual HRESULT get_ActivePane(
            Pane **RHS /Out/) = 0;

        virtual HRESULT get_ActiveSheet(
            _Worksheet **RHS /Out/) = 0;
        %MethodCode
            etapi::_Worksheet *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveSheet((IDispatch**)&prop);
            return sipBuildResult(0, "(iD)", hr, prop, sipType_etapi_Worksheet, SIP_NULLPTR);
        %End

        virtual HRESULT get_Caption(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            VARIANT RHS) = 0;

        virtual HRESULT Close(
            VARIANT SaveChanges = argMissing2(),
            VARIANT Filename = argMissing2(),
            VARIANT RouteWorkbook = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT get_DisplayFormulas(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayFormulas(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayGridlines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayGridlines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayHeadings(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHeadings(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayHorizontalScrollBar(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHorizontalScrollBar(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayOutline(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayOutline(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get__DisplayRightToLeft(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put__DisplayRightToLeft(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayVerticalScrollBar(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayVerticalScrollBar(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayWorkbookTabs(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayWorkbookTabs(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayZeros(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayZeros(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableResize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableResize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FreezePanes(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FreezePanes(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_GridlineColor(
            long *RHS /Out/) = 0;

        virtual HRESULT put_GridlineColor(
            long RHS) = 0;

        virtual HRESULT get_GridlineColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT put_GridlineColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT LargeScroll(
            VARIANT Down = argMissing2(),
            VARIANT Up = argMissing2(),
            VARIANT ToRight = argMissing2(),
            VARIANT ToLeft = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT NewWindow(
            Window **RHS /Out/) = 0;

        virtual HRESULT get_OnWindow(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnWindow(
            BSTR RHS) = 0;

        virtual HRESULT get_Panes(
            Panes **RHS /Out/) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_RangeSelection(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ScrollColumn(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ScrollColumn(
            long RHS) = 0;

        virtual HRESULT get_ScrollRow(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ScrollRow(
            long RHS) = 0;

        virtual HRESULT ScrollWorkbookTabs(
            VARIANT Sheets = argMissing2(),
            VARIANT Position = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_SelectedSheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_Selection(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT SmallScroll(
            VARIANT Down = argMissing2(),
            VARIANT Up = argMissing2(),
            VARIANT ToRight = argMissing2(),
            VARIANT ToLeft = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Split(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Split(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SplitColumn(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SplitColumn(
            long RHS) = 0;

        virtual HRESULT get_SplitHorizontal(
            double *RHS /Out/) = 0;

        virtual HRESULT put_SplitHorizontal(
            double RHS) = 0;

        virtual HRESULT get_SplitRow(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SplitRow(
            long RHS) = 0;

        virtual HRESULT get_SplitVertical(
            double *RHS /Out/) = 0;

        virtual HRESULT put_SplitVertical(
            double RHS) = 0;

        virtual HRESULT get_TabRatio(
            double *RHS /Out/) = 0;

        virtual HRESULT put_TabRatio(
            double RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_Type(
            XlWindowType *RHS /Out/) = 0;

        virtual HRESULT get_UsableHeight(
            double *RHS /Out/) = 0;

        virtual HRESULT get_UsableWidth(
            double *RHS /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_VisibleRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get_WindowNumber(
            long *RHS /Out/) = 0;

        virtual HRESULT get_WindowState(
            XlWindowState *RHS /Out/) = 0;

        virtual HRESULT put_WindowState(
            XlWindowState RHS) = 0;

        virtual HRESULT get_Zoom(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Zoom(
            VARIANT RHS) = 0;

        virtual HRESULT get_View(
            XlWindowView *RHS /Out/) = 0;

        virtual HRESULT put_View(
            XlWindowView RHS) = 0;

        virtual HRESULT get_DisplayRightToLeft(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayRightToLeft(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT PointsToScreenPixelsX(
            long Points,
            long *RHS /Out/) = 0;

        virtual HRESULT PointsToScreenPixelsY(
            long Points,
            long *RHS /Out/) = 0;

        virtual HRESULT RangeFromPoint(
            long x,
            long y,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT ScrollIntoView(
            long Left,
            long Top,
            long Width,
            long Height,
            VARIANT Start = argMissing2()) = 0;

        virtual HRESULT get_SheetViews(
            SheetViews **RHS /Out/) = 0;

        virtual HRESULT get_ActiveSheetView(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_DisplayRuler(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayRuler(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoFilterDateGrouping(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoFilterDateGrouping(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayWhitespace(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayWhitespace(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Hwnd(
            long *RHS /Out/) = 0;

    };
};
