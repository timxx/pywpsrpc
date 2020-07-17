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
    struct PageSetup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_TopMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopMargin(
            single prop) = 0;

        virtual HRESULT get_BottomMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_BottomMargin(
            single prop) = 0;

        virtual HRESULT get_LeftMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftMargin(
            single prop) = 0;

        virtual HRESULT get_RightMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightMargin(
            single prop) = 0;

        virtual HRESULT get_Gutter(
            single *prop /Out/) = 0;

        virtual HRESULT put_Gutter(
            single prop) = 0;

        virtual HRESULT get_PageWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_PageWidth(
            single prop) = 0;

        virtual HRESULT get_PageHeight(
            single *prop /Out/) = 0;

        virtual HRESULT put_PageHeight(
            single prop) = 0;

        virtual HRESULT get_Orientation(
            WdOrientation *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            WdOrientation prop) = 0;

        virtual HRESULT get_FirstPageTray(
            WdPaperTray *prop /Out/) = 0;

        virtual HRESULT put_FirstPageTray(
            WdPaperTray prop) = 0;

        virtual HRESULT get_OtherPagesTray(
            WdPaperTray *prop /Out/) = 0;

        virtual HRESULT put_OtherPagesTray(
            WdPaperTray prop) = 0;

        virtual HRESULT get_VerticalAlignment(
            WdVerticalAlignment *prop /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            WdVerticalAlignment prop) = 0;

        virtual HRESULT get_MirrorMargins(
            long *prop /Out/) = 0;

        virtual HRESULT put_MirrorMargins(
            long prop) = 0;

        virtual HRESULT get_HeaderDistance(
            single *prop /Out/) = 0;

        virtual HRESULT put_HeaderDistance(
            single prop) = 0;

        virtual HRESULT get_FooterDistance(
            single *prop /Out/) = 0;

        virtual HRESULT put_FooterDistance(
            single prop) = 0;

        virtual HRESULT get_SectionStart(
            WdSectionStart *prop /Out/) = 0;

        virtual HRESULT put_SectionStart(
            WdSectionStart prop) = 0;

        virtual HRESULT get_OddAndEvenPagesHeaderFooter(
            long *prop /Out/) = 0;

        virtual HRESULT put_OddAndEvenPagesHeaderFooter(
            long prop) = 0;

        virtual HRESULT get_DifferentFirstPageHeaderFooter(
            long *prop /Out/) = 0;

        virtual HRESULT put_DifferentFirstPageHeaderFooter(
            long prop) = 0;

        virtual HRESULT get_SuppressEndnotes(
            long *prop /Out/) = 0;

        virtual HRESULT put_SuppressEndnotes(
            long prop) = 0;

        virtual HRESULT get_LineNumbering(
            LineNumbering **prop /Out/) = 0;

        virtual HRESULT put_LineNumbering(
            LineNumbering *prop) = 0;

        virtual HRESULT get_TextColumns(
            TextColumns **prop /Out/) = 0;

        virtual HRESULT put_TextColumns(
            TextColumns *prop) = 0;

        virtual HRESULT get_PaperSize(
            WdPaperSize *prop /Out/) = 0;

        virtual HRESULT put_PaperSize(
            WdPaperSize prop) = 0;

        virtual HRESULT get_TwoPagesOnOne(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TwoPagesOnOne(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_GutterOnTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_GutterOnTop(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CharsLine(
            single *prop /Out/) = 0;

        virtual HRESULT put_CharsLine(
            single prop) = 0;

        virtual HRESULT get_LinesPage(
            single *prop /Out/) = 0;

        virtual HRESULT put_LinesPage(
            single prop) = 0;

        virtual HRESULT get_ShowGrid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowGrid(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT TogglePortrait() = 0;

        virtual HRESULT SetAsTemplateDefault() = 0;

        virtual HRESULT get_GutterStyle(
            WdGutterStyleOld *prop /Out/) = 0;

        virtual HRESULT put_GutterStyle(
            WdGutterStyleOld prop) = 0;

        virtual HRESULT get_SectionDirection(
            WdSectionDirection *prop /Out/) = 0;

        virtual HRESULT put_SectionDirection(
            WdSectionDirection prop) = 0;

        virtual HRESULT get_LayoutMode(
            WdLayoutMode *prop /Out/) = 0;

        virtual HRESULT put_LayoutMode(
            WdLayoutMode prop) = 0;

        virtual HRESULT get_GutterPos(
            WdGutterStyle *prop /Out/) = 0;

        virtual HRESULT put_GutterPos(
            WdGutterStyle prop) = 0;

        virtual HRESULT get_BookFoldPrinting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BookFoldPrinting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BookFoldRevPrinting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BookFoldRevPrinting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BookFoldPrintingSheets(
            long *prop /Out/) = 0;

        virtual HRESULT put_BookFoldPrintingSheets(
            long prop) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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

        single getTopMargin();
        %MethodCode
            wpsapi::single prop = 0;
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

        PyObject* setTopMargin(single prop);
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

        single getBottomMargin();
        %MethodCode
            wpsapi::single prop = 0;
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

        PyObject* setBottomMargin(single prop);
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

        single getLeftMargin();
        %MethodCode
            wpsapi::single prop = 0;
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

        PyObject* setLeftMargin(single prop);
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

        single getRightMargin();
        %MethodCode
            wpsapi::single prop = 0;
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

        PyObject* setRightMargin(single prop);
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

        single getGutter();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Gutter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Gutter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGutter(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Gutter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Gutter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Gutter, get=getGutter, set=setGutter)

        single getPageWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_PageWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageWidth, get=getPageWidth, set=setPageWidth)

        single getPageHeight();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_PageHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageHeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageHeight, get=getPageHeight, set=setPageHeight)

        WdOrientation getOrientation();
        %MethodCode
            wpsapi::WdOrientation prop = (wpsapi::WdOrientation)0;
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

        PyObject* setOrientation(WdOrientation prop);
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

        WdPaperTray getFirstPageTray();
        %MethodCode
            wpsapi::WdPaperTray prop = (wpsapi::WdPaperTray)0;
            HRESULT hr = sipCpp->get_FirstPageTray(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstPageTray()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstPageTray(WdPaperTray prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstPageTray(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstPageTray()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstPageTray, get=getFirstPageTray, set=setFirstPageTray)

        WdPaperTray getOtherPagesTray();
        %MethodCode
            wpsapi::WdPaperTray prop = (wpsapi::WdPaperTray)0;
            HRESULT hr = sipCpp->get_OtherPagesTray(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OtherPagesTray()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOtherPagesTray(WdPaperTray prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OtherPagesTray(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OtherPagesTray()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OtherPagesTray, get=getOtherPagesTray, set=setOtherPagesTray)

        WdVerticalAlignment getVerticalAlignment();
        %MethodCode
            wpsapi::WdVerticalAlignment prop = (wpsapi::WdVerticalAlignment)0;
            HRESULT hr = sipCpp->get_VerticalAlignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalAlignment(WdVerticalAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalAlignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalAlignment, get=getVerticalAlignment, set=setVerticalAlignment)

        long getMirrorMargins();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MirrorMargins(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MirrorMargins()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMirrorMargins(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MirrorMargins(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MirrorMargins()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MirrorMargins, get=getMirrorMargins, set=setMirrorMargins)

        single getHeaderDistance();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_HeaderDistance(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeaderDistance()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeaderDistance(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeaderDistance(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeaderDistance()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeaderDistance, get=getHeaderDistance, set=setHeaderDistance)

        single getFooterDistance();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_FooterDistance(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FooterDistance()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFooterDistance(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FooterDistance(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FooterDistance()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FooterDistance, get=getFooterDistance, set=setFooterDistance)

        WdSectionStart getSectionStart();
        %MethodCode
            wpsapi::WdSectionStart prop = (wpsapi::WdSectionStart)0;
            HRESULT hr = sipCpp->get_SectionStart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SectionStart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSectionStart(WdSectionStart prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SectionStart(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SectionStart()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SectionStart, get=getSectionStart, set=setSectionStart)

        long getOddAndEvenPagesHeaderFooter();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_OddAndEvenPagesHeaderFooter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OddAndEvenPagesHeaderFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOddAndEvenPagesHeaderFooter(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OddAndEvenPagesHeaderFooter(a0);
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

        long getDifferentFirstPageHeaderFooter();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DifferentFirstPageHeaderFooter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DifferentFirstPageHeaderFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDifferentFirstPageHeaderFooter(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DifferentFirstPageHeaderFooter(a0);
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

        long getSuppressEndnotes();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SuppressEndnotes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SuppressEndnotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuppressEndnotes(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SuppressEndnotes(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SuppressEndnotes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SuppressEndnotes, get=getSuppressEndnotes, set=setSuppressEndnotes)

        LineNumbering* getLineNumbering();
        %MethodCode
            wpsapi::LineNumbering *prop = nullptr;
            HRESULT hr = sipCpp->get_LineNumbering(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineNumbering()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineNumbering(LineNumbering *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineNumbering(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineNumbering()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineNumbering, get=getLineNumbering, set=setLineNumbering)

        TextColumns* getTextColumns();
        %MethodCode
            wpsapi::TextColumns *prop = nullptr;
            HRESULT hr = sipCpp->get_TextColumns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextColumns(TextColumns *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextColumns(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextColumns()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextColumns, get=getTextColumns, set=setTextColumns)

        WdPaperSize getPaperSize();
        %MethodCode
            wpsapi::WdPaperSize prop = (wpsapi::WdPaperSize)0;
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

        PyObject* setPaperSize(WdPaperSize prop);
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

        VARIANT_BOOL getTwoPagesOnOne();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TwoPagesOnOne(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TwoPagesOnOne()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTwoPagesOnOne(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TwoPagesOnOne(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TwoPagesOnOne()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TwoPagesOnOne, get=getTwoPagesOnOne, set=setTwoPagesOnOne)

        VARIANT_BOOL getGutterOnTop();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_GutterOnTop(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GutterOnTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGutterOnTop(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GutterOnTop(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GutterOnTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GutterOnTop, get=getGutterOnTop, set=setGutterOnTop)

        single getCharsLine();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_CharsLine(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CharsLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCharsLine(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CharsLine(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CharsLine()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CharsLine, get=getCharsLine, set=setCharsLine)

        single getLinesPage();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LinesPage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinesPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLinesPage(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LinesPage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LinesPage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LinesPage, get=getLinesPage, set=setLinesPage)

        VARIANT_BOOL getShowGrid();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowGrid(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowGrid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowGrid(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowGrid(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowGrid()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowGrid, get=getShowGrid, set=setShowGrid)

        WdGutterStyleOld getGutterStyle();
        %MethodCode
            wpsapi::WdGutterStyleOld prop = (wpsapi::WdGutterStyleOld)0;
            HRESULT hr = sipCpp->get_GutterStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GutterStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGutterStyle(WdGutterStyleOld prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GutterStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GutterStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GutterStyle, get=getGutterStyle, set=setGutterStyle)

        WdSectionDirection getSectionDirection();
        %MethodCode
            wpsapi::WdSectionDirection prop = (wpsapi::WdSectionDirection)0;
            HRESULT hr = sipCpp->get_SectionDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SectionDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSectionDirection(WdSectionDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SectionDirection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SectionDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SectionDirection, get=getSectionDirection, set=setSectionDirection)

        WdLayoutMode getLayoutMode();
        %MethodCode
            wpsapi::WdLayoutMode prop = (wpsapi::WdLayoutMode)0;
            HRESULT hr = sipCpp->get_LayoutMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LayoutMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayoutMode(WdLayoutMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LayoutMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LayoutMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LayoutMode, get=getLayoutMode, set=setLayoutMode)

        WdGutterStyle getGutterPos();
        %MethodCode
            wpsapi::WdGutterStyle prop = (wpsapi::WdGutterStyle)0;
            HRESULT hr = sipCpp->get_GutterPos(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GutterPos()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGutterPos(WdGutterStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GutterPos(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GutterPos()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GutterPos, get=getGutterPos, set=setGutterPos)

        VARIANT_BOOL getBookFoldPrinting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BookFoldPrinting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BookFoldPrinting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBookFoldPrinting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BookFoldPrinting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BookFoldPrinting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BookFoldPrinting, get=getBookFoldPrinting, set=setBookFoldPrinting)

        VARIANT_BOOL getBookFoldRevPrinting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BookFoldRevPrinting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BookFoldRevPrinting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBookFoldRevPrinting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BookFoldRevPrinting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BookFoldRevPrinting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BookFoldRevPrinting, get=getBookFoldRevPrinting, set=setBookFoldRevPrinting)

        long getBookFoldPrintingSheets();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BookFoldPrintingSheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BookFoldPrintingSheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBookFoldPrintingSheets(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BookFoldPrintingSheets(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BookFoldPrintingSheets()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BookFoldPrintingSheets, get=getBookFoldPrintingSheets, set=setBookFoldPrintingSheets)
    };
};
