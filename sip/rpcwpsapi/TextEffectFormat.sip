/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct TextEffectFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Alignment(
            MsoTextEffectAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            MsoTextEffectAlignment prop) = 0;

        virtual HRESULT get_FontBold(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_FontBold(
            MsoTriState prop) = 0;

        virtual HRESULT get_FontItalic(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_FontItalic(
            MsoTriState prop) = 0;

        virtual HRESULT get_FontName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FontName(
            BSTR prop) = 0;

        virtual HRESULT get_FontSize(
            single *prop /Out/) = 0;

        virtual HRESULT put_FontSize(
            single prop) = 0;

        virtual HRESULT get_KernedPairs(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_KernedPairs(
            MsoTriState prop) = 0;

        virtual HRESULT get_NormalizedHeight(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_NormalizedHeight(
            MsoTriState prop) = 0;

        virtual HRESULT get_PresetShape(
            MsoPresetTextEffectShape *prop /Out/) = 0;

        virtual HRESULT put_PresetShape(
            MsoPresetTextEffectShape prop) = 0;

        virtual HRESULT get_PresetTextEffect(
            MsoPresetTextEffect *prop /Out/) = 0;

        virtual HRESULT put_PresetTextEffect(
            MsoPresetTextEffect prop) = 0;

        virtual HRESULT get_RotatedChars(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_RotatedChars(
            MsoTriState prop) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_Tracking(
            single *prop /Out/) = 0;

        virtual HRESULT put_Tracking(
            single prop) = 0;

        virtual HRESULT ToggleVerticalText() = 0;
    };
};