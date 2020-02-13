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
    struct IPlotArea : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Border(
            Border **RHS /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **RHS /Out/) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get__InsideLeft(
            double *RHS /Out/) = 0;

        virtual HRESULT get__InsideTop(
            double *RHS /Out/) = 0;

        virtual HRESULT get__InsideWidth(
            double *RHS /Out/) = 0;

        virtual HRESULT get__InsideHeight(
            double *RHS /Out/) = 0;

        virtual HRESULT get_InsideLeft(
            double *RHS /Out/) = 0;

        virtual HRESULT put_InsideLeft(
            double RHS) = 0;

        virtual HRESULT get_InsideTop(
            double *RHS /Out/) = 0;

        virtual HRESULT put_InsideTop(
            double RHS) = 0;

        virtual HRESULT get_InsideWidth(
            double *RHS /Out/) = 0;

        virtual HRESULT put_InsideWidth(
            double RHS) = 0;

        virtual HRESULT get_InsideHeight(
            double *RHS /Out/) = 0;

        virtual HRESULT put_InsideHeight(
            double RHS) = 0;

        virtual HRESULT get_Position(
            XlChartElementPosition *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            XlChartElementPosition RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **RHS /Out/) = 0;

    };
};
