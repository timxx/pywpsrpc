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
    struct TextFrame : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_MarginBottom(
            single *prop /Out/) = 0;

        virtual HRESULT put_MarginBottom(
            single prop) = 0;

        virtual HRESULT get_MarginLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_MarginLeft(
            single prop) = 0;

        virtual HRESULT get_MarginRight(
            single *prop /Out/) = 0;

        virtual HRESULT put_MarginRight(
            single prop) = 0;

        virtual HRESULT get_MarginTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_MarginTop(
            single prop) = 0;

        virtual HRESULT get_Orientation(
            MsoTextOrientation *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            MsoTextOrientation prop) = 0;

        virtual HRESULT get_TextRange(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ContainingRange(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Next(
            TextFrame **prop /Out/) = 0;

        virtual HRESULT put_Next(
            TextFrame *prop) = 0;

        virtual HRESULT get_Previous(
            TextFrame **prop /Out/) = 0;

        virtual HRESULT put_Previous(
            TextFrame *prop) = 0;

        virtual HRESULT get_Overflowing(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_HasText(
            long *prop /Out/) = 0;

        virtual HRESULT BreakForwardLink() = 0;

        virtual HRESULT ValidLinkTarget(
            TextFrame *TargetTextFrame,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_AutoSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_AutoSize(
            long prop) = 0;

        virtual HRESULT get_WordWrap(
            long *prop /Out/) = 0;

        virtual HRESULT put_WordWrap(
            long prop) = 0;

        virtual HRESULT get_VerticalAnchor(
            MsoVerticalAnchor *prop /Out/) = 0;

        virtual HRESULT put_VerticalAnchor(
            MsoVerticalAnchor prop) = 0;

        virtual HRESULT get_HorizontalAnchor(
            MsoHorizontalAnchor *prop /Out/) = 0;

        virtual HRESULT put_HorizontalAnchor(
            MsoHorizontalAnchor prop) = 0;

        virtual HRESULT get_PathFormat(
            MsoPathFormat *prop /Out/) = 0;

        virtual HRESULT put_PathFormat(
            MsoPathFormat prop) = 0;

        virtual HRESULT get_WarpFormat(
            MsoWarpFormat *prop /Out/) = 0;

        virtual HRESULT put_WarpFormat(
            MsoWarpFormat prop) = 0;

        virtual HRESULT get_Column(
            ksoapi::TextColumn2 **prop /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **prop /Out/) = 0;

        virtual HRESULT get_NoTextRotation(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_NoTextRotation(
            MsoTriState prop) = 0;

        virtual HRESULT DeleteText() = 0;

    };
};
