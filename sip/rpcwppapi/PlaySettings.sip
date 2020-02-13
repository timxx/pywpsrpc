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
    struct PlaySettings : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_ActionVerb(
            BSTR *ActionVerb /Out/) = 0;

        virtual HRESULT put_ActionVerb(
            BSTR ActionVerb) = 0;

        virtual HRESULT get_HideWhileNotPlaying(
            MsoTriState *HideWhileNotPlaying /Out/) = 0;

        virtual HRESULT put_HideWhileNotPlaying(
            MsoTriState HideWhileNotPlaying) = 0;

        virtual HRESULT get_LoopUntilStopped(
            MsoTriState *LoopUntilStopped /Out/) = 0;

        virtual HRESULT put_LoopUntilStopped(
            MsoTriState LoopUntilStopped) = 0;

        virtual HRESULT get_PlayOnEntry(
            MsoTriState *PlayOnEntry /Out/) = 0;

        virtual HRESULT put_PlayOnEntry(
            MsoTriState PlayOnEntry) = 0;

        virtual HRESULT get_RewindMovie(
            MsoTriState *RewindMovie /Out/) = 0;

        virtual HRESULT put_RewindMovie(
            MsoTriState RewindMovie) = 0;

        virtual HRESULT get_PauseAnimation(
            MsoTriState *PauseAnimation /Out/) = 0;

        virtual HRESULT put_PauseAnimation(
            MsoTriState PauseAnimation) = 0;

        virtual HRESULT get_StopAfterSlides(
            int *StopAfterSlides /Out/) = 0;

        virtual HRESULT put_StopAfterSlides(
            int StopAfterSlides) = 0;

    };
};
