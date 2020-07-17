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
    struct Sequence : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT Item(
            int Index,
            Effect **Item /Out/) = 0;

        Effect* __getitem__(int index) const;
        %MethodCode
            wppapi::Effect *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT AddEffect(
            Shape *Shape,
            MsoAnimEffect effectId,
            MsoAnimateByLevel Level = wppapi::msoAnimateLevelNone,
            MsoAnimTriggerType trigger = wppapi::msoAnimTriggerNone,
            int Index = 0,
            Effect **Effect /Out/ = 0) = 0;

        virtual HRESULT Clone(
            Effect *effect,
            int Index = 0,
            Effect **Clone /Out/ = 0) = 0;

        virtual HRESULT FindFirstAnimationFor(
            Shape *Shape,
            Effect **FindFirstAnimationFor /Out/) = 0;

        virtual HRESULT FindFirstAnimationForClick(
            int click,
            Effect **FindFirstAnimationForClick /Out/) = 0;

        virtual HRESULT ConvertToBuildLevel(
            Effect *effect,
            MsoAnimateByLevel Level,
            Effect **ConvertToBuildLevel /Out/) = 0;

        virtual HRESULT ConvertToAfterEffect(
            Effect *effect,
            MsoAnimAfterEffect After,
            MsoRGBType DimColor = 0,
            PpColorSchemeIndex DimSchemeColor = wppapi::ppSchemeColorMixed,
            Effect **ConvertToAfterEffect /Out/ = 0) = 0;

        virtual HRESULT ConvertToAnimateBackground(
            Effect *effect,
            MsoTriState AnimateBackground,
            Effect **ConvertToAnimateBackground /Out/) = 0;

        virtual HRESULT ConvertToAnimateInReverse(
            Effect *effect,
            MsoTriState animateInReverse,
            Effect **ConvertToAnimateInReverse /Out/) = 0;

        virtual HRESULT ConvertToTextUnitEffect(
            Effect *effect,
            MsoAnimTextUnitEffect unitEffect,
            Effect **ConvertToTextUnitEffect /Out/) = 0;

        virtual HRESULT AddTriggerEffect(
            Shape *pShape,
            MsoAnimEffect effectId,
            MsoAnimTriggerType trigger,
            Shape *pTriggerShape,
            BSTR bookmark = 0,
            MsoAnimateByLevel Level = wppapi::msoAnimateLevelNone,
            Effect **TriggerEffect /Out/ = 0) = 0;

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)
    };
};
