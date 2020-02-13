/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IAxis : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_AxisBetweenCategories(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AxisBetweenCategories(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AxisGroup(
            XlAxisGroup *RHS /Out/) = 0;

        virtual HRESULT get_AxisTitle(
            AxisTitle **RHS /Out/) = 0;

        virtual HRESULT get_Border(
            Border **RHS /Out/) = 0;

        virtual HRESULT get_CategoryNames(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CategoryNames(
            VARIANT RHS) = 0;

        virtual HRESULT get_Crosses(
            XlAxisCrosses *RHS /Out/) = 0;

        virtual HRESULT put_Crosses(
            XlAxisCrosses RHS) = 0;

        virtual HRESULT get_CrossesAt(
            double *RHS /Out/) = 0;

        virtual HRESULT put_CrossesAt(
            double RHS) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_HasMajorGridlines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasMajorGridlines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasMinorGridlines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasMinorGridlines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasTitle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasTitle(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MajorGridlines(
            Gridlines **RHS /Out/) = 0;

        virtual HRESULT get_MajorTickMark(
            XlTickMark *RHS /Out/) = 0;

        virtual HRESULT put_MajorTickMark(
            XlTickMark RHS) = 0;

        virtual HRESULT get_MajorUnit(
            double *RHS /Out/) = 0;

        virtual HRESULT put_MajorUnit(
            double RHS) = 0;

        virtual HRESULT get_MajorUnitIsAuto(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MajorUnitIsAuto(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MaximumScale(
            double *RHS /Out/) = 0;

        virtual HRESULT put_MaximumScale(
            double RHS) = 0;

        virtual HRESULT get_MaximumScaleIsAuto(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MaximumScaleIsAuto(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MinimumScale(
            double *RHS /Out/) = 0;

        virtual HRESULT put_MinimumScale(
            double RHS) = 0;

        virtual HRESULT get_MinimumScaleIsAuto(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MinimumScaleIsAuto(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MinorGridlines(
            Gridlines **RHS /Out/) = 0;

        virtual HRESULT get_MinorTickMark(
            XlTickMark *RHS /Out/) = 0;

        virtual HRESULT put_MinorTickMark(
            XlTickMark RHS) = 0;

        virtual HRESULT get_MinorUnit(
            double *RHS /Out/) = 0;

        virtual HRESULT put_MinorUnit(
            double RHS) = 0;

        virtual HRESULT get_MinorUnitIsAuto(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MinorUnitIsAuto(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ReversePlotOrder(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ReversePlotOrder(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ScaleType(
            XlScaleType *RHS /Out/) = 0;

        virtual HRESULT put_ScaleType(
            XlScaleType RHS) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_TickLabelPosition(
            XlTickLabelPosition *RHS /Out/) = 0;

        virtual HRESULT put_TickLabelPosition(
            XlTickLabelPosition RHS) = 0;

        virtual HRESULT get_TickLabels(
            TickLabels **RHS /Out/) = 0;

        virtual HRESULT get_TickLabelSpacing(
            long *RHS /Out/) = 0;

        virtual HRESULT put_TickLabelSpacing(
            long RHS) = 0;

        virtual HRESULT get_TickMarkSpacing(
            long *RHS /Out/) = 0;

        virtual HRESULT put_TickMarkSpacing(
            long RHS) = 0;

        virtual HRESULT get_Type(
            XlAxisType *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            XlAxisType RHS) = 0;

        virtual HRESULT get_BaseUnit(
            XlTimeUnit *RHS /Out/) = 0;

        virtual HRESULT put_BaseUnit(
            XlTimeUnit RHS) = 0;

        virtual HRESULT get_BaseUnitIsAuto(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BaseUnitIsAuto(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MajorUnitScale(
            XlTimeUnit *RHS /Out/) = 0;

        virtual HRESULT put_MajorUnitScale(
            XlTimeUnit RHS) = 0;

        virtual HRESULT get_MinorUnitScale(
            XlTimeUnit *RHS /Out/) = 0;

        virtual HRESULT put_MinorUnitScale(
            XlTimeUnit RHS) = 0;

        virtual HRESULT get_CategoryType(
            XlCategoryType *RHS /Out/) = 0;

        virtual HRESULT put_CategoryType(
            XlCategoryType RHS) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT get_DisplayUnit(
            XlDisplayUnit *RHS /Out/) = 0;

        virtual HRESULT put_DisplayUnit(
            XlDisplayUnit RHS) = 0;

        virtual HRESULT get_DisplayUnitCustom(
            double *RHS /Out/) = 0;

        virtual HRESULT put_DisplayUnitCustom(
            double RHS) = 0;

        virtual HRESULT get_HasDisplayUnitLabel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasDisplayUnitLabel(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayUnitLabel(
            DisplayUnitLabel **RHS /Out/) = 0;

        virtual HRESULT get_LogBase(
            double *RHS /Out/) = 0;

        virtual HRESULT put_LogBase(
            double RHS) = 0;

        virtual HRESULT get_TickLabelSpacingIsAuto(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TickLabelSpacingIsAuto(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **RHS /Out/) = 0;

    };
};
