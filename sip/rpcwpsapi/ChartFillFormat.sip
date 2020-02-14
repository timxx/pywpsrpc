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
    struct ChartFillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT OneColorGradient(
            MsoGradientStyle Style,
            long Variant,
            single Degree) = 0;

        virtual HRESULT TwoColorGradient(
            MsoGradientStyle Style,
            long Variant) = 0;

        virtual HRESULT PresetTextured(
            MsoPresetTexture PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT Patterned(
            MsoPatternType Pattern) = 0;

        virtual HRESULT UserPicture(
            VARIANT PictureFile = argMissing2(),
            VARIANT PictureFormat = argMissing2(),
            VARIANT PictureStackUnit = argMissing2(),
            VARIANT PicturePlacement = argMissing2()) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT PresetGradient(
            MsoGradientStyle Style,
            long Variant,
            MsoPresetGradientType PresetGradientType) = 0;

        virtual HRESULT get_BackColor(
            ChartColorFormat **prop /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ChartColorFormat **prop /Out/) = 0;

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

        virtual HRESULT get_Type(
            MsoFillType *prop /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

    };
};
