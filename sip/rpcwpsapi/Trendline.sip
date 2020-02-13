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
    struct Trendline : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Backward(
            double *prop /Out/) = 0;

        virtual HRESULT put_Backward(
            double prop) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_DataLabel(
            DataLabel **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_DisplayEquation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayEquation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayRSquared(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayRSquared(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Forward(
            double *prop /Out/) = 0;

        virtual HRESULT put_Forward(
            double prop) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Intercept(
            double *prop /Out/) = 0;

        virtual HRESULT put_Intercept(
            double prop) = 0;

        virtual HRESULT get_InterceptIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_InterceptIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_NameIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NameIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Order(
            long *prop /Out/) = 0;

        virtual HRESULT put_Order(
            long prop) = 0;

        virtual HRESULT get_Period(
            long *prop /Out/) = 0;

        virtual HRESULT put_Period(
            long prop) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Type(
            XlTrendlineType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            XlTrendlineType prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Backward2(
            double *prop /Out/) = 0;

        virtual HRESULT put_Backward2(
            double prop) = 0;

        virtual HRESULT get_Forward2(
            double *prop /Out/) = 0;

        virtual HRESULT put_Forward2(
            double prop) = 0;

    };
};
