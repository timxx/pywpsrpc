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
    struct Shading : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ForegroundPatternColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ForegroundPatternColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_BackgroundPatternColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_BackgroundPatternColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_Texture(
            WdTextureIndex *prop /Out/) = 0;

        virtual HRESULT put_Texture(
            WdTextureIndex prop) = 0;

        virtual HRESULT get_ForegroundPatternColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_ForegroundPatternColor(
            WdColor prop) = 0;

        virtual HRESULT get_BackgroundPatternColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_BackgroundPatternColor(
            WdColor prop) = 0;

    };
};
