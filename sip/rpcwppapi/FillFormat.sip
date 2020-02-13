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
    struct FillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Creator(
            long *plCreator /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Background() = 0;

        virtual HRESULT OneColorGradient(
            MsoGradientStyle Style,
            int Variant,
            single Degree) = 0;

        virtual HRESULT Patterned(
            MsoPatternType Pattern) = 0;

        virtual HRESULT PresetGradient(
            MsoGradientStyle Style,
            int Variant,
            MsoPresetGradientType PresetGradientType) = 0;

        virtual HRESULT PresetTextured(
            MsoPresetTexture PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT TwoColorGradient(
            MsoGradientStyle Style,
            int Variant) = 0;

        virtual HRESULT UserPicture(
            BSTR PictureFile) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT get_BackColor(
            ColorFormat **BackColor /Out/) = 0;

        virtual HRESULT put_BackColor(
            ColorFormat *BackColor) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **ForeColor /Out/) = 0;

        virtual HRESULT put_ForeColor(
            ColorFormat *ForeColor) = 0;

        virtual HRESULT get_GradientColorType(
            MsoGradientColorType *GradientColorType /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *GradientDegree /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            MsoGradientStyle *GradientStyle /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            int *GradientVariant /Out/) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *Pattern /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            MsoPresetGradientType *PresetGradientType /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            MsoPresetTexture *PresetTexture /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *TextureName /Out/) = 0;

        virtual HRESULT get_TextureType(
            MsoTextureType *TextureType /Out/) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Type(
            MsoFillType *Type /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_GradientStops(
            ksoapi::GradientStops **GradientStops /Out/) = 0;

        virtual HRESULT get_TextureOffsetX(
            single *TextureOffsetX /Out/) = 0;

        virtual HRESULT put_TextureOffsetX(
            single TextureOffsetX) = 0;

        virtual HRESULT get_TextureOffsetY(
            single *TextureOffsetY /Out/) = 0;

        virtual HRESULT put_TextureOffsetY(
            single TextureOffsetY) = 0;

        virtual HRESULT get_TextureAlignment(
            MsoTextureAlignment *TextureAlignment /Out/) = 0;

        virtual HRESULT put_TextureAlignment(
            MsoTextureAlignment TextureAlignment) = 0;

        virtual HRESULT get_TextureHorizontalScale(
            single *HorizontalScale /Out/) = 0;

        virtual HRESULT put_TextureHorizontalScale(
            single HorizontalScale) = 0;

        virtual HRESULT get_TextureVerticalScale(
            single *VerticalScale /Out/) = 0;

        virtual HRESULT put_TextureVerticalScale(
            single VerticalScale) = 0;

        virtual HRESULT get_TextureTile(
            MsoTriState *TextureTile /Out/) = 0;

        virtual HRESULT put_TextureTile(
            MsoTriState TextureTile) = 0;

        virtual HRESULT get_RotateWithObject(
            MsoTriState *RotateWithObject /Out/) = 0;

        virtual HRESULT put_RotateWithObject(
            MsoTriState RotateWithObject) = 0;

        virtual HRESULT get_PictureEffects(
            ksoapi::PictureEffects **PictureEffects /Out/) = 0;

        virtual HRESULT get_GradientAngle(
            single *GradientAngle /Out/) = 0;

        virtual HRESULT put_GradientAngle(
            single GradientAngle) = 0;

    };
};
