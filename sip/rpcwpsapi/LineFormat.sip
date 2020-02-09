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
    struct LineFormat : public IDispatch /Abstract/
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

        virtual HRESULT get_BackColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_BeginArrowheadLength(
            MsoArrowheadLength *prop /Out/) = 0;

        virtual HRESULT put_BeginArrowheadLength(
            MsoArrowheadLength prop) = 0;

        virtual HRESULT get_BeginArrowheadStyle(
            MsoArrowheadStyle *prop /Out/) = 0;

        virtual HRESULT put_BeginArrowheadStyle(
            MsoArrowheadStyle prop) = 0;

        virtual HRESULT get_BeginArrowheadWidth(
            MsoArrowheadWidth *prop /Out/) = 0;

        virtual HRESULT put_BeginArrowheadWidth(
            MsoArrowheadWidth prop) = 0;

        virtual HRESULT get_DashStyle(
            MsoLineDashStyle *prop /Out/) = 0;

        virtual HRESULT put_DashStyle(
            MsoLineDashStyle prop) = 0;

        virtual HRESULT get_EndArrowheadLength(
            MsoArrowheadLength *prop /Out/) = 0;

        virtual HRESULT put_EndArrowheadLength(
            MsoArrowheadLength prop) = 0;

        virtual HRESULT get_EndArrowheadStyle(
            MsoArrowheadStyle *prop /Out/) = 0;

        virtual HRESULT put_EndArrowheadStyle(
            MsoArrowheadStyle prop) = 0;

        virtual HRESULT get_EndArrowheadWidth(
            MsoArrowheadWidth *prop /Out/) = 0;

        virtual HRESULT put_EndArrowheadWidth(
            MsoArrowheadWidth prop) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *prop /Out/) = 0;

        virtual HRESULT put_Pattern(
            MsoPatternType prop) = 0;

        virtual HRESULT get_Style(
            MsoLineStyle *prop /Out/) = 0;

        virtual HRESULT put_Style(
            MsoLineStyle prop) = 0;

        virtual HRESULT get_Transparency(
            single *prop /Out/) = 0;

        virtual HRESULT put_Transparency(
            single prop) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT get_Weight(
            single *prop /Out/) = 0;

        virtual HRESULT put_Weight(
            single prop) = 0;

        virtual HRESULT get_InsetPen(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_InsetPen(
            MsoTriState prop) = 0;
    };
};