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
    struct _IQueryTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_FieldNames(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FieldNames(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RowNumbers(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RowNumbers(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FillAdjacentFormulas(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FillAdjacentFormulas(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasAutoFormat(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasAutoFormat(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RefreshOnFileOpen(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RefreshOnFileOpen(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Refreshing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_FetchedRowOverflow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_BackgroundQuery(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundQuery(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT CancelRefresh() = 0;

        virtual HRESULT get_RefreshStyle(
            XlCellInsertionMode *RHS /Out/) = 0;

        virtual HRESULT put_RefreshStyle(
            XlCellInsertionMode RHS) = 0;

        virtual HRESULT get_EnableRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SavePassword(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SavePassword(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Destination(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Connection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Connection(
            VARIANT RHS) = 0;

        virtual HRESULT get_Sql(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Sql(
            VARIANT RHS) = 0;

        virtual HRESULT get_PostText(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PostText(
            BSTR RHS) = 0;

        virtual HRESULT get_ResultRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Refresh(
            VARIANT BackgroundQuery = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Parameters(
            Parameters **RHS /Out/) = 0;

        virtual HRESULT get_Recordset(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT putref_Recordset(
            IDispatch *RHS) = 0;

        virtual HRESULT get_SaveData(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SaveData(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TablesOnlyFromHTML(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TablesOnlyFromHTML(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableEditing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableEditing(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFilePlatform(
            long *RHS /Out/) = 0;

        virtual HRESULT put_TextFilePlatform(
            long RHS) = 0;

        virtual HRESULT get_TextFileStartRow(
            long *RHS /Out/) = 0;

        virtual HRESULT put_TextFileStartRow(
            long RHS) = 0;

        virtual HRESULT get_TextFileParseType(
            XlTextParsingType *RHS /Out/) = 0;

        virtual HRESULT put_TextFileParseType(
            XlTextParsingType RHS) = 0;

        virtual HRESULT get_TextFileTextQualifier(
            XlTextQualifier *RHS /Out/) = 0;

        virtual HRESULT put_TextFileTextQualifier(
            XlTextQualifier RHS) = 0;

        virtual HRESULT get_TextFileConsecutiveDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileConsecutiveDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileTabDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileTabDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileSemicolonDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileSemicolonDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileCommaDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileCommaDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileSpaceDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileSpaceDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileOtherDelimiter(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextFileOtherDelimiter(
            BSTR RHS) = 0;

        virtual HRESULT get_TextFileColumnDataTypes(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TextFileColumnDataTypes(
            VARIANT RHS) = 0;

        virtual HRESULT get_TextFileFixedColumnWidths(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TextFileFixedColumnWidths(
            VARIANT RHS) = 0;

        virtual HRESULT get_PreserveColumnInfo(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveColumnInfo(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PreserveFormatting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveFormatting(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AdjustColumnWidth(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AdjustColumnWidth(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CommandText(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CommandText(
            VARIANT RHS) = 0;

        virtual HRESULT get_CommandType(
            XlCmdType *RHS /Out/) = 0;

        virtual HRESULT put_CommandType(
            XlCmdType RHS) = 0;

        virtual HRESULT get_TextFilePromptOnRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFilePromptOnRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_QueryType(
            XlQueryType *RHS /Out/) = 0;

        virtual HRESULT get_MaintainConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MaintainConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileDecimalSeparator(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextFileDecimalSeparator(
            BSTR RHS) = 0;

        virtual HRESULT get_TextFileThousandsSeparator(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextFileThousandsSeparator(
            BSTR RHS) = 0;

        virtual HRESULT get_RefreshPeriod(
            long *RHS /Out/) = 0;

        virtual HRESULT put_RefreshPeriod(
            long RHS) = 0;

        virtual HRESULT ResetTimer() = 0;

        virtual HRESULT get_WebSelectionType(
            XlWebSelectionType *RHS /Out/) = 0;

        virtual HRESULT put_WebSelectionType(
            XlWebSelectionType RHS) = 0;

        virtual HRESULT get_WebFormatting(
            XlWebFormatting *RHS /Out/) = 0;

        virtual HRESULT put_WebFormatting(
            XlWebFormatting RHS) = 0;

        virtual HRESULT get_WebTables(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_WebTables(
            BSTR RHS) = 0;

        virtual HRESULT get_WebPreFormattedTextToColumns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebPreFormattedTextToColumns(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_WebSingleBlockTextImport(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebSingleBlockTextImport(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_WebDisableDateRecognition(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebDisableDateRecognition(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_WebConsecutiveDelimitersAsOne(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebConsecutiveDelimitersAsOne(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_WebDisableRedirections(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebDisableRedirections(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EditWebPage(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_EditWebPage(
            VARIANT RHS) = 0;

        virtual HRESULT get_SourceConnectionFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceConnectionFile(
            BSTR RHS) = 0;

        virtual HRESULT get_SourceDataFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceDataFile(
            BSTR RHS) = 0;

        virtual HRESULT get_RobustConnect(
            XlRobustConnect *RHS /Out/) = 0;

        virtual HRESULT put_RobustConnect(
            XlRobustConnect RHS) = 0;

        virtual HRESULT get_TextFileTrailingMinusNumbers(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileTrailingMinusNumbers(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT SaveAsODC(
            BSTR ODCFileName,
            VARIANT Description = argMissing2(),
            VARIANT Keywords = argMissing2()) = 0;

        virtual HRESULT get_ListObject(
            ListObject **RHS /Out/) = 0;

        virtual HRESULT get_TextFileVisualLayout(
            XlTextVisualLayoutType *RHS /Out/) = 0;

        virtual HRESULT put_TextFileVisualLayout(
            XlTextVisualLayoutType RHS) = 0;

        virtual HRESULT get_WorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_Sort(
            Sort **RHS /Out/) = 0;

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

        VARIANT_BOOL getFieldNames();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FieldNames(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FieldNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFieldNames(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FieldNames(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FieldNames()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FieldNames, get=getFieldNames, set=setFieldNames)

        VARIANT_BOOL getRowNumbers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RowNumbers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowNumbers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRowNumbers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RowNumbers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RowNumbers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RowNumbers, get=getRowNumbers, set=setRowNumbers)

        VARIANT_BOOL getFillAdjacentFormulas();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FillAdjacentFormulas(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FillAdjacentFormulas()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFillAdjacentFormulas(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FillAdjacentFormulas(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FillAdjacentFormulas()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FillAdjacentFormulas, get=getFillAdjacentFormulas, set=setFillAdjacentFormulas)

        VARIANT_BOOL getHasAutoFormat();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasAutoFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasAutoFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasAutoFormat(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasAutoFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasAutoFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasAutoFormat, get=getHasAutoFormat, set=setHasAutoFormat)

        VARIANT_BOOL getRefreshOnFileOpen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RefreshOnFileOpen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefreshOnFileOpen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRefreshOnFileOpen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RefreshOnFileOpen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RefreshOnFileOpen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RefreshOnFileOpen, get=getRefreshOnFileOpen, set=setRefreshOnFileOpen)

        VARIANT_BOOL getRefreshing();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Refreshing(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Refreshing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Refreshing, get=getRefreshing)

        VARIANT_BOOL getFetchedRowOverflow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FetchedRowOverflow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FetchedRowOverflow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FetchedRowOverflow, get=getFetchedRowOverflow)

        VARIANT_BOOL getBackgroundQuery();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BackgroundQuery(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundQuery()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackgroundQuery(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackgroundQuery(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackgroundQuery()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackgroundQuery, get=getBackgroundQuery, set=setBackgroundQuery)

        XlCellInsertionMode getRefreshStyle();
        %MethodCode
            etapi::XlCellInsertionMode prop = (etapi::XlCellInsertionMode)0;
            HRESULT hr = sipCpp->get_RefreshStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefreshStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRefreshStyle(XlCellInsertionMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RefreshStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RefreshStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RefreshStyle, get=getRefreshStyle, set=setRefreshStyle)

        VARIANT_BOOL getEnableRefresh();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableRefresh(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableRefresh()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableRefresh(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableRefresh(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableRefresh()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableRefresh, get=getEnableRefresh, set=setEnableRefresh)

        VARIANT_BOOL getSavePassword();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SavePassword(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SavePassword()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSavePassword(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SavePassword(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SavePassword()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SavePassword, get=getSavePassword, set=setSavePassword)

        Range* getDestination();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Destination(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Destination()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Destination, get=getDestination)

        VARIANT getConnection();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Connection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Connection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConnection(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Connection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Connection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Connection, get=getConnection, set=setConnection)

        VARIANT getSql();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Sql(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sql()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSql(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Sql(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Sql()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Sql, get=getSql, set=setSql)

        BSTR getPostText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PostText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PostText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPostText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PostText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PostText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PostText, get=getPostText, set=setPostText)

        Range* getResultRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_ResultRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ResultRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ResultRange, get=getResultRange)

        Parameters* getParameters();
        %MethodCode
            etapi::Parameters *prop = nullptr;
            HRESULT hr = sipCpp->get_Parameters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Parameters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Parameters, get=getParameters)

        IDispatch* getRecordset();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Recordset(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Recordset()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Recordset, get=getRecordset)

        VARIANT_BOOL getSaveData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SaveData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveData, get=getSaveData, set=setSaveData)

        VARIANT_BOOL getTablesOnlyFromHTML();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TablesOnlyFromHTML(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TablesOnlyFromHTML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTablesOnlyFromHTML(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TablesOnlyFromHTML(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TablesOnlyFromHTML()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TablesOnlyFromHTML, get=getTablesOnlyFromHTML, set=setTablesOnlyFromHTML)

        VARIANT_BOOL getEnableEditing();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableEditing(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableEditing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableEditing(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableEditing(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableEditing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableEditing, get=getEnableEditing, set=setEnableEditing)

        long getTextFilePlatform();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_TextFilePlatform(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFilePlatform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFilePlatform(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFilePlatform(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFilePlatform()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFilePlatform, get=getTextFilePlatform, set=setTextFilePlatform)

        long getTextFileStartRow();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_TextFileStartRow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileStartRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileStartRow(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileStartRow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileStartRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileStartRow, get=getTextFileStartRow, set=setTextFileStartRow)

        XlTextParsingType getTextFileParseType();
        %MethodCode
            etapi::XlTextParsingType prop = (etapi::XlTextParsingType)0;
            HRESULT hr = sipCpp->get_TextFileParseType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileParseType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileParseType(XlTextParsingType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileParseType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileParseType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileParseType, get=getTextFileParseType, set=setTextFileParseType)

        XlTextQualifier getTextFileTextQualifier();
        %MethodCode
            etapi::XlTextQualifier prop = (etapi::XlTextQualifier)0;
            HRESULT hr = sipCpp->get_TextFileTextQualifier(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileTextQualifier()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileTextQualifier(XlTextQualifier prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileTextQualifier(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileTextQualifier()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileTextQualifier, get=getTextFileTextQualifier, set=setTextFileTextQualifier)

        VARIANT_BOOL getTextFileConsecutiveDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileConsecutiveDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileConsecutiveDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileConsecutiveDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileConsecutiveDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileConsecutiveDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileConsecutiveDelimiter, get=getTextFileConsecutiveDelimiter, set=setTextFileConsecutiveDelimiter)

        VARIANT_BOOL getTextFileTabDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileTabDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileTabDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileTabDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileTabDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileTabDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileTabDelimiter, get=getTextFileTabDelimiter, set=setTextFileTabDelimiter)

        VARIANT_BOOL getTextFileSemicolonDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileSemicolonDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileSemicolonDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileSemicolonDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileSemicolonDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileSemicolonDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileSemicolonDelimiter, get=getTextFileSemicolonDelimiter, set=setTextFileSemicolonDelimiter)

        VARIANT_BOOL getTextFileCommaDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileCommaDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileCommaDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileCommaDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileCommaDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileCommaDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileCommaDelimiter, get=getTextFileCommaDelimiter, set=setTextFileCommaDelimiter)

        VARIANT_BOOL getTextFileSpaceDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileSpaceDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileSpaceDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileSpaceDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileSpaceDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileSpaceDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileSpaceDelimiter, get=getTextFileSpaceDelimiter, set=setTextFileSpaceDelimiter)

        BSTR getTextFileOtherDelimiter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextFileOtherDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileOtherDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileOtherDelimiter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileOtherDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileOtherDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileOtherDelimiter, get=getTextFileOtherDelimiter, set=setTextFileOtherDelimiter)

        VARIANT getTextFileColumnDataTypes();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_TextFileColumnDataTypes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileColumnDataTypes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileColumnDataTypes(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileColumnDataTypes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileColumnDataTypes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileColumnDataTypes, get=getTextFileColumnDataTypes, set=setTextFileColumnDataTypes)

        VARIANT getTextFileFixedColumnWidths();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_TextFileFixedColumnWidths(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileFixedColumnWidths()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileFixedColumnWidths(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileFixedColumnWidths(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileFixedColumnWidths()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileFixedColumnWidths, get=getTextFileFixedColumnWidths, set=setTextFileFixedColumnWidths)

        VARIANT_BOOL getPreserveColumnInfo();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PreserveColumnInfo(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreserveColumnInfo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreserveColumnInfo(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreserveColumnInfo(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreserveColumnInfo()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreserveColumnInfo, get=getPreserveColumnInfo, set=setPreserveColumnInfo)

        VARIANT_BOOL getPreserveFormatting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PreserveFormatting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreserveFormatting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreserveFormatting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreserveFormatting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreserveFormatting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreserveFormatting, get=getPreserveFormatting, set=setPreserveFormatting)

        VARIANT_BOOL getAdjustColumnWidth();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AdjustColumnWidth(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AdjustColumnWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAdjustColumnWidth(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AdjustColumnWidth(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AdjustColumnWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AdjustColumnWidth, get=getAdjustColumnWidth, set=setAdjustColumnWidth)

        VARIANT getCommandText();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CommandText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCommandText(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CommandText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CommandText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CommandText, get=getCommandText, set=setCommandText)

        XlCmdType getCommandType();
        %MethodCode
            etapi::XlCmdType prop = (etapi::XlCmdType)0;
            HRESULT hr = sipCpp->get_CommandType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCommandType(XlCmdType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CommandType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CommandType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CommandType, get=getCommandType, set=setCommandType)

        VARIANT_BOOL getTextFilePromptOnRefresh();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFilePromptOnRefresh(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFilePromptOnRefresh()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFilePromptOnRefresh(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFilePromptOnRefresh(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFilePromptOnRefresh()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFilePromptOnRefresh, get=getTextFilePromptOnRefresh, set=setTextFilePromptOnRefresh)

        XlQueryType getQueryType();
        %MethodCode
            etapi::XlQueryType prop = (etapi::XlQueryType)0;
            HRESULT hr = sipCpp->get_QueryType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_QueryType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=QueryType, get=getQueryType)

        VARIANT_BOOL getMaintainConnection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MaintainConnection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MaintainConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMaintainConnection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MaintainConnection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MaintainConnection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MaintainConnection, get=getMaintainConnection, set=setMaintainConnection)

        BSTR getTextFileDecimalSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextFileDecimalSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileDecimalSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileDecimalSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileDecimalSeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileDecimalSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileDecimalSeparator, get=getTextFileDecimalSeparator, set=setTextFileDecimalSeparator)

        BSTR getTextFileThousandsSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextFileThousandsSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileThousandsSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileThousandsSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileThousandsSeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileThousandsSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileThousandsSeparator, get=getTextFileThousandsSeparator, set=setTextFileThousandsSeparator)

        long getRefreshPeriod();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RefreshPeriod(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefreshPeriod()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRefreshPeriod(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RefreshPeriod(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RefreshPeriod()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RefreshPeriod, get=getRefreshPeriod, set=setRefreshPeriod)

        XlWebSelectionType getWebSelectionType();
        %MethodCode
            etapi::XlWebSelectionType prop = (etapi::XlWebSelectionType)0;
            HRESULT hr = sipCpp->get_WebSelectionType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebSelectionType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWebSelectionType(XlWebSelectionType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WebSelectionType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WebSelectionType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WebSelectionType, get=getWebSelectionType, set=setWebSelectionType)

        XlWebFormatting getWebFormatting();
        %MethodCode
            etapi::XlWebFormatting prop = (etapi::XlWebFormatting)0;
            HRESULT hr = sipCpp->get_WebFormatting(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebFormatting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWebFormatting(XlWebFormatting prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WebFormatting(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WebFormatting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WebFormatting, get=getWebFormatting, set=setWebFormatting)

        BSTR getWebTables();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_WebTables(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebTables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWebTables(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WebTables(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WebTables()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WebTables, get=getWebTables, set=setWebTables)

        VARIANT_BOOL getWebPreFormattedTextToColumns();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WebPreFormattedTextToColumns(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebPreFormattedTextToColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWebPreFormattedTextToColumns(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WebPreFormattedTextToColumns(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WebPreFormattedTextToColumns()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WebPreFormattedTextToColumns, get=getWebPreFormattedTextToColumns, set=setWebPreFormattedTextToColumns)

        VARIANT_BOOL getWebSingleBlockTextImport();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WebSingleBlockTextImport(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebSingleBlockTextImport()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWebSingleBlockTextImport(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WebSingleBlockTextImport(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WebSingleBlockTextImport()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WebSingleBlockTextImport, get=getWebSingleBlockTextImport, set=setWebSingleBlockTextImport)

        VARIANT_BOOL getWebDisableDateRecognition();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WebDisableDateRecognition(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebDisableDateRecognition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWebDisableDateRecognition(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WebDisableDateRecognition(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WebDisableDateRecognition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WebDisableDateRecognition, get=getWebDisableDateRecognition, set=setWebDisableDateRecognition)

        VARIANT_BOOL getWebConsecutiveDelimitersAsOne();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WebConsecutiveDelimitersAsOne(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebConsecutiveDelimitersAsOne()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWebConsecutiveDelimitersAsOne(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WebConsecutiveDelimitersAsOne(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WebConsecutiveDelimitersAsOne()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WebConsecutiveDelimitersAsOne, get=getWebConsecutiveDelimitersAsOne, set=setWebConsecutiveDelimitersAsOne)

        VARIANT_BOOL getWebDisableRedirections();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WebDisableRedirections(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebDisableRedirections()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWebDisableRedirections(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WebDisableRedirections(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WebDisableRedirections()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WebDisableRedirections, get=getWebDisableRedirections, set=setWebDisableRedirections)

        VARIANT getEditWebPage();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_EditWebPage(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EditWebPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEditWebPage(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EditWebPage(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EditWebPage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EditWebPage, get=getEditWebPage, set=setEditWebPage)

        BSTR getSourceConnectionFile();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceConnectionFile(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceConnectionFile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSourceConnectionFile(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SourceConnectionFile(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SourceConnectionFile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SourceConnectionFile, get=getSourceConnectionFile, set=setSourceConnectionFile)

        BSTR getSourceDataFile();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceDataFile(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceDataFile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSourceDataFile(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SourceDataFile(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SourceDataFile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SourceDataFile, get=getSourceDataFile, set=setSourceDataFile)

        XlRobustConnect getRobustConnect();
        %MethodCode
            etapi::XlRobustConnect prop = (etapi::XlRobustConnect)0;
            HRESULT hr = sipCpp->get_RobustConnect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RobustConnect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRobustConnect(XlRobustConnect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RobustConnect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RobustConnect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RobustConnect, get=getRobustConnect, set=setRobustConnect)

        VARIANT_BOOL getTextFileTrailingMinusNumbers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileTrailingMinusNumbers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileTrailingMinusNumbers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileTrailingMinusNumbers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileTrailingMinusNumbers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileTrailingMinusNumbers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileTrailingMinusNumbers, get=getTextFileTrailingMinusNumbers, set=setTextFileTrailingMinusNumbers)

        ListObject* getListObject();
        %MethodCode
            etapi::ListObject *prop = nullptr;
            HRESULT hr = sipCpp->get_ListObject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListObject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListObject, get=getListObject)

        XlTextVisualLayoutType getTextFileVisualLayout();
        %MethodCode
            etapi::XlTextVisualLayoutType prop = (etapi::XlTextVisualLayoutType)0;
            HRESULT hr = sipCpp->get_TextFileVisualLayout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileVisualLayout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileVisualLayout(XlTextVisualLayoutType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileVisualLayout(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileVisualLayout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileVisualLayout, get=getTextFileVisualLayout, set=setTextFileVisualLayout)

        WorkbookConnection* getWorkbookConnection();
        %MethodCode
            etapi::WorkbookConnection *prop = nullptr;
            HRESULT hr = sipCpp->get_WorkbookConnection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WorkbookConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WorkbookConnection, get=getWorkbookConnection)

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
    };
};
