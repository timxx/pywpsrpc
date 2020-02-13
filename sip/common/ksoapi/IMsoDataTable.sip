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
    struct IMsoDataTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT put_HasBorderHorizontal(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_HasBorderHorizontal(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT put_HasBorderVertical(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_HasBorderVertical(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT put_HasBorderOutline(
            VARIANT_BOOL pfVisible) = 0;

        virtual HRESULT get_HasBorderOutline(
            VARIANT_BOOL *pfVisible /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppline /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **pfont /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

    };
};
