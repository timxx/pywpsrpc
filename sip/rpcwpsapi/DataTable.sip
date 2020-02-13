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
    struct DataTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasBorderHorizontal(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasBorderHorizontal(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasBorderVertical(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasBorderVertical(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasBorderOutline(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasBorderOutline(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

    };
};
