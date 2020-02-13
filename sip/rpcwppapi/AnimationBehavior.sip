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
    struct AnimationBehavior : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Additive(
            MsoAnimAdditive *Additive /Out/) = 0;

        virtual HRESULT put_Additive(
            MsoAnimAdditive Additive) = 0;

        virtual HRESULT get_Accumulate(
            MsoAnimAccumulate *Accumulate /Out/) = 0;

        virtual HRESULT put_Accumulate(
            MsoAnimAccumulate Accumulate) = 0;

        virtual HRESULT get_Type(
            MsoAnimType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoAnimType Type) = 0;

        virtual HRESULT get_MotionEffect(
            MotionEffect **MotionEffect /Out/) = 0;

        virtual HRESULT get_ColorEffect(
            ColorEffect **ColorEffect /Out/) = 0;

        virtual HRESULT get_ScaleEffect(
            ScaleEffect **ScaleEffect /Out/) = 0;

        virtual HRESULT get_RotationEffect(
            RotationEffect **RotationEffect /Out/) = 0;

        virtual HRESULT get_PropertyEffect(
            PropertyEffect **PropertyEffect /Out/) = 0;

        virtual HRESULT get_Timing(
            Timing **Timing /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_CommandEffect(
            CommandEffect **CommandEffect /Out/) = 0;

        virtual HRESULT get_FilterEffect(
            FilterEffect **FilterEffect /Out/) = 0;

        virtual HRESULT get_SetEffect(
            SetEffect **SetEffect /Out/) = 0;

    };
};
