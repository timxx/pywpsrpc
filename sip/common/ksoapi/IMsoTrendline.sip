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
    struct IMsoTrendline : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Backward(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Backward(
            double RHS) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **RHS /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_DataLabel(
            IMsoDataLabel **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_DisplayEquation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayEquation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayRSquared(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayRSquared(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Forward(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Forward(
            double RHS) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Intercept(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Intercept(
            double RHS) = 0;

        virtual HRESULT get_InterceptIsAuto(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InterceptIsAuto(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_NameIsAuto(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_NameIsAuto(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Order(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Order(
            long RHS) = 0;

        virtual HRESULT get_Period(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Period(
            long RHS) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Type(
            XlTrendlineType *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            XlTrendlineType RHS) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Backward2(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Backward2(
            double RHS) = 0;

        virtual HRESULT get_Forward2(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Forward2(
            double RHS) = 0;

    };
};
