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
    struct ISparklineGroup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            Sparkline **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get_Location(
            Range **RHS /Out/) = 0;

        virtual HRESULT putref_Location(
            Range *RHS) = 0;

        virtual HRESULT get_SourceData(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceData(
            BSTR RHS) = 0;

        virtual HRESULT get_DateRange(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_DateRange(
            BSTR RHS) = 0;

        virtual HRESULT ModifyLocation(
            Range *Location) = 0;

        virtual HRESULT ModifySourceData(
            BSTR SourceData) = 0;

        virtual HRESULT Modify(
            Range *Location,
            BSTR SourceData) = 0;

        virtual HRESULT ModifyDateRange(
            BSTR DateRange) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Type(
            XlSparkType *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            XlSparkType RHS) = 0;

        virtual HRESULT get_SeriesColor(
            FormatColor **RHS /Out/) = 0;

        virtual HRESULT get_Points(
            SparkPoints **RHS /Out/) = 0;

        virtual HRESULT get_Axes(
            SparkAxes **RHS /Out/) = 0;

        virtual HRESULT get_DisplayBlanksAs(
            XlDisplayBlanksAs *RHS /Out/) = 0;

        virtual HRESULT put_DisplayBlanksAs(
            XlDisplayBlanksAs RHS) = 0;

        virtual HRESULT get_DisplayHidden(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHidden(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LineWeight(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_LineWeight(
            VARIANT RHS) = 0;

        virtual HRESULT get_PlotBy(
            XlSparklineRowCol *RHS /Out/) = 0;

        virtual HRESULT put_PlotBy(
            XlSparklineRowCol RHS) = 0;

    };
};
