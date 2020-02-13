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
    struct LineFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_BackColor(
            ColorFormat **BackColor /Out/) = 0;

        virtual HRESULT put_BackColor(
            ColorFormat *BackColor) = 0;

        virtual HRESULT get_BeginArrowheadLength(
            MsoArrowheadLength *BeginArrowheadLength /Out/) = 0;

        virtual HRESULT put_BeginArrowheadLength(
            MsoArrowheadLength BeginArrowheadLength) = 0;

        virtual HRESULT get_BeginArrowheadStyle(
            MsoArrowheadStyle *BeginArrowheadStyle /Out/) = 0;

        virtual HRESULT put_BeginArrowheadStyle(
            MsoArrowheadStyle BeginArrowheadStyle) = 0;

        virtual HRESULT get_BeginArrowheadWidth(
            MsoArrowheadWidth *BeginArrowheadWidth /Out/) = 0;

        virtual HRESULT put_BeginArrowheadWidth(
            MsoArrowheadWidth BeginArrowheadWidth) = 0;

        virtual HRESULT get_DashStyle(
            MsoLineDashStyle *DashStyle /Out/) = 0;

        virtual HRESULT put_DashStyle(
            MsoLineDashStyle DashStyle) = 0;

        virtual HRESULT get_EndArrowheadLength(
            MsoArrowheadLength *EndArrowheadLength /Out/) = 0;

        virtual HRESULT put_EndArrowheadLength(
            MsoArrowheadLength EndArrowheadLength) = 0;

        virtual HRESULT get_EndArrowheadStyle(
            MsoArrowheadStyle *EndArrowheadStyle /Out/) = 0;

        virtual HRESULT put_EndArrowheadStyle(
            MsoArrowheadStyle EndArrowheadStyle) = 0;

        virtual HRESULT get_EndArrowheadWidth(
            MsoArrowheadWidth *EndArrowheadWidth /Out/) = 0;

        virtual HRESULT put_EndArrowheadWidth(
            MsoArrowheadWidth EndArrowheadWidth) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **ForeColor /Out/) = 0;

        virtual HRESULT put_ForeColor(
            ColorFormat *ForeColor) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *Pattern /Out/) = 0;

        virtual HRESULT put_Pattern(
            MsoPatternType Pattern) = 0;

        virtual HRESULT get_Style(
            MsoLineStyle *Style /Out/) = 0;

        virtual HRESULT put_Style(
            MsoLineStyle Style) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Weight(
            single *Weight /Out/) = 0;

        virtual HRESULT put_Weight(
            single Weight) = 0;

        virtual HRESULT get_InsetPen(
            MsoTriState *InsetPen /Out/) = 0;

        virtual HRESULT put_InsetPen(
            MsoTriState InsetPen) = 0;

    };
};
