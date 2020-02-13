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
    struct PictureFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Brightness(
            single *prop /Out/) = 0;

        virtual HRESULT put_Brightness(
            single prop) = 0;

        virtual HRESULT get_ColorType(
            MsoPictureColorType *prop /Out/) = 0;

        virtual HRESULT put_ColorType(
            MsoPictureColorType prop) = 0;

        virtual HRESULT get_Contrast(
            single *prop /Out/) = 0;

        virtual HRESULT put_Contrast(
            single prop) = 0;

        virtual HRESULT get_CropBottom(
            single *prop /Out/) = 0;

        virtual HRESULT put_CropBottom(
            single prop) = 0;

        virtual HRESULT get_CropLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_CropLeft(
            single prop) = 0;

        virtual HRESULT get_CropRight(
            single *prop /Out/) = 0;

        virtual HRESULT put_CropRight(
            single prop) = 0;

        virtual HRESULT get_CropTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_CropTop(
            single prop) = 0;

        virtual HRESULT get_TransparencyColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_TransparencyColor(
            long prop) = 0;

        virtual HRESULT get_TransparentBackground(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_TransparentBackground(
            MsoTriState prop) = 0;

        virtual HRESULT IncrementBrightness(
            single Increment) = 0;

        virtual HRESULT IncrementContrast(
            single Increment) = 0;

        virtual HRESULT get_Crop(
            ksoapi::Crop **prop /Out/) = 0;

        virtual HRESULT put_Crop(
            ksoapi::Crop *prop) = 0;

    };
};
