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
    struct IMsoChartArea : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *bstr /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT Clear(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT ClearContents(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **ppfont /Out/) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *pf /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL pf) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT get_Height(
            double *pd /Out/) = 0;

        virtual HRESULT put_Height(
            double pd) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **ppinterior /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_Left(
            double *pd /Out/) = 0;

        virtual HRESULT put_Left(
            double pd) = 0;

        virtual HRESULT get_Top(
            double *pd /Out/) = 0;

        virtual HRESULT put_Top(
            double pd) = 0;

        virtual HRESULT get_Width(
            double *pd /Out/) = 0;

        virtual HRESULT put_Width(
            double pd) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT pvar) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_RoundedCorners(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_RoundedCorners(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

    };
};
