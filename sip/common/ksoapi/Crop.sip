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
    struct Crop : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_PictureOffsetX(
            single *PictureOffsetX /Out/) = 0;

        virtual HRESULT put_PictureOffsetX(
            single PictureOffsetX) = 0;

        virtual HRESULT get_PictureOffsetY(
            single *PictureOffsetY /Out/) = 0;

        virtual HRESULT put_PictureOffsetY(
            single PictureOffsetY) = 0;

        virtual HRESULT get_PictureWidth(
            single *PictureWidth /Out/) = 0;

        virtual HRESULT put_PictureWidth(
            single PictureWidth) = 0;

        virtual HRESULT get_PictureHeight(
            single *PictureHeight /Out/) = 0;

        virtual HRESULT put_PictureHeight(
            single PictureHeight) = 0;

        virtual HRESULT get_ShapeLeft(
            single *ShapeLeft /Out/) = 0;

        virtual HRESULT put_ShapeLeft(
            single ShapeLeft) = 0;

        virtual HRESULT get_ShapeTop(
            single *ShapeTop /Out/) = 0;

        virtual HRESULT put_ShapeTop(
            single ShapeTop) = 0;

        virtual HRESULT get_ShapeWidth(
            single *ShapeWidth /Out/) = 0;

        virtual HRESULT put_ShapeWidth(
            single ShapeWidth) = 0;

        virtual HRESULT get_ShapeHeight(
            single *ShapeHeight /Out/) = 0;

        virtual HRESULT put_ShapeHeight(
            single ShapeHeight) = 0;
    };
};