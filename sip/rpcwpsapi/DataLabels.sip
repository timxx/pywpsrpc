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
    struct DataLabels : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT prop) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT prop) = 0;

        virtual HRESULT get_ReadingOrder(
            long *prop /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long prop) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_AutoText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoText(
            VARIANT_BOOL prop) = 0;

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

        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Type(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Type(
            VARIANT prop) = 0;

        virtual HRESULT get_Position(
            XlDataLabelPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            XlDataLabelPosition prop) = 0;

        virtual HRESULT get_ShowSeriesName(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowSeriesName(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowCategoryName(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowCategoryName(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowValue(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowValue(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowPercentage(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowPercentage(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowBubbleSize(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowBubbleSize(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Separator(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Separator(
            VARIANT prop) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            DataLabel **prop /Out/) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index,
            DataLabel **prop /Out/) = 0;

        virtual HRESULT Propagate(
            VARIANT Index) = 0;

        virtual HRESULT get_ShowRange(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowRange(
            VARIANT_BOOL prop) = 0;

    };
};
