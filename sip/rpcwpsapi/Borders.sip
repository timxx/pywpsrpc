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
    struct Borders : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Enable(
            long *prop /Out/) = 0;

        virtual HRESULT put_Enable(
            long prop) = 0;

        virtual HRESULT get_DistanceFromTop(
            long *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromTop(
            long prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_InsideLineStyle(
            WdLineStyle *prop /Out/) = 0;

        virtual HRESULT put_InsideLineStyle(
            WdLineStyle prop) = 0;

        virtual HRESULT get_OutsideLineStyle(
            WdLineStyle *prop /Out/) = 0;

        virtual HRESULT put_OutsideLineStyle(
            WdLineStyle prop) = 0;

        virtual HRESULT get_InsideLineWidth(
            WdLineWidth *prop /Out/) = 0;

        virtual HRESULT put_InsideLineWidth(
            WdLineWidth prop) = 0;

        virtual HRESULT get_OutsideLineWidth(
            WdLineWidth *prop /Out/) = 0;

        virtual HRESULT put_OutsideLineWidth(
            WdLineWidth prop) = 0;

        virtual HRESULT get_InsideColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_InsideColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_OutsideColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_OutsideColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_DistanceFromLeft(
            long *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromLeft(
            long prop) = 0;

        virtual HRESULT get_DistanceFromBottom(
            long *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromBottom(
            long prop) = 0;

        virtual HRESULT get_DistanceFromRight(
            long *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromRight(
            long prop) = 0;

        virtual HRESULT get_AlwaysInFront(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlwaysInFront(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SurroundHeader(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SurroundHeader(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SurroundFooter(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SurroundFooter(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_JoinBorders(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_JoinBorders(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasHorizontal(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_HasVertical(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_DistanceFrom(
            WdBorderDistanceFrom *prop /Out/) = 0;

        virtual HRESULT put_DistanceFrom(
            WdBorderDistanceFrom prop) = 0;

        virtual HRESULT get_EnableFirstPageInSection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableFirstPageInSection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnableOtherPagesInSection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableOtherPagesInSection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Item(
            WdBorderType Index,
            Border **prop /Out/) = 0;

        virtual HRESULT ApplyPageBordersToAllSections() = 0;

        virtual HRESULT get_InsideColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_InsideColor(
            WdColor prop) = 0;

        virtual HRESULT get_OutsideColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_OutsideColor(
            WdColor prop) = 0;
    };

    struct Border : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

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