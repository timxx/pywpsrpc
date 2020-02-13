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
    struct TextEffectFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT ToggleVerticalText() = 0;

        virtual HRESULT get_Alignment(
            MsoTextEffectAlignment *Alignment /Out/) = 0;

        virtual HRESULT put_Alignment(
            MsoTextEffectAlignment Alignment) = 0;

        virtual HRESULT get_FontBold(
            MsoTriState *FontBold /Out/) = 0;

        virtual HRESULT put_FontBold(
            MsoTriState FontBold) = 0;

        virtual HRESULT get_FontItalic(
            MsoTriState *FontItalic /Out/) = 0;

        virtual HRESULT put_FontItalic(
            MsoTriState FontItalic) = 0;

        virtual HRESULT get_FontName(
            BSTR *FontName /Out/) = 0;

        virtual HRESULT put_FontName(
            BSTR FontName) = 0;

        virtual HRESULT get_FontSize(
            single *FontSize /Out/) = 0;

        virtual HRESULT put_FontSize(
            single FontSize) = 0;

        virtual HRESULT get_KernedPairs(
            MsoTriState *KernedPairs /Out/) = 0;

        virtual HRESULT put_KernedPairs(
            MsoTriState KernedPairs) = 0;

        virtual HRESULT get_NormalizedHeight(
            MsoTriState *NormalizedHeight /Out/) = 0;

        virtual HRESULT put_NormalizedHeight(
            MsoTriState NormalizedHeight) = 0;

        virtual HRESULT get_PresetShape(
            MsoPresetTextEffectShape *PresetShape /Out/) = 0;

        virtual HRESULT put_PresetShape(
            MsoPresetTextEffectShape PresetShape) = 0;

        virtual HRESULT get_PresetTextEffect(
            MsoPresetTextEffect *Preset /Out/) = 0;

        virtual HRESULT put_PresetTextEffect(
            MsoPresetTextEffect Preset) = 0;

        virtual HRESULT get_RotatedChars(
            MsoTriState *RotatedChars /Out/) = 0;

        virtual HRESULT put_RotatedChars(
            MsoTriState RotatedChars) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR Text) = 0;

        virtual HRESULT get_Tracking(
            single *Tracking /Out/) = 0;

        virtual HRESULT put_Tracking(
            single Tracking) = 0;

    };
};
