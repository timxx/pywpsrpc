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
    struct TickLabels : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR prop) = 0;

        virtual HRESULT get_NumberFormatLinked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NumberFormatLinked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT prop) = 0;

        virtual HRESULT get_Orientation(
            XlTickLabelOrientation *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlTickLabelOrientation prop) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            long *prop /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long prop) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Depth(
            long *prop /Out/) = 0;

        virtual HRESULT get_Offset(
            long *prop /Out/) = 0;

        virtual HRESULT put_Offset(
            long prop) = 0;

        virtual HRESULT get_Alignment(
            long *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            long prop) = 0;

        virtual HRESULT get_MultiLevel(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MultiLevel(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

    };
};
