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
    struct IListObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Publish(
            VARIANT Target,
            VARIANT_BOOL LinkSource,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT Unlink() = 0;

        virtual HRESULT Unlist() = 0;

        virtual HRESULT UpdateChanges(
            XlListConflict iConflictType = etapi::xlListConflictDialog) = 0;

        virtual HRESULT Resize(
            Range *Range) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_DataBodyRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_DisplayRightToLeft(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_HeaderRowRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_InsertRowRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ListColumns(
            ListColumns **RHS /Out/) = 0;

        virtual HRESULT get_ListRows(
            ListRows **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_QueryTable(
            QueryTable **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ShowAutoFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAutoFilter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTotals(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTotals(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceType(
            XlListObjectSourceType *RHS /Out/) = 0;

        virtual HRESULT get_TotalsRowRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_SharePointURL(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_XmlMap(
            XmlMap **RHS /Out/) = 0;

        virtual HRESULT get_DisplayName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_DisplayName(
            BSTR RHS) = 0;

        virtual HRESULT get_ShowHeaders(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowHeaders(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoFilter(
            AutoFilter **RHS /Out/) = 0;

        virtual HRESULT get_TableStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TableStyle(
            VARIANT RHS) = 0;

        virtual HRESULT get_ShowTableStyleFirstColumn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleFirstColumn(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTableStyleLastColumn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleLastColumn(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTableStyleRowStripes(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleRowStripes(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTableStyleColumnStripes(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTableStyleColumnStripes(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Sort(
            Sort **RHS /Out/) = 0;

        virtual HRESULT get_Comment(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Comment(
            BSTR RHS) = 0;

        virtual HRESULT ExportToVisio() = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR RHS) = 0;

        virtual HRESULT get_Summary(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Summary(
            BSTR RHS) = 0;

        virtual HRESULT get_TableObject(
            TableObject **RHS /Out/) = 0;

        virtual HRESULT get_Slicers(
            Slicers **RHS /Out/) = 0;

        virtual HRESULT get_ShowAutoFilterDropDown(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAutoFilterDropDown(
            VARIANT_BOOL RHS) = 0;

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

        BSTR get_Default();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__Default(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Default()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Default, get=get_Default)

        VARIANT_BOOL getActive();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Active(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Active()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Active, get=getActive)

        Range* getDataBodyRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_DataBodyRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataBodyRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataBodyRange, get=getDataBodyRange)

        VARIANT_BOOL getDisplayRightToLeft();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayRightToLeft(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayRightToLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DisplayRightToLeft, get=getDisplayRightToLeft)

        Range* getHeaderRowRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_HeaderRowRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeaderRowRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HeaderRowRange, get=getHeaderRowRange)

        Range* getInsertRowRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_InsertRowRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsertRowRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InsertRowRange, get=getInsertRowRange)

        ListColumns* getListColumns();
        %MethodCode
            etapi::ListColumns *prop = nullptr;
            HRESULT hr = sipCpp->get_ListColumns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListColumns, get=getListColumns)

        ListRows* getListRows();
        %MethodCode
            etapi::ListRows *prop = nullptr;
            HRESULT hr = sipCpp->get_ListRows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListRows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListRows, get=getListRows)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        QueryTable* getQueryTable();
        %MethodCode
            etapi::QueryTable *prop = nullptr;
            HRESULT hr = sipCpp->get_QueryTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_QueryTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=QueryTable, get=getQueryTable)

        Range* getRange();
        %MethodCode
            etapi::Range *prop = nullptr;
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

        VARIANT_BOOL getShowAutoFilter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAutoFilter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAutoFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAutoFilter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAutoFilter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAutoFilter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAutoFilter, get=getShowAutoFilter, set=setShowAutoFilter)

        VARIANT_BOOL getShowTotals();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTotals(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTotals()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTotals(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTotals(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTotals()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTotals, get=getShowTotals, set=setShowTotals)

        XlListObjectSourceType getSourceType();
        %MethodCode
            etapi::XlListObjectSourceType prop = (etapi::XlListObjectSourceType)0;
            HRESULT hr = sipCpp->get_SourceType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SourceType, get=getSourceType)

        Range* getTotalsRowRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_TotalsRowRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TotalsRowRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TotalsRowRange, get=getTotalsRowRange)

        BSTR getSharePointURL();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SharePointURL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SharePointURL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SharePointURL, get=getSharePointURL)

        XmlMap* getXmlMap();
        %MethodCode
            etapi::XmlMap *prop = nullptr;
            HRESULT hr = sipCpp->get_XmlMap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XmlMap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XmlMap, get=getXmlMap)

        BSTR getDisplayName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DisplayName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayName, get=getDisplayName, set=setDisplayName)

        VARIANT_BOOL getShowHeaders();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowHeaders(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowHeaders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowHeaders(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowHeaders(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowHeaders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowHeaders, get=getShowHeaders, set=setShowHeaders)

        AutoFilter* getAutoFilter();
        %MethodCode
            etapi::AutoFilter *prop = nullptr;
            HRESULT hr = sipCpp->get_AutoFilter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoFilter, get=getAutoFilter)

        VARIANT getTableStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_TableStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTableStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TableStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TableStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TableStyle, get=getTableStyle, set=setTableStyle)

        VARIANT_BOOL getShowTableStyleFirstColumn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTableStyleFirstColumn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTableStyleFirstColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTableStyleFirstColumn(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTableStyleFirstColumn(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTableStyleFirstColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTableStyleFirstColumn, get=getShowTableStyleFirstColumn, set=setShowTableStyleFirstColumn)

        VARIANT_BOOL getShowTableStyleLastColumn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTableStyleLastColumn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTableStyleLastColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTableStyleLastColumn(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTableStyleLastColumn(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTableStyleLastColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTableStyleLastColumn, get=getShowTableStyleLastColumn, set=setShowTableStyleLastColumn)

        VARIANT_BOOL getShowTableStyleRowStripes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTableStyleRowStripes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTableStyleRowStripes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTableStyleRowStripes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTableStyleRowStripes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTableStyleRowStripes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTableStyleRowStripes, get=getShowTableStyleRowStripes, set=setShowTableStyleRowStripes)

        VARIANT_BOOL getShowTableStyleColumnStripes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTableStyleColumnStripes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTableStyleColumnStripes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTableStyleColumnStripes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTableStyleColumnStripes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTableStyleColumnStripes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTableStyleColumnStripes, get=getShowTableStyleColumnStripes, set=setShowTableStyleColumnStripes)

        Sort* getSort();
        %MethodCode
            etapi::Sort *prop = nullptr;
            HRESULT hr = sipCpp->get_Sort(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sort()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sort, get=getSort)

        BSTR getComment();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Comment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setComment(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Comment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Comment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Comment, get=getComment, set=setComment)

        BSTR getAlternativeText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AlternativeText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlternativeText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlternativeText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlternativeText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlternativeText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlternativeText, get=getAlternativeText, set=setAlternativeText)

        BSTR getSummary();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Summary(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Summary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSummary(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Summary(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Summary()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Summary, get=getSummary, set=setSummary)

        TableObject* getTableObject();
        %MethodCode
            etapi::TableObject *prop = nullptr;
            HRESULT hr = sipCpp->get_TableObject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableObject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TableObject, get=getTableObject)

        Slicers* getSlicers();
        %MethodCode
            etapi::Slicers *prop = nullptr;
            HRESULT hr = sipCpp->get_Slicers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Slicers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Slicers, get=getSlicers)

        VARIANT_BOOL getShowAutoFilterDropDown();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAutoFilterDropDown(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAutoFilterDropDown()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAutoFilterDropDown(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAutoFilterDropDown(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAutoFilterDropDown()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAutoFilterDropDown, get=getShowAutoFilterDropDown, set=setShowAutoFilterDropDown)
    };
};
