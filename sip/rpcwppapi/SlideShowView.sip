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
    struct SlideShowView : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Zoom(
            int *Zoom /Out/) = 0;

        virtual HRESULT get_Slide(
            Slide **Slide /Out/) = 0;

        virtual HRESULT get_PointerType(
            PpSlideShowPointerType *PointerType /Out/) = 0;

        virtual HRESULT put_PointerType(
            PpSlideShowPointerType PointerType) = 0;

        virtual HRESULT get_State(
            PpSlideShowState *State /Out/) = 0;

        virtual HRESULT put_State(
            PpSlideShowState State) = 0;

        virtual HRESULT get_AcceleratorsEnabled(
            MsoTriState *AcceleratorsEnabled /Out/) = 0;

        virtual HRESULT put_AcceleratorsEnabled(
            MsoTriState AcceleratorsEnabled) = 0;

        virtual HRESULT get_PresentationElapsedTime(
            single *PresentationElapsedTime /Out/) = 0;

        virtual HRESULT get_SlideElapsedTime(
            single *SlideElapsedTime /Out/) = 0;

        virtual HRESULT put_SlideElapsedTime(
            single SlideElapsedTime) = 0;

        virtual HRESULT get_LastSlideViewed(
            Slide **LastSlideViewed /Out/) = 0;

        virtual HRESULT get_AdvanceMode(
            PpSlideShowAdvanceMode *AdvanceMode /Out/) = 0;

        virtual HRESULT get_PointerColor(
            ColorFormat **PointerColor /Out/) = 0;

        virtual HRESULT get_IsNamedShow(
            MsoTriState *IsNamedShow /Out/) = 0;

        virtual HRESULT get_SlideShowName(
            BSTR *SlideShowName /Out/) = 0;

        virtual HRESULT DrawLine(
            single BeginX,
            single BeginY,
            single EndX,
            single EndY) = 0;

        virtual HRESULT EraseDrawing() = 0;

        virtual HRESULT First() = 0;

        virtual HRESULT Last() = 0;

        virtual HRESULT Next() = 0;

        virtual HRESULT Previous() = 0;

        virtual HRESULT GotoSlide(
            int Index,
            MsoTriState ResetSlide = wppapi::msoTrue) = 0;

        virtual HRESULT GotoNamedShow(
            BSTR SlideShowName) = 0;

        virtual HRESULT EndNamedShow() = 0;

        virtual HRESULT ResetSlideTime() = 0;

        virtual HRESULT Exit() = 0;

        virtual HRESULT InstallTracker(
            MouseTracker *pTracker,
            MsoTriState Presenter) = 0;

        virtual HRESULT get_CurrentShowPosition(
            int *CurrentShowPosition /Out/) = 0;

        virtual HRESULT GotoClick(
            int Index) = 0;

        virtual HRESULT GetClickIndex(
            int *GetClickIndex /Out/) = 0;

        virtual HRESULT GetClickCount(
            int *GetClickCount /Out/) = 0;

        virtual HRESULT FirstAnimationIsAutomatic(
            VARIANT_BOOL *FirstAnimationIsAutomatic /Out/) = 0;

        virtual HRESULT Player(
            VARIANT ShapeId,
            Player **Player /Out/) = 0;

        virtual HRESULT get_MediaControlsVisible(
            MsoTriState *MediaControlsVisible /Out/) = 0;

        virtual HRESULT get_MediaControlsLeft(
            single *MediaControlsLeft /Out/) = 0;

        virtual HRESULT get_MediaControlsTop(
            single *MediaControlsTop /Out/) = 0;

        virtual HRESULT get_MediaControlsWidth(
            single *MediaControlsWidth /Out/) = 0;

        virtual HRESULT get_MediaControlsHeight(
            single *MediaControlsHeight /Out/) = 0;

    };
};
