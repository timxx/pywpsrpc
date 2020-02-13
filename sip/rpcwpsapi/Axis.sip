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
    struct Axis : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_AxisBetweenCategories(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AxisBetweenCategories(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AxisGroup(
            XlAxisGroup *prop /Out/) = 0;

        virtual HRESULT get_AxisTitle(
            AxisTitle **prop /Out/) = 0;

        virtual HRESULT get_CategoryNames(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_CategoryNames(
            VARIANT prop) = 0;

        virtual HRESULT get_Crosses(
            XlAxisCrosses *prop /Out/) = 0;

        virtual HRESULT put_Crosses(
            XlAxisCrosses prop) = 0;

        virtual HRESULT get_CrossesAt(
            double *prop /Out/) = 0;

        virtual HRESULT put_CrossesAt(
            double prop) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_HasMajorGridlines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasMajorGridlines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasMinorGridlines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasMinorGridlines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasTitle(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasTitle(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MajorGridlines(
            Gridlines **prop /Out/) = 0;

        virtual HRESULT get_MajorTickMark(
            XlTickMark *prop /Out/) = 0;

        virtual HRESULT put_MajorTickMark(
            XlTickMark prop) = 0;

        virtual HRESULT get_MajorUnit(
            double *prop /Out/) = 0;

        virtual HRESULT put_MajorUnit(
            double prop) = 0;

        virtual HRESULT get_LogBase(
            double *prop /Out/) = 0;

        virtual HRESULT put_LogBase(
            double prop) = 0;

        virtual HRESULT get_TickLabelSpacingIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TickLabelSpacingIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MajorUnitIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MajorUnitIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MaximumScale(
            double *prop /Out/) = 0;

        virtual HRESULT put_MaximumScale(
            double prop) = 0;

        virtual HRESULT get_MaximumScaleIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MaximumScaleIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MinimumScale(
            double *prop /Out/) = 0;

        virtual HRESULT put_MinimumScale(
            double prop) = 0;

        virtual HRESULT get_MinimumScaleIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MinimumScaleIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MinorGridlines(
            Gridlines **prop /Out/) = 0;

        virtual HRESULT get_MinorTickMark(
            XlTickMark *prop /Out/) = 0;

        virtual HRESULT put_MinorTickMark(
            XlTickMark prop) = 0;

        virtual HRESULT get_MinorUnit(
            double *prop /Out/) = 0;

        virtual HRESULT put_MinorUnit(
            double prop) = 0;

        virtual HRESULT get_MinorUnitIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MinorUnitIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReversePlotOrder(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReversePlotOrder(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ScaleType(
            XlScaleType *prop /Out/) = 0;

        virtual HRESULT put_ScaleType(
            XlScaleType prop) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_TickLabelPosition(
            XlTickLabelPosition *prop /Out/) = 0;

        virtual HRESULT put_TickLabelPosition(
            XlTickLabelPosition prop) = 0;

        virtual HRESULT get_TickLabels(
            TickLabels **prop /Out/) = 0;

        virtual HRESULT get_TickLabelSpacing(
            long *prop /Out/) = 0;

        virtual HRESULT put_TickLabelSpacing(
            long prop) = 0;

        virtual HRESULT get_TickMarkSpacing(
            long *prop /Out/) = 0;

        virtual HRESULT put_TickMarkSpacing(
            long prop) = 0;

        virtual HRESULT get_Type(
            XlAxisType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            XlAxisType prop) = 0;

        virtual HRESULT get_BaseUnit(
            XlTimeUnit *prop /Out/) = 0;

        virtual HRESULT put_BaseUnit(
            XlTimeUnit prop) = 0;

        virtual HRESULT get_BaseUnitIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BaseUnitIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MajorUnitScale(
            XlTimeUnit *prop /Out/) = 0;

        virtual HRESULT put_MajorUnitScale(
            XlTimeUnit prop) = 0;

        virtual HRESULT get_MinorUnitScale(
            XlTimeUnit *prop /Out/) = 0;

        virtual HRESULT put_MinorUnitScale(
            XlTimeUnit prop) = 0;

        virtual HRESULT get_CategoryType(
            XlCategoryType *prop /Out/) = 0;

        virtual HRESULT put_CategoryType(
            XlCategoryType prop) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT get_DisplayUnit(
            XlDisplayUnit *prop /Out/) = 0;

        virtual HRESULT put_DisplayUnit(
            XlDisplayUnit prop) = 0;

        virtual HRESULT get_DisplayUnitCustom(
            double *prop /Out/) = 0;

        virtual HRESULT put_DisplayUnitCustom(
            double prop) = 0;

        virtual HRESULT get_HasDisplayUnitLabel(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasDisplayUnitLabel(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayUnitLabel(
            DisplayUnitLabel **prop /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

    };
};
