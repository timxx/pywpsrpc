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
    struct AnimationSettings : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_DimColor(
            ColorFormat **DimColor /Out/) = 0;

        virtual HRESULT get_SoundEffect(
            SoundEffect **SoundEffect /Out/) = 0;

        virtual HRESULT get_EntryEffect(
            PpEntryEffect *EntryEffect /Out/) = 0;

        virtual HRESULT put_EntryEffect(
            PpEntryEffect EntryEffect) = 0;

        virtual HRESULT get_AfterEffect(
            PpAfterEffect *AfterEffect /Out/) = 0;

        virtual HRESULT put_AfterEffect(
            PpAfterEffect AfterEffect) = 0;

        virtual HRESULT get_AnimationOrder(
            int *AnimationOrder /Out/) = 0;

        virtual HRESULT put_AnimationOrder(
            int AnimationOrder) = 0;

        virtual HRESULT get_AdvanceMode(
            PpAdvanceMode *AdvanceMode /Out/) = 0;

        virtual HRESULT put_AdvanceMode(
            PpAdvanceMode AdvanceMode) = 0;

        virtual HRESULT get_AdvanceTime(
            single *AdvanceTime /Out/) = 0;

        virtual HRESULT put_AdvanceTime(
            single AdvanceTime) = 0;

        virtual HRESULT get_PlaySettings(
            PlaySettings **PlaySettings /Out/) = 0;

        virtual HRESULT get_TextLevelEffect(
            PpTextLevelEffect *TextLevelEffect /Out/) = 0;

        virtual HRESULT put_TextLevelEffect(
            PpTextLevelEffect TextLevelEffect) = 0;

        virtual HRESULT get_TextUnitEffect(
            PpTextUnitEffect *TextUnitEffect /Out/) = 0;

        virtual HRESULT put_TextUnitEffect(
            PpTextUnitEffect TextUnitEffect) = 0;

        virtual HRESULT get_Animate(
            MsoTriState *Animate /Out/) = 0;

        virtual HRESULT put_Animate(
            MsoTriState Animate) = 0;

        virtual HRESULT get_AnimateBackground(
            MsoTriState *AnimateBackground /Out/) = 0;

        virtual HRESULT put_AnimateBackground(
            MsoTriState AnimateBackground) = 0;

        virtual HRESULT get_AnimateTextInReverse(
            MsoTriState *AnimateTextInReverse /Out/) = 0;

        virtual HRESULT put_AnimateTextInReverse(
            MsoTriState AnimateTextInReverse) = 0;

        virtual HRESULT get_ChartUnitEffect(
            PpChartUnitEffect *ChartUnitEffect /Out/) = 0;

        virtual HRESULT put_ChartUnitEffect(
            PpChartUnitEffect ChartUnitEffect) = 0;

    };
};
