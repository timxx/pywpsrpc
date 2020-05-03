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
    struct PdfExportOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ViewPdfAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ViewPdfAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertTablesOfContents(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertTablesOfContents(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertCommentsMode(
            WpsPdfCommentsMode *prop /Out/) = 0;

        virtual HRESULT put_ConvertCommentsMode(
            WpsPdfCommentsMode prop) = 0;

        virtual HRESULT get_ConvertFootnotes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertFootnotes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertEndnotes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertEndnotes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertSummaryInfo(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertSummaryInfo(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EditRight(
            WpsPdfEditRight Rights,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EditRight(
            WpsPdfEditRight Rights,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintRight(
            WpsPdfPrintRight *prop /Out/) = 0;

        virtual HRESULT put_PrintRight(
            WpsPdfPrintRight prop) = 0;

        virtual HRESULT get_CopyRight(
            WpsPdfCopyRight *prop /Out/) = 0;

        virtual HRESULT put_CopyRight(
            WpsPdfCopyRight prop) = 0;

        virtual HRESULT get_ConvertHyperlinks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertHyperlinks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertTitleStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertTitleStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertBuildinStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertBuildinStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertBookmark(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertBookmark(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertCustomStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertCustomStyles(
            VARIANT_BOOL prop) = 0;

        VARIANT_BOOL getViewPdfAuto();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ViewPdfAuto(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ViewPdfAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setViewPdfAuto(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ViewPdfAuto(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ViewPdfAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ViewPdfAuto, get=getViewPdfAuto, set=setViewPdfAuto)

        VARIANT_BOOL getConvertTablesOfContents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertTablesOfContents(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertTablesOfContents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertTablesOfContents(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertTablesOfContents(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertTablesOfContents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertTablesOfContents, get=getConvertTablesOfContents, set=setConvertTablesOfContents)

        WpsPdfCommentsMode getConvertCommentsMode();
        %MethodCode
            wpsapi::WpsPdfCommentsMode prop = (wpsapi::WpsPdfCommentsMode)0;
            HRESULT hr = sipCpp->get_ConvertCommentsMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertCommentsMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertCommentsMode(WpsPdfCommentsMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertCommentsMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertCommentsMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertCommentsMode, get=getConvertCommentsMode, set=setConvertCommentsMode)

        VARIANT_BOOL getConvertFootnotes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertFootnotes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertFootnotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertFootnotes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertFootnotes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertFootnotes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertFootnotes, get=getConvertFootnotes, set=setConvertFootnotes)

        VARIANT_BOOL getConvertEndnotes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertEndnotes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertEndnotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertEndnotes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertEndnotes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertEndnotes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertEndnotes, get=getConvertEndnotes, set=setConvertEndnotes)

        VARIANT_BOOL getConvertSummaryInfo();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertSummaryInfo(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertSummaryInfo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertSummaryInfo(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertSummaryInfo(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertSummaryInfo()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertSummaryInfo, get=getConvertSummaryInfo, set=setConvertSummaryInfo)

        WpsPdfPrintRight getPrintRight();
        %MethodCode
            wpsapi::WpsPdfPrintRight prop = (wpsapi::WpsPdfPrintRight)0;
            HRESULT hr = sipCpp->get_PrintRight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintRight(WpsPdfPrintRight prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintRight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintRight, get=getPrintRight, set=setPrintRight)

        WpsPdfCopyRight getCopyRight();
        %MethodCode
            wpsapi::WpsPdfCopyRight prop = (wpsapi::WpsPdfCopyRight)0;
            HRESULT hr = sipCpp->get_CopyRight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CopyRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCopyRight(WpsPdfCopyRight prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CopyRight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CopyRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CopyRight, get=getCopyRight, set=setCopyRight)

        VARIANT_BOOL getConvertHyperlinks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertHyperlinks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertHyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertHyperlinks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertHyperlinks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertHyperlinks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertHyperlinks, get=getConvertHyperlinks, set=setConvertHyperlinks)

        VARIANT_BOOL getConvertTitleStyles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertTitleStyles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertTitleStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertTitleStyles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertTitleStyles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertTitleStyles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertTitleStyles, get=getConvertTitleStyles, set=setConvertTitleStyles)

        VARIANT_BOOL getConvertBuildinStyles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertBuildinStyles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertBuildinStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertBuildinStyles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertBuildinStyles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertBuildinStyles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertBuildinStyles, get=getConvertBuildinStyles, set=setConvertBuildinStyles)

        VARIANT_BOOL getConvertBookmark();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertBookmark(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertBookmark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertBookmark(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertBookmark(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertBookmark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertBookmark, get=getConvertBookmark, set=setConvertBookmark)

        VARIANT_BOOL getConvertCustomStyles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertCustomStyles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertCustomStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertCustomStyles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertCustomStyles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertCustomStyles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertCustomStyles, get=getConvertCustomStyles, set=setConvertCustomStyles)
    };
};
