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

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        PpPrintColorType getPrintColorType();
        %MethodCode
            wppapi::PpPrintColorType prop = (wppapi::PpPrintColorType)0;
            HRESULT hr = sipCpp->get_PrintColorType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintColorType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintColorType(PpPrintColorType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintColorType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintColorType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintColorType, get=getPrintColorType, set=setPrintColorType)

        MsoTriState getCollate();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Collate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Collate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCollate(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Collate(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Collate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Collate, get=getCollate, set=setCollate)

        MsoTriState getFitToPage();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_FitToPage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FitToPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFitToPage(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FitToPage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FitToPage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FitToPage, get=getFitToPage, set=setFitToPage)

        MsoTriState getFrameSlides();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_FrameSlides(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FrameSlides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrameSlides(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FrameSlides(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FrameSlides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FrameSlides, get=getFrameSlides, set=setFrameSlides)

        int getNumberOfCopies();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_NumberOfCopies(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberOfCopies()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberOfCopies(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberOfCopies(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberOfCopies()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberOfCopies, get=getNumberOfCopies, set=setNumberOfCopies)

        PpPrintOutputType getOutputType();
        %MethodCode
            wppapi::PpPrintOutputType prop = (wppapi::PpPrintOutputType)0;
            HRESULT hr = sipCpp->get_OutputType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutputType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutputType(PpPrintOutputType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutputType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutputType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutputType, get=getOutputType, set=setOutputType)

        MsoTriState getPrintHiddenSlides();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_PrintHiddenSlides(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintHiddenSlides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintHiddenSlides(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintHiddenSlides(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintHiddenSlides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintHiddenSlides, get=getPrintHiddenSlides, set=setPrintHiddenSlides)

        MsoTriState getPrintInBackground();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_PrintInBackground(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintInBackground()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintInBackground(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintInBackground(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintInBackground()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintInBackground, get=getPrintInBackground, set=setPrintInBackground)

        PpPrintRangeType getRangeType();
        %MethodCode
            wppapi::PpPrintRangeType prop = (wppapi::PpPrintRangeType)0;
            HRESULT hr = sipCpp->get_RangeType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RangeType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRangeType(PpPrintRangeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RangeType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RangeType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RangeType, get=getRangeType, set=setRangeType)

        PrintRanges* getRanges();
        %MethodCode
            wppapi::PrintRanges *prop = nullptr;
            HRESULT hr = sipCpp->get_Ranges(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Ranges()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Ranges, get=getRanges)

        MsoTriState getPrintFontsAsGraphics();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_PrintFontsAsGraphics(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintFontsAsGraphics()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintFontsAsGraphics(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintFontsAsGraphics(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintFontsAsGraphics()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintFontsAsGraphics, get=getPrintFontsAsGraphics, set=setPrintFontsAsGraphics)

        BSTR getSlideShowName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SlideShowName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideShowName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSlideShowName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SlideShowName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SlideShowName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SlideShowName, get=getSlideShowName, set=setSlideShowName)

        BSTR getActivePrinter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ActivePrinter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActivePrinter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setActivePrinter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ActivePrinter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ActivePrinter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ActivePrinter, get=getActivePrinter, set=setActivePrinter)

        PpPrintHandoutOrder getHandoutOrder();
        %MethodCode
            wppapi::PpPrintHandoutOrder prop = (wppapi::PpPrintHandoutOrder)0;
            HRESULT hr = sipCpp->get_HandoutOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HandoutOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHandoutOrder(PpPrintHandoutOrder prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HandoutOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HandoutOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HandoutOrder, get=getHandoutOrder, set=setHandoutOrder)

        MsoTriState getPrintComments();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_PrintComments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintComments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintComments(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintComments(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintComments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintComments, get=getPrintComments, set=setPrintComments)

        int getsectionIndex();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_sectionIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_sectionIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setsectionIndex(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_sectionIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_sectionIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=sectionIndex, get=getsectionIndex, set=setsectionIndex)

        MsoTriState getHighQuality();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HighQuality(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HighQuality()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHighQuality(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HighQuality(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HighQuality()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HighQuality, get=getHighQuality, set=setHighQuality)
    };
};
