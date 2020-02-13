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
    struct DocumentWindow : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Selection(
            Selection **Selection /Out/) = 0;

        virtual HRESULT get_View(
            View **View /Out/) = 0;

        virtual HRESULT get_Presentation(
            Presentation **Presentation /Out/) = 0;

        virtual HRESULT get_ViewType(
            PpViewType *ViewType /Out/) = 0;

        virtual HRESULT put_ViewType(
            PpViewType ViewType) = 0;

        virtual HRESULT get_BlackAndWhite(
            MsoTriState *BlackAndWhite /Out/) = 0;

        virtual HRESULT put_BlackAndWhite(
            MsoTriState BlackAndWhite) = 0;

        virtual HRESULT get_Active(
            MsoTriState *Active /Out/) = 0;

        virtual HRESULT get_WindowState(
            PpWindowState *WindowState /Out/) = 0;

        virtual HRESULT put_WindowState(
            PpWindowState WindowState) = 0;

        virtual HRESULT get_Caption(
            BSTR *Caption /Out/) = 0;

        virtual HRESULT get_Left(
            single *Left /Out/) = 0;

        virtual HRESULT put_Left(
            single Left) = 0;

        virtual HRESULT get_Top(
            single *Top /Out/) = 0;

        virtual HRESULT put_Top(
            single Top) = 0;

        virtual HRESULT get_Width(
            single *Width /Out/) = 0;

        virtual HRESULT put_Width(
            single Width) = 0;

        virtual HRESULT get_Height(
            single *Height /Out/) = 0;

        virtual HRESULT put_Height(
            single Height) = 0;

        virtual HRESULT FitToPage() = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT LargeScroll(
            int Down = 1,
            int Up = 0,
            int ToRight = 0,
            int ToLeft = 0) = 0;

        virtual HRESULT SmallScroll(
            int Down = 1,
            int Up = 0,
            int ToRight = 0,
            int ToLeft = 0) = 0;

        virtual HRESULT NewWindow(
            DocumentWindow **NewWindow /Out/) = 0;

        virtual HRESULT Close() = 0;

        virtual HRESULT get_HWND(
            long *HWND /Out/) = 0;

        virtual HRESULT get_ActivePane(
            Pane **ActivePane /Out/) = 0;

        virtual HRESULT get_Panes(
            Panes **Panes /Out/) = 0;

        virtual HRESULT get_SplitVertical(
            long *SplitVertical /Out/) = 0;

        virtual HRESULT put_SplitVertical(
            long SplitVertical) = 0;

        virtual HRESULT get_SplitHorizontal(
            long *SplitHorizontal /Out/) = 0;

        virtual HRESULT put_SplitHorizontal(
            long SplitHorizontal) = 0;

        virtual HRESULT RangeFromPoint(
            int X,
            int Y,
            IDispatch **RangeFromPoint /Out/) = 0;

        virtual HRESULT PointsToScreenPixelsX(
            single Points,
            int *PointsToScreenPixelsX /Out/) = 0;

        virtual HRESULT PointsToScreenPixelsY(
            single Points,
            int *PointsToScreenPixelsY /Out/) = 0;

        virtual HRESULT ScrollIntoView(
            single Left,
            single Top,
            single Width,
            single Height,
            MsoTriState Start = wppapi::msoTrue) = 0;

        virtual HRESULT IsSectionExpanded(
            int sectionIndex,
            VARIANT_BOOL *IsSectionExpanded /Out/) = 0;

        virtual HRESULT ExpandSection(
            int sectionIndex,
            VARIANT_BOOL Expand) = 0;

    };
};
