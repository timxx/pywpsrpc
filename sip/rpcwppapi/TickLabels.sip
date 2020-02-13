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
    struct TickLabels : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **ppval /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR RHS) = 0;

        virtual HRESULT get_NumberFormatLinked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLinked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_Orientation(
            XlTickLabelOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlTickLabelOrientation RHS) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_Depth(
            int *RHS /Out/) = 0;

        virtual HRESULT get_Offset(
            int *RHS /Out/) = 0;

        virtual HRESULT put_Offset(
            int RHS) = 0;

        virtual HRESULT get_MultiLevel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MultiLevel(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Creator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Alignment(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Alignment(
            long RHS) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

    };
};
