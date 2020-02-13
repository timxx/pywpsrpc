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
    struct SlideShowTransition : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_AdvanceOnClick(
            MsoTriState *AdvanceOnClick /Out/) = 0;

        virtual HRESULT put_AdvanceOnClick(
            MsoTriState AdvanceOnClick) = 0;

        virtual HRESULT get_AdvanceOnTime(
            MsoTriState *AdvanceOnTime /Out/) = 0;

        virtual HRESULT put_AdvanceOnTime(
            MsoTriState AdvanceOnTime) = 0;

        virtual HRESULT get_AdvanceTime(
            single *AdvanceTime /Out/) = 0;

        virtual HRESULT put_AdvanceTime(
            single AdvanceTime) = 0;

        virtual HRESULT get_EntryEffect(
            PpEntryEffect *EntryEffect /Out/) = 0;

        virtual HRESULT put_EntryEffect(
            PpEntryEffect EntryEffect) = 0;

        virtual HRESULT get_Hidden(
            MsoTriState *Hidden /Out/) = 0;

        virtual HRESULT put_Hidden(
            MsoTriState Hidden) = 0;

        virtual HRESULT get_LoopSoundUntilNext(
            MsoTriState *LoopSoundUntilNext /Out/) = 0;

        virtual HRESULT put_LoopSoundUntilNext(
            MsoTriState LoopSoundUntilNext) = 0;

        virtual HRESULT get_SoundEffect(
            SoundEffect **SoundEffect /Out/) = 0;

        virtual HRESULT get_Speed(
            PpTransitionSpeed *Speed /Out/) = 0;

        virtual HRESULT put_Speed(
            PpTransitionSpeed Speed) = 0;

        virtual HRESULT get_Duration(
            single *Duration /Out/) = 0;

        virtual HRESULT put_Duration(
            single Duration) = 0;

    };
};
