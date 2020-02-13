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
    struct PlotArea : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT ClearFormats(
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

        virtual HRESULT get_InsideLeft(
            double *prop /Out/) = 0;

        virtual HRESULT put_InsideLeft(
            double prop) = 0;

        virtual HRESULT get_InsideTop(
            double *prop /Out/) = 0;

        virtual HRESULT put_InsideTop(
            double prop) = 0;

        virtual HRESULT get_InsideWidth(
            double *prop /Out/) = 0;

        virtual HRESULT put_InsideWidth(
            double prop) = 0;

        virtual HRESULT get_InsideHeight(
            double *prop /Out/) = 0;

        virtual HRESULT put_InsideHeight(
            double prop) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

    };
};
