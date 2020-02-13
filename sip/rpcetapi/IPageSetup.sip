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
    struct IPageSetup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BlackAndWhite(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BlackAndWhite(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_BottomMargin(
            double *RHS /Out/) = 0;

        virtual HRESULT put_BottomMargin(
            double RHS) = 0;

        virtual HRESULT get_CenterFooter(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CenterFooter(
            BSTR RHS) = 0;

        virtual HRESULT get_CenterHeader(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CenterHeader(
            BSTR RHS) = 0;

        virtual HRESULT get_CenterHorizontally(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CenterHorizontally(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CenterVertically(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CenterVertically(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ChartSize(
            XlObjectSize *RHS /Out/) = 0;

        virtual HRESULT put_ChartSize(
            XlObjectSize RHS) = 0;

        virtual HRESULT get_Draft(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Draft(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FirstPageNumber(
            long *RHS /Out/) = 0;

        virtual HRESULT put_FirstPageNumber(
            long RHS) = 0;

        virtual HRESULT get_FitToPagesTall(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FitToPagesTall(
            VARIANT RHS) = 0;

        virtual HRESULT get_FitToPagesWide(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FitToPagesWide(
            VARIANT RHS) = 0;

        virtual HRESULT get_FooterMargin(
            double *RHS /Out/) = 0;

        virtual HRESULT put_FooterMargin(
            double RHS) = 0;

        virtual HRESULT get_HeaderMargin(
            double *RHS /Out/) = 0;

        virtual HRESULT put_HeaderMargin(
            double RHS) = 0;

        virtual HRESULT get_LeftFooter(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_LeftFooter(
            BSTR RHS) = 0;

        virtual HRESULT get_LeftHeader(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_LeftHeader(
            BSTR RHS) = 0;

        virtual HRESULT get_LeftMargin(
            double *RHS /Out/) = 0;

        virtual HRESULT put_LeftMargin(
            double RHS) = 0;

        virtual HRESULT get_Order(
            XlOrder *RHS /Out/) = 0;

        virtual HRESULT put_Order(
            XlOrder RHS) = 0;

        virtual HRESULT get_Orientation(
            XlPageOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlPageOrientation RHS) = 0;

        virtual HRESULT get_PaperSize(
            XlPaperSize *RHS /Out/) = 0;

        virtual HRESULT put_PaperSize(
            XlPaperSize RHS) = 0;

        virtual HRESULT get_PrintArea(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PrintArea(
            BSTR RHS) = 0;

        virtual HRESULT get_PrintGridlines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintGridlines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PrintHeadings(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintHeadings(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PrintNotes(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintNotes(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PrintQuality(
            VARIANT Index,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PrintQuality(
            VARIANT Index,
            VARIANT RHS) = 0;

        virtual HRESULT get_PrintTitleColumns(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PrintTitleColumns(
            BSTR RHS) = 0;

        virtual HRESULT get_PrintTitleRows(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PrintTitleRows(
            BSTR RHS) = 0;

        virtual HRESULT get_RightFooter(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_RightFooter(
            BSTR RHS) = 0;

        virtual HRESULT get_RightHeader(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_RightHeader(
            BSTR RHS) = 0;

        virtual HRESULT get_RightMargin(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RightMargin(
            double RHS) = 0;

        virtual HRESULT get_TopMargin(
            double *RHS /Out/) = 0;

        virtual HRESULT put_TopMargin(
            double RHS) = 0;

        virtual HRESULT get_Zoom(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Zoom(
            VARIANT RHS) = 0;

        virtual HRESULT get_PrintComments(
            XlPrintLocation *RHS /Out/) = 0;

        virtual HRESULT put_PrintComments(
            XlPrintLocation RHS) = 0;

        virtual HRESULT get_PrintErrors(
            XlPrintErrors *RHS /Out/) = 0;

        virtual HRESULT put_PrintErrors(
            XlPrintErrors RHS) = 0;

        virtual HRESULT get_CenterHeaderPicture(
            Graphic **RHS /Out/) = 0;

        virtual HRESULT get_CenterFooterPicture(
            Graphic **RHS /Out/) = 0;

        virtual HRESULT get_LeftHeaderPicture(
            Graphic **RHS /Out/) = 0;

        virtual HRESULT get_LeftFooterPicture(
            Graphic **RHS /Out/) = 0;

        virtual HRESULT get_RightHeaderPicture(
            Graphic **RHS /Out/) = 0;

        virtual HRESULT get_RightFooterPicture(
            Graphic **RHS /Out/) = 0;

        virtual HRESULT get_OddAndEvenPagesHeaderFooter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_OddAndEvenPagesHeaderFooter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DifferentFirstPageHeaderFooter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DifferentFirstPageHeaderFooter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ScaleWithDocHeaderFooter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ScaleWithDocHeaderFooter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AlignMarginsHeaderFooter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AlignMarginsHeaderFooter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Pages(
            Pages **RHS /Out/) = 0;

        virtual HRESULT get_EvenPage(
            Page **RHS /Out/) = 0;

        virtual HRESULT get_FirstPage(
            Page **RHS /Out/) = 0;

    };
};
