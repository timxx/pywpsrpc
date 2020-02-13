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
    struct FillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_BackColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_GradientColorType(
            MsoGradientColorType *prop /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *prop /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            MsoGradientStyle *prop /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            long *prop /Out/) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *prop /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            MsoPresetGradientType *prop /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            MsoPresetTexture *prop /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_TextureType(
            MsoTextureType *prop /Out/) = 0;

        virtual HRESULT get_Transparency(
            single *prop /Out/) = 0;

        virtual HRESULT put_Transparency(
            single prop) = 0;

        virtual HRESULT get_Type(
            MsoFillType *prop /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT Background() = 0;

        virtual HRESULT OneColorGradient(
            MsoGradientStyle Style,
            long Variant,
            single Degree) = 0;

        virtual HRESULT Patterned(
            MsoPatternType Pattern) = 0;

        virtual HRESULT PresetGradient(
            MsoGradientStyle Style,
            long Variant,
            MsoPresetGradientType PresetGradientType) = 0;

        virtual HRESULT PresetTextured(
            MsoPresetTexture PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT TwoColorGradient(
            MsoGradientStyle Style,
            long Variant) = 0;

        virtual HRESULT UserPicture(
            BSTR PictureFile) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT get_GradientStops(
            ksoapi::GradientStops **prop /Out/) = 0;

        virtual HRESULT get_TextureOffsetX(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextureOffsetX(
            single prop) = 0;

        virtual HRESULT get_TextureOffsetY(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextureOffsetY(
            single prop) = 0;

        virtual HRESULT get_TextureAlignment(
            MsoTextureAlignment *prop /Out/) = 0;

        virtual HRESULT put_TextureAlignment(
            MsoTextureAlignment prop) = 0;

        virtual HRESULT get_TextureHorizontalScale(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextureHorizontalScale(
            single prop) = 0;

        virtual HRESULT get_TextureVerticalScale(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextureVerticalScale(
            single prop) = 0;

        virtual HRESULT get_TextureTile(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_TextureTile(
            MsoTriState prop) = 0;

        virtual HRESULT get_RotateWithObject(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_RotateWithObject(
            MsoTriState prop) = 0;

        virtual HRESULT get_PictureEffects(
            ksoapi::PictureEffects **prop /Out/) = 0;

        virtual HRESULT get_GradientAngle(
            single *prop /Out/) = 0;

        virtual HRESULT put_GradientAngle(
            single prop) = 0;

    };
};
