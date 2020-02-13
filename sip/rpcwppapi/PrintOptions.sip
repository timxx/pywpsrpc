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
    struct PrintOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_PrintColorType(
            PpPrintColorType *PrintColorType /Out/) = 0;

        virtual HRESULT put_PrintColorType(
            PpPrintColorType PrintColorType) = 0;

        virtual HRESULT get_Collate(
            MsoTriState *Collate /Out/) = 0;

        virtual HRESULT put_Collate(
            MsoTriState Collate) = 0;

        virtual HRESULT get_FitToPage(
            MsoTriState *FitToPage /Out/) = 0;

        virtual HRESULT put_FitToPage(
            MsoTriState FitToPage) = 0;

        virtual HRESULT get_FrameSlides(
            MsoTriState *FrameSlides /Out/) = 0;

        virtual HRESULT put_FrameSlides(
            MsoTriState FrameSlides) = 0;

        virtual HRESULT get_NumberOfCopies(
            int *NumberOfCopies /Out/) = 0;

        virtual HRESULT put_NumberOfCopies(
            int NumberOfCopies) = 0;

        virtual HRESULT get_OutputType(
            PpPrintOutputType *OutputType /Out/) = 0;

        virtual HRESULT put_OutputType(
            PpPrintOutputType OutputType) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_PrintHiddenSlides(
            MsoTriState *PrintHiddenSlides /Out/) = 0;

        virtual HRESULT put_PrintHiddenSlides(
            MsoTriState PrintHiddenSlides) = 0;

        virtual HRESULT get_PrintInBackground(
            MsoTriState *PrintInBackground /Out/) = 0;

        virtual HRESULT put_PrintInBackground(
            MsoTriState PrintInBackground) = 0;

        virtual HRESULT get_RangeType(
            PpPrintRangeType *RangeType /Out/) = 0;

        virtual HRESULT put_RangeType(
            PpPrintRangeType RangeType) = 0;

        virtual HRESULT get_Ranges(
            PrintRanges **Ranges /Out/) = 0;

        virtual HRESULT get_PrintFontsAsGraphics(
            MsoTriState *PrintFontsAsGraphics /Out/) = 0;

        virtual HRESULT put_PrintFontsAsGraphics(
            MsoTriState PrintFontsAsGraphics) = 0;

        virtual HRESULT get_SlideShowName(
            BSTR *SlideShowName /Out/) = 0;

        virtual HRESULT put_SlideShowName(
            BSTR SlideShowName) = 0;

        virtual HRESULT get_ActivePrinter(
            BSTR *ActivePrinter /Out/) = 0;

        virtual HRESULT put_ActivePrinter(
            BSTR ActivePrinter) = 0;

        virtual HRESULT get_HandoutOrder(
            PpPrintHandoutOrder *HandoutOrder /Out/) = 0;

        virtual HRESULT put_HandoutOrder(
            PpPrintHandoutOrder HandoutOrder) = 0;

        virtual HRESULT get_PrintComments(
            MsoTriState *PrintComments /Out/) = 0;

        virtual HRESULT put_PrintComments(
            MsoTriState PrintComments) = 0;

        virtual HRESULT get_sectionIndex(
            int *sectionIndex /Out/) = 0;

        virtual HRESULT put_sectionIndex(
            int sectionIndex) = 0;

        virtual HRESULT get_HighQuality(
            MsoTriState *HighQuality /Out/) = 0;

        virtual HRESULT put_HighQuality(
            MsoTriState HighQuality) = 0;

    };
};
