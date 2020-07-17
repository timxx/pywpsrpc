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
    struct IPivotCache : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_BackgroundQuery(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundQuery(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Connection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Connection(
            VARIANT RHS) = 0;

        virtual HRESULT get_EnableRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_MemoryUsed(
            long *RHS /Out/) = 0;

        virtual HRESULT get_OptimizeCache(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_OptimizeCache(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RecordCount(
            long *RHS /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT get_RefreshDate(
            DATE *RHS /Out/) = 0;

        virtual HRESULT get_RefreshName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_RefreshOnFileOpen(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RefreshOnFileOpen(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Sql(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Sql(
            VARIANT RHS) = 0;

        virtual HRESULT get_SavePassword(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SavePassword(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceData(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_SourceData(
            VARIANT RHS) = 0;

        virtual HRESULT get_CommandText(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CommandText(
            VARIANT RHS) = 0;

        virtual HRESULT get_CommandType(
            XlCmdType *RHS /Out/) = 0;

        virtual HRESULT put_CommandType(
            XlCmdType RHS) = 0;

        virtual HRESULT get_QueryType(
            XlQueryType *RHS /Out/) = 0;

        virtual HRESULT get_MaintainConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MaintainConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RefreshPeriod(
            long *RHS /Out/) = 0;

        virtual HRESULT put_RefreshPeriod(
            long RHS) = 0;

        virtual HRESULT get_Recordset(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT putref_Recordset(
            IDispatch *RHS) = 0;

        virtual HRESULT ResetTimer() = 0;

        virtual HRESULT get_LocalConnection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_LocalConnection(
            VARIANT RHS) = 0;

        virtual HRESULT CreatePivotTable(
            VARIANT TableDestination,
            VARIANT TableName = argMissing2(),
            VARIANT ReadData = argMissing2(),
            VARIANT DefaultVersion = argMissing2(),
            PivotTable **RHS /Out/ = 0) = 0;

        virtual HRESULT get_UseLocalConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseLocalConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ADOConnection(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_IsConnected(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT MakeConnection() = 0;

        virtual HRESULT get_OLAP(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SourceType(
            XlPivotTableSourceType *RHS /Out/) = 0;

        virtual HRESULT get_MissingItemsLimit(
            XlPivotTableMissingItems *RHS /Out/) = 0;

        virtual HRESULT put_MissingItemsLimit(
            XlPivotTableMissingItems RHS) = 0;

        virtual HRESULT get_SourceConnectionFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceConnectionFile(
            BSTR RHS) = 0;

        virtual HRESULT get_SourceDataFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_RobustConnect(
            XlRobustConnect *RHS /Out/) = 0;

        virtual HRESULT put_RobustConnect(
            XlRobustConnect RHS) = 0;

        virtual HRESULT SaveAsODC(
            BSTR ODCFileName,
            VARIANT Description = argMissing2(),
            VARIANT Keywords = argMissing2()) = 0;

        virtual HRESULT get_WorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_Version(
            XlPivotTableVersionList *RHS /Out/) = 0;

        virtual HRESULT get_UpgradeOnRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UpgradeOnRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT CreatePivotChart(
            VARIANT ChartDestination,
            VARIANT XlChartType = argMissing2(),
            VARIANT Left = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT Width = argMissing2(),
            VARIANT Height = argMissing2(),
            Shape **RHS /Out/ = 0) = 0;

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

        long getMemoryUsed();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MemoryUsed(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MemoryUsed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MemoryUsed, get=getMemoryUsed)

        VARIANT_BOOL getOptimizeCache();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OptimizeCache(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OptimizeCache()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOptimizeCache(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OptimizeCache(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OptimizeCache()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OptimizeCache, get=getOptimizeCache, set=setOptimizeCache)

        long getRecordCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RecordCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecordCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RecordCount, get=getRecordCount)

        DATE getRefreshDate();
        %MethodCode
            DATE prop = 0;
            HRESULT hr = sipCpp->get_RefreshDate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefreshDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RefreshDate, get=getRefreshDate)

        BSTR getRefreshName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RefreshName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefreshName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RefreshName, get=getRefreshName)

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

        VARIANT getSourceData();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_SourceData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSourceData(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SourceData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SourceData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SourceData, get=getSourceData, set=setSourceData)

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

        VARIANT getLocalConnection();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_LocalConnection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LocalConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocalConnection(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LocalConnection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LocalConnection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LocalConnection, get=getLocalConnection, set=setLocalConnection)

        VARIANT_BOOL getUseLocalConnection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseLocalConnection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseLocalConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseLocalConnection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseLocalConnection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseLocalConnection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseLocalConnection, get=getUseLocalConnection, set=setUseLocalConnection)

        IDispatch* getADOConnection();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_ADOConnection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ADOConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ADOConnection, get=getADOConnection)

        VARIANT_BOOL getIsConnected();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsConnected(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsConnected()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsConnected, get=getIsConnected)

        VARIANT_BOOL getOLAP();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OLAP(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OLAP()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OLAP, get=getOLAP)

        XlPivotTableSourceType getSourceType();
        %MethodCode
            etapi::XlPivotTableSourceType prop = (etapi::XlPivotTableSourceType)0;
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

        XlPivotTableMissingItems getMissingItemsLimit();
        %MethodCode
            etapi::XlPivotTableMissingItems prop = (etapi::XlPivotTableMissingItems)0;
            HRESULT hr = sipCpp->get_MissingItemsLimit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MissingItemsLimit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMissingItemsLimit(XlPivotTableMissingItems prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MissingItemsLimit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MissingItemsLimit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MissingItemsLimit, get=getMissingItemsLimit, set=setMissingItemsLimit)

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

        %Property(name=SourceDataFile, get=getSourceDataFile)

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

        XlPivotTableVersionList getVersion();
        %MethodCode
            etapi::XlPivotTableVersionList prop = (etapi::XlPivotTableVersionList)0;
            HRESULT hr = sipCpp->get_Version(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Version()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Version, get=getVersion)

        VARIANT_BOOL getUpgradeOnRefresh();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UpgradeOnRefresh(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpgradeOnRefresh()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpgradeOnRefresh(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpgradeOnRefresh(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpgradeOnRefresh()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpgradeOnRefresh, get=getUpgradeOnRefresh, set=setUpgradeOnRefresh)
    };
};
