/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct ChartFillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT OneColorGradient(
            int Style,
            int Variant,
            single Degree) = 0;

        virtual HRESULT TwoColorGradient(
            int Style,
            int Variant) = 0;

        virtual HRESULT PresetTextured(
            int PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT Patterned(
            int Pattern) = 0;

        virtual HRESULT UserPicture(
            VARIANT PictureFile,
            VARIANT PictureFormat,
            VARIANT PictureStackUnit,
            VARIANT PicturePlacement) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT PresetGradient(
            int Style,
            int Variant,
            int PresetGradientType) = 0;

        virtual HRESULT get_BackColor(
            ChartColorFormat **pval /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ChartColorFormat **pval /Out/) = 0;

        virtual HRESULT get_GradientColorType(
            int *pval /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *pval /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            int *pval /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            int *pval /Out/) = 0;

        virtual HRESULT get_Pattern(
            int *pval /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            int *pval /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            int *pval /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *pval /Out/) = 0;

        virtual HRESULT get_TextureType(
            int *pval /Out/) = 0;

        virtual HRESULT get_Type(
            int *pval /Out/) = 0;

        virtual HRESULT put_Visible(
            int pval) = 0;

        virtual HRESULT get_Visible(
            int *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

    };
};
