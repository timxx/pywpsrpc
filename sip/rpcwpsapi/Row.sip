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
    struct Row : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_AllowBreakAcrossPages(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllowBreakAcrossPages(
            long prop) = 0;

        virtual HRESULT get_Alignment(
            WdRowAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdRowAlignment prop) = 0;

        virtual HRESULT get_HeadingFormat(
            long *prop /Out/) = 0;

        virtual HRESULT put_HeadingFormat(
            long prop) = 0;

        virtual HRESULT get_SpaceBetweenColumns(
            single *prop /Out/) = 0;

        virtual HRESULT put_SpaceBetweenColumns(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HeightRule(
            WdRowHeightRule *prop /Out/) = 0;

        virtual HRESULT put_HeightRule(
            WdRowHeightRule prop) = 0;

        virtual HRESULT get_LeftIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single prop) = 0;

        virtual HRESULT get_IsLast(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_IsFirst(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Cells(
            Cells **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Next(
            Row **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Row **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT SetLeftIndent(
            single LeftIndent,
            WdRulerStyle RulerStyle) = 0;

        virtual HRESULT SetHeight(
            single RowHeight,
            WdRowHeightRule HeightRule) = 0;

        virtual HRESULT ConvertToTextOld(
            VARIANT *Separator = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT ConvertToText(
            VARIANT *Separator = argMissing(),
            VARIANT *NestedTables = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ID(
            BSTR prop) = 0;

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

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

        long getAllowBreakAcrossPages();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AllowBreakAcrossPages(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowBreakAcrossPages()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowBreakAcrossPages(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowBreakAcrossPages(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowBreakAcrossPages()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowBreakAcrossPages, get=getAllowBreakAcrossPages, set=setAllowBreakAcrossPages)

        WdRowAlignment getAlignment();
        %MethodCode
            wpsapi::WdRowAlignment prop = (wpsapi::WdRowAlignment)0;
            HRESULT hr = sipCpp->get_Alignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Alignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlignment(WdRowAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Alignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Alignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Alignment, get=getAlignment, set=setAlignment)

        long getHeadingFormat();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HeadingFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeadingFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeadingFormat(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeadingFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeadingFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeadingFormat, get=getHeadingFormat, set=setHeadingFormat)

        single getSpaceBetweenColumns();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SpaceBetweenColumns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpaceBetweenColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpaceBetweenColumns(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpaceBetweenColumns(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpaceBetweenColumns()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpaceBetweenColumns, get=getSpaceBetweenColumns, set=setSpaceBetweenColumns)

        single getHeight();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        WdRowHeightRule getHeightRule();
        %MethodCode
            wpsapi::WdRowHeightRule prop = (wpsapi::WdRowHeightRule)0;
            HRESULT hr = sipCpp->get_HeightRule(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeightRule()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeightRule(WdRowHeightRule prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeightRule(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeightRule()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeightRule, get=getHeightRule, set=setHeightRule)

        single getLeftIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftIndent, get=getLeftIndent, set=setLeftIndent)

        VARIANT_BOOL getIsLast();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsLast(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsLast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsLast, get=getIsLast)

        VARIANT_BOOL getIsFirst();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsFirst(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsFirst()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsFirst, get=getIsFirst)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        Cells* getCells();
        %MethodCode
            wpsapi::Cells *prop = nullptr;
            HRESULT hr = sipCpp->get_Cells(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Cells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Cells, get=getCells)

        Borders* getBorders();
        %MethodCode
            wpsapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorders(Borders *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Borders(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Borders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Borders, get=getBorders, set=setBorders)

        Shading* getShading();
        %MethodCode
            wpsapi::Shading *prop = nullptr;
            HRESULT hr = sipCpp->get_Shading(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shading, get=getShading)

        Row* getNext();
        %MethodCode
            wpsapi::Row *prop = nullptr;
            HRESULT hr = sipCpp->get_Next(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Next()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Next, get=getNext)

        Row* getPrevious();
        %MethodCode
            wpsapi::Row *prop = nullptr;
            HRESULT hr = sipCpp->get_Previous(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Previous()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Previous, get=getPrevious)

        long getNestingLevel();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NestingLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NestingLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NestingLevel, get=getNestingLevel)

        BSTR getID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setID(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ID(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ID, get=getID, set=setID)
    };
};
