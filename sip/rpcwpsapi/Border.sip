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
    struct Border : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_Inside(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_LineStyle(
            WdLineStyle *prop /Out/) = 0;

        virtual HRESULT put_LineStyle(
            WdLineStyle prop) = 0;

        virtual HRESULT get_LineWidth(
            WdLineWidth *prop /Out/) = 0;

        virtual HRESULT put_LineWidth(
            WdLineWidth prop) = 0;

        virtual HRESULT get_ArtStyle(
            WdPageBorderArt *prop /Out/) = 0;

        virtual HRESULT put_ArtStyle(
            WdPageBorderArt prop) = 0;

        virtual HRESULT get_ArtWidth(
            long *prop /Out/) = 0;

        virtual HRESULT put_ArtWidth(
            long prop) = 0;

        virtual HRESULT get_Color(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_Color(
            WdColor prop) = 0;

    };
};
