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
    struct Timing : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Duration(
            single *Duration /Out/) = 0;

        virtual HRESULT put_Duration(
            single Duration) = 0;

        virtual HRESULT get_TriggerType(
            MsoAnimTriggerType *TriggerType /Out/) = 0;

        virtual HRESULT put_TriggerType(
            MsoAnimTriggerType TriggerType) = 0;

        virtual HRESULT get_TriggerDelayTime(
            single *TriggerDelayTime /Out/) = 0;

        virtual HRESULT put_TriggerDelayTime(
            single TriggerDelayTime) = 0;

        virtual HRESULT get_TriggerShape(
            Shape **TriggerShape /Out/) = 0;

        virtual HRESULT put_TriggerShape(
            Shape *TriggerShape) = 0;

        virtual HRESULT get_RepeatCount(
            int *RepeatCount /Out/) = 0;

        virtual HRESULT put_RepeatCount(
            int RepeatCount) = 0;

        virtual HRESULT get_RepeatDuration(
            single *RepeatDuration /Out/) = 0;

        virtual HRESULT put_RepeatDuration(
            single RepeatDuration) = 0;

        virtual HRESULT get_Speed(
            single *Speed /Out/) = 0;

        virtual HRESULT put_Speed(
            single Speed) = 0;

        virtual HRESULT get_Accelerate(
            single *Accelerate /Out/) = 0;

        virtual HRESULT put_Accelerate(
            single Accelerate) = 0;

        virtual HRESULT get_Decelerate(
            single *Decelerate /Out/) = 0;

        virtual HRESULT put_Decelerate(
            single Decelerate) = 0;

        virtual HRESULT get_AutoReverse(
            MsoTriState *AutoReverse /Out/) = 0;

        virtual HRESULT put_AutoReverse(
            MsoTriState AutoReverse) = 0;

        virtual HRESULT get_SmoothStart(
            MsoTriState *SmoothStart /Out/) = 0;

        virtual HRESULT put_SmoothStart(
            MsoTriState SmoothStart) = 0;

        virtual HRESULT get_SmoothEnd(
            MsoTriState *SmoothEnd /Out/) = 0;

        virtual HRESULT put_SmoothEnd(
            MsoTriState SmoothEnd) = 0;

        virtual HRESULT get_RewindAtEnd(
            MsoTriState *RewindAtEnd /Out/) = 0;

        virtual HRESULT put_RewindAtEnd(
            MsoTriState RewindAtEnd) = 0;

        virtual HRESULT get_Restart(
            MsoAnimEffectRestart *Restart /Out/) = 0;

        virtual HRESULT put_Restart(
            MsoAnimEffectRestart Restart) = 0;

        virtual HRESULT get_BounceEnd(
            MsoTriState *BounceEnd /Out/) = 0;

        virtual HRESULT put_BounceEnd(
            MsoTriState BounceEnd) = 0;

        virtual HRESULT get_BounceEndIntensity(
            single *BounceEndIntensity /Out/) = 0;

        virtual HRESULT put_BounceEndIntensity(
            single BounceEndIntensity) = 0;

        virtual HRESULT get_TriggerBookmark(
            BSTR *TriggerBookmark /Out/) = 0;

        virtual HRESULT put_TriggerBookmark(
            BSTR TriggerBookmark) = 0;

    };
};
