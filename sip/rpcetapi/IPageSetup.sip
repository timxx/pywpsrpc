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
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_PrintQuality(
            VARIANT Index = argMissing2(),
            VARIANT RHS = argMissing2()) = 0;

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

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        VARIANT_BOOL getBlackAndWhite();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BlackAndWhite(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BlackAndWhite()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBlackAndWhite(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BlackAndWhite(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BlackAndWhite()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BlackAndWhite, get=getBlackAndWhite, set=setBlackAndWhite)

        double getBottomMargin();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_BottomMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BottomMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBottomMargin(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BottomMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BottomMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BottomMargin, get=getBottomMargin, set=setBottomMargin)

        BSTR getCenterFooter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CenterFooter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CenterFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCenterFooter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CenterFooter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CenterFooter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CenterFooter, get=getCenterFooter, set=setCenterFooter)

        BSTR getCenterHeader();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CenterHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CenterHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCenterHeader(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CenterHeader(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CenterHeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CenterHeader, get=getCenterHeader, set=setCenterHeader)

        VARIANT_BOOL getCenterHorizontally();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CenterHorizontally(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CenterHorizontally()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCenterHorizontally(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CenterHorizontally(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CenterHorizontally()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CenterHorizontally, get=getCenterHorizontally, set=setCenterHorizontally)

        VARIANT_BOOL getCenterVertically();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CenterVertically(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CenterVertically()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCenterVertically(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CenterVertically(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CenterVertically()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CenterVertically, get=getCenterVertically, set=setCenterVertically)

        XlObjectSize getChartSize();
        %MethodCode
            etapi::XlObjectSize prop = (etapi::XlObjectSize)0;
            HRESULT hr = sipCpp->get_ChartSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartSize(XlObjectSize prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartSize, get=getChartSize, set=setChartSize)

        VARIANT_BOOL getDraft();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Draft(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Draft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDraft(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Draft(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Draft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Draft, get=getDraft, set=setDraft)

        long getFirstPageNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FirstPageNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstPageNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstPageNumber(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstPageNumber(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstPageNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstPageNumber, get=getFirstPageNumber, set=setFirstPageNumber)

        VARIANT getFitToPagesTall();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_FitToPagesTall(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FitToPagesTall()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFitToPagesTall(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FitToPagesTall(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FitToPagesTall()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FitToPagesTall, get=getFitToPagesTall, set=setFitToPagesTall)

        VARIANT getFitToPagesWide();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_FitToPagesWide(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FitToPagesWide()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFitToPagesWide(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FitToPagesWide(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FitToPagesWide()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FitToPagesWide, get=getFitToPagesWide, set=setFitToPagesWide)

        double getFooterMargin();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_FooterMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FooterMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFooterMargin(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FooterMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FooterMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FooterMargin, get=getFooterMargin, set=setFooterMargin)

        double getHeaderMargin();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_HeaderMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeaderMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeaderMargin(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeaderMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeaderMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeaderMargin, get=getHeaderMargin, set=setHeaderMargin)

        BSTR getLeftFooter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LeftFooter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftFooter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftFooter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftFooter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftFooter, get=getLeftFooter, set=setLeftFooter)

        BSTR getLeftHeader();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LeftHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftHeader(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftHeader(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftHeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftHeader, get=getLeftHeader, set=setLeftHeader)

        double getLeftMargin();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_LeftMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftMargin(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftMargin, get=getLeftMargin, set=setLeftMargin)

        XlOrder getOrder();
        %MethodCode
            etapi::XlOrder prop = (etapi::XlOrder)0;
            HRESULT hr = sipCpp->get_Order(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Order()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrder(XlOrder prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Order(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Order()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Order, get=getOrder, set=setOrder)

        XlPageOrientation getOrientation();
        %MethodCode
            etapi::XlPageOrientation prop = (etapi::XlPageOrientation)0;
            HRESULT hr = sipCpp->get_Orientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Orientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrientation(XlPageOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Orientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Orientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Orientation, get=getOrientation, set=setOrientation)

        XlPaperSize getPaperSize();
        %MethodCode
            etapi::XlPaperSize prop = (etapi::XlPaperSize)0;
            HRESULT hr = sipCpp->get_PaperSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PaperSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPaperSize(XlPaperSize prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PaperSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PaperSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PaperSize, get=getPaperSize, set=setPaperSize)

        BSTR getPrintArea();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PrintArea(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintArea()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintArea(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintArea(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintArea()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintArea, get=getPrintArea, set=setPrintArea)

        VARIANT_BOOL getPrintGridlines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintGridlines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintGridlines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintGridlines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintGridlines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintGridlines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintGridlines, get=getPrintGridlines, set=setPrintGridlines)

        VARIANT_BOOL getPrintHeadings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintHeadings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintHeadings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintHeadings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintHeadings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintHeadings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintHeadings, get=getPrintHeadings, set=setPrintHeadings)

        VARIANT_BOOL getPrintNotes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintNotes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintNotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintNotes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintNotes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintNotes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintNotes, get=getPrintNotes, set=setPrintNotes)

        BSTR getPrintTitleColumns();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PrintTitleColumns(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintTitleColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintTitleColumns(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintTitleColumns(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintTitleColumns()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintTitleColumns, get=getPrintTitleColumns, set=setPrintTitleColumns)

        BSTR getPrintTitleRows();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PrintTitleRows(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintTitleRows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintTitleRows(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintTitleRows(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintTitleRows()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintTitleRows, get=getPrintTitleRows, set=setPrintTitleRows)

        BSTR getRightFooter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RightFooter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightFooter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightFooter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightFooter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightFooter, get=getRightFooter, set=setRightFooter)

        BSTR getRightHeader();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RightHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightHeader(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightHeader(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightHeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightHeader, get=getRightHeader, set=setRightHeader)

        double getRightMargin();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_RightMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightMargin(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightMargin, get=getRightMargin, set=setRightMargin)

        double getTopMargin();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_TopMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TopMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTopMargin(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TopMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TopMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TopMargin, get=getTopMargin, set=setTopMargin)

        VARIANT getZoom();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Zoom(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Zoom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setZoom(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Zoom(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Zoom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Zoom, get=getZoom, set=setZoom)

        XlPrintLocation getPrintComments();
        %MethodCode
            etapi::XlPrintLocation prop = (etapi::XlPrintLocation)0;
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

        PyObject* setPrintComments(XlPrintLocation prop);
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

        XlPrintErrors getPrintErrors();
        %MethodCode
            etapi::XlPrintErrors prop = (etapi::XlPrintErrors)0;
            HRESULT hr = sipCpp->get_PrintErrors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintErrors(XlPrintErrors prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintErrors(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintErrors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintErrors, get=getPrintErrors, set=setPrintErrors)

        Graphic* getCenterHeaderPicture();
        %MethodCode
            etapi::Graphic *prop = nullptr;
            HRESULT hr = sipCpp->get_CenterHeaderPicture(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CenterHeaderPicture()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CenterHeaderPicture, get=getCenterHeaderPicture)

        Graphic* getCenterFooterPicture();
        %MethodCode
            etapi::Graphic *prop = nullptr;
            HRESULT hr = sipCpp->get_CenterFooterPicture(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CenterFooterPicture()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CenterFooterPicture, get=getCenterFooterPicture)

        Graphic* getLeftHeaderPicture();
        %MethodCode
            etapi::Graphic *prop = nullptr;
            HRESULT hr = sipCpp->get_LeftHeaderPicture(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftHeaderPicture()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LeftHeaderPicture, get=getLeftHeaderPicture)

        Graphic* getLeftFooterPicture();
        %MethodCode
            etapi::Graphic *prop = nullptr;
            HRESULT hr = sipCpp->get_LeftFooterPicture(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftFooterPicture()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LeftFooterPicture, get=getLeftFooterPicture)

        Graphic* getRightHeaderPicture();
        %MethodCode
            etapi::Graphic *prop = nullptr;
            HRESULT hr = sipCpp->get_RightHeaderPicture(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightHeaderPicture()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RightHeaderPicture, get=getRightHeaderPicture)

        Graphic* getRightFooterPicture();
        %MethodCode
            etapi::Graphic *prop = nullptr;
            HRESULT hr = sipCpp->get_RightFooterPicture(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightFooterPicture()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RightFooterPicture, get=getRightFooterPicture)

        VARIANT_BOOL getOddAndEvenPagesHeaderFooter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OddAndEvenPagesHeaderFooter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OddAndEvenPagesHeaderFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOddAndEvenPagesHeaderFooter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OddAndEvenPagesHeaderFooter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OddAndEvenPagesHeaderFooter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OddAndEvenPagesHeaderFooter, get=getOddAndEvenPagesHeaderFooter, set=setOddAndEvenPagesHeaderFooter)

        VARIANT_BOOL getDifferentFirstPageHeaderFooter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DifferentFirstPageHeaderFooter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DifferentFirstPageHeaderFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDifferentFirstPageHeaderFooter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DifferentFirstPageHeaderFooter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DifferentFirstPageHeaderFooter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DifferentFirstPageHeaderFooter, get=getDifferentFirstPageHeaderFooter, set=setDifferentFirstPageHeaderFooter)

        VARIANT_BOOL getScaleWithDocHeaderFooter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ScaleWithDocHeaderFooter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScaleWithDocHeaderFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScaleWithDocHeaderFooter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScaleWithDocHeaderFooter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScaleWithDocHeaderFooter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScaleWithDocHeaderFooter, get=getScaleWithDocHeaderFooter, set=setScaleWithDocHeaderFooter)

        VARIANT_BOOL getAlignMarginsHeaderFooter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AlignMarginsHeaderFooter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlignMarginsHeaderFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlignMarginsHeaderFooter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlignMarginsHeaderFooter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlignMarginsHeaderFooter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlignMarginsHeaderFooter, get=getAlignMarginsHeaderFooter, set=setAlignMarginsHeaderFooter)

        Pages* getPages();
        %MethodCode
            etapi::Pages *prop = nullptr;
            HRESULT hr = sipCpp->get_Pages(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Pages()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Pages, get=getPages)

        Page* getEvenPage();
        %MethodCode
            etapi::Page *prop = nullptr;
            HRESULT hr = sipCpp->get_EvenPage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EvenPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EvenPage, get=getEvenPage)

        Page* getFirstPage();
        %MethodCode
            etapi::Page *prop = nullptr;
            HRESULT hr = sipCpp->get_FirstPage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FirstPage, get=getFirstPage)
    };
};
