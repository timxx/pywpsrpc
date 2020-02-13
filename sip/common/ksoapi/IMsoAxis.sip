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
    struct IMsoAxis : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_AxisBetweenCategories(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_AxisBetweenCategories(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_AxisGroup(
            XlAxisGroup *pval /Out/) = 0;

        virtual HRESULT get_AxisTitle(
            IMsoAxisTitle **pval /Out/) = 0;

        virtual HRESULT get_CategoryNames(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_CategoryNames(
            VARIANT pval) = 0;

        virtual HRESULT get_Crosses(
            XlAxisCrosses *pval /Out/) = 0;

        virtual HRESULT put_Crosses(
            XlAxisCrosses pval) = 0;

        virtual HRESULT get_CrossesAt(
            double *pval /Out/) = 0;

        virtual HRESULT put_CrossesAt(
            double pval) = 0;

        virtual HRESULT Delete(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_HasMajorGridlines(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_HasMajorGridlines(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_HasMinorGridlines(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_HasMinorGridlines(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_HasTitle(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_HasTitle(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MajorGridlines(
            GridLines **ppval /Out/) = 0;

        virtual HRESULT get_MajorTickMark(
            XlTickMark *pval /Out/) = 0;

        virtual HRESULT put_MajorTickMark(
            XlTickMark pval) = 0;

        virtual HRESULT get_MajorUnit(
            double *pval /Out/) = 0;

        virtual HRESULT put_MajorUnit(
            double pval) = 0;

        virtual HRESULT get_LogBase(
            double *pval /Out/) = 0;

        virtual HRESULT put_LogBase(
            double pval) = 0;

        virtual HRESULT get_TickLabelSpacingIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_TickLabelSpacingIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MajorUnitIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MajorUnitIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MaximumScale(
            double *pval /Out/) = 0;

        virtual HRESULT put_MaximumScale(
            double pval) = 0;

        virtual HRESULT get_MaximumScaleIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MaximumScaleIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MinimumScale(
            double *pval /Out/) = 0;

        virtual HRESULT put_MinimumScale(
            double pval) = 0;

        virtual HRESULT get_MinimumScaleIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MinimumScaleIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MinorGridlines(
            GridLines **ppval /Out/) = 0;

        virtual HRESULT get_MinorTickMark(
            XlTickMark *pval /Out/) = 0;

        virtual HRESULT put_MinorTickMark(
            XlTickMark pval) = 0;

        virtual HRESULT get_MinorUnit(
            double *pval /Out/) = 0;

        virtual HRESULT put_MinorUnit(
            double pval) = 0;

        virtual HRESULT get_MinorUnitIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MinorUnitIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_ReversePlotOrder(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_ReversePlotOrder(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_ScaleType(
            XlScaleType *pval /Out/) = 0;

        virtual HRESULT put_ScaleType(
            XlScaleType pval) = 0;

        virtual HRESULT Select(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_TickLabelPosition(
            XlTickLabelPosition *pval /Out/) = 0;

        virtual HRESULT put_TickLabelPosition(
            XlTickLabelPosition pval) = 0;

        virtual HRESULT get_TickLabels(
            IMsoTickLabels **pval /Out/) = 0;

        virtual HRESULT get_TickLabelSpacing(
            int *pval /Out/) = 0;

        virtual HRESULT put_TickLabelSpacing(
            int pval) = 0;

        virtual HRESULT get_TickMarkSpacing(
            int *pval /Out/) = 0;

        virtual HRESULT put_TickMarkSpacing(
            int pval) = 0;

        virtual HRESULT get_Type(
            XlAxisType *pval /Out/) = 0;

        virtual HRESULT put_Type(
            XlAxisType pval) = 0;

        virtual HRESULT get_BaseUnit(
            XlTimeUnit *pval /Out/) = 0;

        virtual HRESULT put_BaseUnit(
            XlTimeUnit pval) = 0;

        virtual HRESULT get_BaseUnitIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_BaseUnitIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MajorUnitScale(
            XlTimeUnit *pval /Out/) = 0;

        virtual HRESULT put_MajorUnitScale(
            XlTimeUnit pval) = 0;

        virtual HRESULT get_MinorUnitScale(
            XlTimeUnit *pval /Out/) = 0;

        virtual HRESULT put_MinorUnitScale(
            XlTimeUnit pval) = 0;

        virtual HRESULT get_CategoryType(
            XlCategoryType *pval /Out/) = 0;

        virtual HRESULT put_CategoryType(
            XlCategoryType pval) = 0;

        virtual HRESULT get_Left(
            double *pval /Out/) = 0;

        virtual HRESULT get_Top(
            double *pval /Out/) = 0;

        virtual HRESULT get_Width(
            double *pval /Out/) = 0;

        virtual HRESULT get_Height(
            double *pval /Out/) = 0;

        virtual HRESULT get_DisplayUnit(
            XlDisplayUnit *pval /Out/) = 0;

        virtual HRESULT put_DisplayUnit(
            XlDisplayUnit pval) = 0;

        virtual HRESULT get_DisplayUnitCustom(
            double *pval /Out/) = 0;

        virtual HRESULT put_DisplayUnitCustom(
            double pval) = 0;

        virtual HRESULT get_HasDisplayUnitLabel(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_HasDisplayUnitLabel(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_DisplayUnitLabel(
            IMsoDisplayUnitLabel **pval /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

    };
};
