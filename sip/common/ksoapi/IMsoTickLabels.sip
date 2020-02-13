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
    struct IMsoTickLabels : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **ppval /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pval /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *pval /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR pval) = 0;

        virtual HRESULT get_NumberFormatLinked(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_NumberFormatLinked(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT pval) = 0;

        virtual HRESULT get_Orientation(
            XlTickLabelOrientation *pval /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlTickLabelOrientation pval) = 0;

        virtual HRESULT Select(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            int *pval /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            int pval) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT pval) = 0;

        virtual HRESULT get_Depth(
            int *pval /Out/) = 0;

        virtual HRESULT get_Offset(
            int *pval /Out/) = 0;

        virtual HRESULT put_Offset(
            int pval) = 0;

        virtual HRESULT get_Alignment(
            int *pval /Out/) = 0;

        virtual HRESULT put_Alignment(
            int pval) = 0;

        virtual HRESULT get_MultiLevel(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MultiLevel(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

    };
};
