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
    struct SlideShowSettings : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_PointerColor(
            ColorFormat **PointerColor /Out/) = 0;

        virtual HRESULT get_NamedSlideShows(
            NamedSlideShows **NamedSlideShows /Out/) = 0;

        virtual HRESULT get_StartingSlide(
            int *StartingSlide /Out/) = 0;

        virtual HRESULT put_StartingSlide(
            int StartingSlide) = 0;

        virtual HRESULT get_EndingSlide(
            int *EndingSlide /Out/) = 0;

        virtual HRESULT put_EndingSlide(
            int EndingSlide) = 0;

        virtual HRESULT get_AdvanceMode(
            PpSlideShowAdvanceMode *AdvanceMode /Out/) = 0;

        virtual HRESULT put_AdvanceMode(
            PpSlideShowAdvanceMode AdvanceMode) = 0;

        virtual HRESULT Run(
            SlideShowWindow **Run /Out/) = 0;

        virtual HRESULT get_LoopUntilStopped(
            MsoTriState *LoopUntilStopped /Out/) = 0;

        virtual HRESULT put_LoopUntilStopped(
            MsoTriState LoopUntilStopped) = 0;

        virtual HRESULT get_ShowType(
            PpSlideShowType *ShowType /Out/) = 0;

        virtual HRESULT put_ShowType(
            PpSlideShowType ShowType) = 0;

        virtual HRESULT get_ShowWithNarration(
            MsoTriState *ShowWithNarration /Out/) = 0;

        virtual HRESULT put_ShowWithNarration(
            MsoTriState ShowWithNarration) = 0;

        virtual HRESULT get_ShowWithAnimation(
            MsoTriState *ShowWithAnimation /Out/) = 0;

        virtual HRESULT put_ShowWithAnimation(
            MsoTriState ShowWithAnimation) = 0;

        virtual HRESULT get_SlideShowName(
            BSTR *SlideShowName /Out/) = 0;

        virtual HRESULT put_SlideShowName(
            BSTR SlideShowName) = 0;

        virtual HRESULT get_RangeType(
            PpSlideShowRangeType *RangeType /Out/) = 0;

        virtual HRESULT put_RangeType(
            PpSlideShowRangeType RangeType) = 0;

        virtual HRESULT get_ShowScrollbar(
            MsoTriState *ShowScrollbar /Out/) = 0;

        virtual HRESULT put_ShowScrollbar(
            MsoTriState ShowScrollbar) = 0;

        virtual HRESULT get_ShowPresenterView(
            MsoTriState *ShowPresenterView /Out/) = 0;

        virtual HRESULT put_ShowPresenterView(
            MsoTriState ShowPresenterView) = 0;

        virtual HRESULT get_ShowMediaControls(
            MsoTriState *ShowMediaControls /Out/) = 0;

        virtual HRESULT put_ShowMediaControls(
            MsoTriState ShowMediaControls) = 0;

    };
};
