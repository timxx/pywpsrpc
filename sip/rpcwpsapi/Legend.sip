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
    struct Legend : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT LegendEntries(
            VARIANT Index = argMissing2(),
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Position(
            XlLegendPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            XlLegendPosition prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Clear(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT put_Height(
            double prop) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT put_Left(
            double prop) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT put_Top(
            double prop) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT put_Width(
            double prop) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_IncludeInLayout(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeInLayout(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

    };
};
