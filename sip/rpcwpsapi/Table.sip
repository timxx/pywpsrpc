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
    struct Table : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Columns(
            Columns **prop /Out/) = 0;

        virtual HRESULT get_Rows(
            Rows **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Uniform(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_AutoFormatType(
            long *prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT SortOld(
            VARIANT *ExcludeHeader = argMissing(),
            VARIANT *FieldNumber = argMissing(),
            VARIANT *SortFieldType = argMissing(),
            VARIANT *SortOrder = argMissing(),
            VARIANT *FieldNumber2 = argMissing(),
            VARIANT *SortFieldType2 = argMissing(),
            VARIANT *SortOrder2 = argMissing(),
            VARIANT *FieldNumber3 = argMissing(),
            VARIANT *SortFieldType3 = argMissing(),
            VARIANT *SortOrder3 = argMissing(),
            VARIANT *CaseSensitive = argMissing(),
            VARIANT *LanguageID = argMissing()) = 0;

        virtual HRESULT SortAscending() = 0;

        virtual HRESULT SortDescending() = 0;

        virtual HRESULT AutoFormat(
            VARIANT *Format = argMissing(),
            VARIANT *ApplyBorders = argMissing(),
            VARIANT *ApplyShading = argMissing(),
            VARIANT *ApplyFont = argMissing(),
            VARIANT *ApplyColor = argMissing(),
            VARIANT *ApplyHeadingRows = argMissing(),
            VARIANT *ApplyLastRow = argMissing(),
            VARIANT *ApplyFirstColumn = argMissing(),
            VARIANT *ApplyLastColumn = argMissing(),
            VARIANT *AutoFit = argMissing()) = 0;

        virtual HRESULT UpdateAutoFormat() = 0;

        virtual HRESULT ConvertToTextOld(
            VARIANT *Separator = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT Cell(
            long Row,
            long Column,
            Cell **prop /Out/) = 0;

        virtual HRESULT Split(
            VARIANT *BeforeRow,
            Table **prop /Out/) = 0;

        virtual HRESULT ConvertToText(
            VARIANT *Separator = argMissing(),
            VARIANT *NestedTables = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT AutoFitBehavior(
            WdAutoFitBehavior Behavior) = 0;

        virtual HRESULT Sort(
            VARIANT *ExcludeHeader = argMissing(),
            VARIANT *FieldNumber = argMissing(),
            VARIANT *SortFieldType = argMissing(),
            VARIANT *SortOrder = argMissing(),
            VARIANT *FieldNumber2 = argMissing(),
            VARIANT *SortFieldType2 = argMissing(),
            VARIANT *SortOrder2 = argMissing(),
            VARIANT *FieldNumber3 = argMissing(),
            VARIANT *SortFieldType3 = argMissing(),
            VARIANT *SortOrder3 = argMissing(),
            VARIANT *CaseSensitive = argMissing(),
            VARIANT *BidiSort = argMissing(),
            VARIANT *IgnoreThe = argMissing(),
            VARIANT *IgnoreKashida = argMissing(),
            VARIANT *IgnoreDiacritics = argMissing(),
            VARIANT *IgnoreHe = argMissing(),
            VARIANT *LanguageID = argMissing()) = 0;

        virtual HRESULT get_Tables(
            Tables **prop /Out/) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_AllowPageBreaks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowPageBreaks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowAutoFit(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowAutoFit(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PreferredWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidth(
            single prop) = 0;

        virtual HRESULT get_PreferredWidthType(
            WdPreferredWidthType *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidthType(
            WdPreferredWidthType prop) = 0;

        virtual HRESULT get_TopPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopPadding(
            single prop) = 0;

        virtual HRESULT get_BottomPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_BottomPadding(
            single prop) = 0;

        virtual HRESULT get_LeftPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftPadding(
            single prop) = 0;

        virtual HRESULT get_RightPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightPadding(
            single prop) = 0;

        virtual HRESULT get_Spacing(
            single *prop /Out/) = 0;

        virtual HRESULT put_Spacing(
            single prop) = 0;

        virtual HRESULT get_TableDirection(
            WdTableDirection *prop /Out/) = 0;

        virtual HRESULT put_TableDirection(
            WdTableDirection prop) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ID(
            BSTR prop) = 0;

        virtual HRESULT get_Style(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT *prop) = 0;

        virtual HRESULT get_ApplyStyleHeadingRows(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleHeadingRows(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleLastRow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleLastRow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleFirstColumn(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleFirstColumn(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleLastColumn(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleLastColumn(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleRowBands(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleRowBands(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleColumnBands(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleColumnBands(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ApplyStyleDirectFormatting(
            BSTR StyleName) = 0;

        virtual HRESULT get_Title(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR prop) = 0;

        virtual HRESULT get_Descr(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Descr(
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

        Columns* getColumns();
        %MethodCode
            wpsapi::Columns *prop = nullptr;
            HRESULT hr = sipCpp->get_Columns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Columns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Columns, get=getColumns)

        Rows* getRows();
        %MethodCode
            wpsapi::Rows *prop = nullptr;
            HRESULT hr = sipCpp->get_Rows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Rows, get=getRows)

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

        VARIANT_BOOL getUniform();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Uniform(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Uniform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Uniform, get=getUniform)

        long getAutoFormatType();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AutoFormatType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoFormatType, get=getAutoFormatType)

        Tables* getTables();
        %MethodCode
            wpsapi::Tables *prop = nullptr;
            HRESULT hr = sipCpp->get_Tables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tables, get=getTables)

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

        VARIANT_BOOL getAllowPageBreaks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowPageBreaks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowPageBreaks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowPageBreaks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowPageBreaks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowPageBreaks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowPageBreaks, get=getAllowPageBreaks, set=setAllowPageBreaks)

        VARIANT_BOOL getAllowAutoFit();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowAutoFit(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowAutoFit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowAutoFit(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowAutoFit(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowAutoFit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowAutoFit, get=getAllowAutoFit, set=setAllowAutoFit)

        single getPreferredWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_PreferredWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreferredWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreferredWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreferredWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreferredWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreferredWidth, get=getPreferredWidth, set=setPreferredWidth)

        WdPreferredWidthType getPreferredWidthType();
        %MethodCode
            wpsapi::WdPreferredWidthType prop = (wpsapi::WdPreferredWidthType)0;
            HRESULT hr = sipCpp->get_PreferredWidthType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreferredWidthType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreferredWidthType(WdPreferredWidthType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreferredWidthType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreferredWidthType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreferredWidthType, get=getPreferredWidthType, set=setPreferredWidthType)

        single getTopPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_TopPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TopPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTopPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TopPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TopPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TopPadding, get=getTopPadding, set=setTopPadding)

        single getBottomPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_BottomPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BottomPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBottomPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BottomPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BottomPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BottomPadding, get=getBottomPadding, set=setBottomPadding)

        single getLeftPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftPadding, get=getLeftPadding, set=setLeftPadding)

        single getRightPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RightPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightPadding, get=getRightPadding, set=setRightPadding)

        single getSpacing();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Spacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Spacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpacing(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Spacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Spacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Spacing, get=getSpacing, set=setSpacing)

        WdTableDirection getTableDirection();
        %MethodCode
            wpsapi::WdTableDirection prop = (wpsapi::WdTableDirection)0;
            HRESULT hr = sipCpp->get_TableDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTableDirection(WdTableDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TableDirection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TableDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TableDirection, get=getTableDirection, set=setTableDirection)

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

        VARIANT getStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Style(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyle(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Style()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Style, get=getStyle, set=setStyle)

        VARIANT_BOOL getApplyStyleHeadingRows();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyStyleHeadingRows(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyStyleHeadingRows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyStyleHeadingRows(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyStyleHeadingRows(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyStyleHeadingRows()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyStyleHeadingRows, get=getApplyStyleHeadingRows, set=setApplyStyleHeadingRows)

        VARIANT_BOOL getApplyStyleLastRow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyStyleLastRow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyStyleLastRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyStyleLastRow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyStyleLastRow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyStyleLastRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyStyleLastRow, get=getApplyStyleLastRow, set=setApplyStyleLastRow)

        VARIANT_BOOL getApplyStyleFirstColumn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyStyleFirstColumn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyStyleFirstColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyStyleFirstColumn(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyStyleFirstColumn(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyStyleFirstColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyStyleFirstColumn, get=getApplyStyleFirstColumn, set=setApplyStyleFirstColumn)

        VARIANT_BOOL getApplyStyleLastColumn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyStyleLastColumn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyStyleLastColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyStyleLastColumn(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyStyleLastColumn(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyStyleLastColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyStyleLastColumn, get=getApplyStyleLastColumn, set=setApplyStyleLastColumn)

        VARIANT_BOOL getApplyStyleRowBands();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyStyleRowBands(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyStyleRowBands()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyStyleRowBands(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyStyleRowBands(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyStyleRowBands()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyStyleRowBands, get=getApplyStyleRowBands, set=setApplyStyleRowBands)

        VARIANT_BOOL getApplyStyleColumnBands();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyStyleColumnBands(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyStyleColumnBands()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyStyleColumnBands(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyStyleColumnBands(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyStyleColumnBands()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyStyleColumnBands, get=getApplyStyleColumnBands, set=setApplyStyleColumnBands)

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Title(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Title()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Title, get=getTitle, set=setTitle)

        BSTR getDescr();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Descr(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Descr()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDescr(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Descr(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Descr()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Descr, get=getDescr, set=setDescr)
    };
};
