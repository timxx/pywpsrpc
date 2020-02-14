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
    struct ChartFillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Solid() = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT get_BackColor(
            ChartColorFormat **RHS /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ChartColorFormat **RHS /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *RHS /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT OneColorGradient(
            MsoGradientStyle Style,
            long Variant,
            single Degree) = 0;

        virtual HRESULT get_GradientColorType(
            MsoGradientColorType *RHS /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            MsoGradientStyle *RHS /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *RHS /Out/) = 0;

        virtual HRESULT Patterned(
            MsoPatternType Pattern) = 0;

        virtual HRESULT PresetGradient(
            MsoGradientStyle Style,
            long Variant,
            MsoPresetGradientType PresetGradientType) = 0;

        virtual HRESULT get_PresetGradientType(
            MsoPresetGradientType *RHS /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            MsoPresetTexture *RHS /Out/) = 0;

        virtual HRESULT PresetTextured(
            MsoPresetTexture PresetTexture) = 0;

        virtual HRESULT get_TextureType(
            MsoTextureType *RHS /Out/) = 0;

        virtual HRESULT TwoColorGradient(
            MsoGradientStyle Style,
            long Variant) = 0;

        virtual HRESULT get_Type(
            MsoFillType *RHS /Out/) = 0;

        virtual HRESULT UserPicture(
            VARIANT PictureFile = argMissing2(),
            VARIANT PictureFormat = argMissing2(),
            VARIANT PictureStackUnit = argMissing2(),
            VARIANT PicturePlacement = argMissing2()) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState RHS) = 0;

    };
};
