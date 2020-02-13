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
    struct PictureFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT IncrementBrightness(
            single Increment) = 0;

        virtual HRESULT IncrementContrast(
            single Increment) = 0;

        virtual HRESULT get_Brightness(
            single *Brightness /Out/) = 0;

        virtual HRESULT put_Brightness(
            single Brightness) = 0;

        virtual HRESULT get_ColorType(
            MsoPictureColorType *ColorType /Out/) = 0;

        virtual HRESULT put_ColorType(
            MsoPictureColorType ColorType) = 0;

        virtual HRESULT get_Contrast(
            single *Contrast /Out/) = 0;

        virtual HRESULT put_Contrast(
            single Contrast) = 0;

        virtual HRESULT get_CropBottom(
            single *CropBottom /Out/) = 0;

        virtual HRESULT put_CropBottom(
            single CropBottom) = 0;

        virtual HRESULT get_CropLeft(
            single *CropLeft /Out/) = 0;

        virtual HRESULT put_CropLeft(
            single CropLeft) = 0;

        virtual HRESULT get_CropRight(
            single *CropRight /Out/) = 0;

        virtual HRESULT put_CropRight(
            single CropRight) = 0;

        virtual HRESULT get_CropTop(
            single *CropTop /Out/) = 0;

        virtual HRESULT put_CropTop(
            single CropTop) = 0;

        virtual HRESULT get_TransparencyColor(
            MsoRGBType *TransparencyColor /Out/) = 0;

        virtual HRESULT put_TransparencyColor(
            MsoRGBType TransparencyColor) = 0;

        virtual HRESULT get_TransparentBackground(
            MsoTriState *TransparentBackground /Out/) = 0;

        virtual HRESULT put_TransparentBackground(
            MsoTriState TransparentBackground) = 0;

        virtual HRESULT get_Crop(
            ksoapi::Crop **Crop /Out/) = 0;

    };
};
