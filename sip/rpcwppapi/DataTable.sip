/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct DataTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasBorderHorizontal(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasBorderHorizontal(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasBorderVertical(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasBorderVertical(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasBorderOutline(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasBorderOutline(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **ppLine /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **pfont /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

    };
};
