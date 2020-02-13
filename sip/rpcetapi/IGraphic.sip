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
    struct IGraphic : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Brightness(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Brightness(
            single RHS) = 0;

        virtual HRESULT get_ColorType(
           MsoPictureColorType *RHS /Out/) = 0;

        virtual HRESULT put_ColorType(
            MsoPictureColorType RHS) = 0;

        virtual HRESULT get_Contrast(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Contrast(
            single RHS) = 0;

        virtual HRESULT get_CropBottom(
            single *RHS /Out/) = 0;

        virtual HRESULT put_CropBottom(
            single RHS) = 0;

        virtual HRESULT get_CropLeft(
            single *RHS /Out/) = 0;

        virtual HRESULT put_CropLeft(
            single RHS) = 0;

        virtual HRESULT get_CropRight(
            single *RHS /Out/) = 0;

        virtual HRESULT put_CropRight(
            single RHS) = 0;

        virtual HRESULT get_CropTop(
            single *RHS /Out/) = 0;

        virtual HRESULT put_CropTop(
            single RHS) = 0;

        virtual HRESULT get_Filename(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Filename(
            BSTR RHS) = 0;

        virtual HRESULT get_Height(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            single RHS) = 0;

        virtual HRESULT get_LockAspectRatio(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_LockAspectRatio(
            MsoTriState RHS) = 0;

        virtual HRESULT get_Width(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            single RHS) = 0;

    };
};
