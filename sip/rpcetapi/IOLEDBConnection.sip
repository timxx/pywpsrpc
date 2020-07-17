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
    struct IOLEDBConnection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ADOConnection(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BackgroundQuery(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundQuery(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT CancelRefresh() = 0;

        virtual HRESULT get_CommandText(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CommandText(
            VARIANT RHS) = 0;

        virtual HRESULT get_CommandType(
            XlCmdType *RHS /Out/) = 0;

        virtual HRESULT put_CommandType(
            XlCmdType RHS) = 0;

        virtual HRESULT get_Connection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Connection(
            VARIANT RHS) = 0;

        virtual HRESULT get_EnableRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LocalConnection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_LocalConnection(
            VARIANT RHS) = 0;

        virtual HRESULT get_MaintainConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MaintainConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT MakeConnection() = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT get_RefreshDate(
            DATE *RHS /Out/) = 0;

        virtual HRESULT get_Refreshing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RefreshOnFileOpen(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RefreshOnFileOpen(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RefreshPeriod(
            long *RHS /Out/) = 0;

        virtual HRESULT put_RefreshPeriod(
            long RHS) = 0;

        virtual HRESULT get_RobustConnect(
            XlRobustConnect *RHS /Out/) = 0;

        virtual HRESULT put_RobustConnect(
            XlRobustConnect RHS) = 0;

        virtual HRESULT SaveAsODC(
            BSTR ODCFileName,
            VARIANT Description = argMissing2(),
            VARIANT Keywords = argMissing2()) = 0;

        virtual HRESULT get_SavePassword(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SavePassword(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceConnectionFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceConnectionFile(
            BSTR RHS) = 0;

        virtual HRESULT get_SourceDataFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceDataFile(
            BSTR RHS) = 0;

        virtual HRESULT get_OLAP(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_UseLocalConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseLocalConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MaxDrillthroughRecords(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MaxDrillthroughRecords(
            long RHS) = 0;

        virtual HRESULT get_IsConnected(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ServerCredentialsMethod(
            XlCredentialsMethod *RHS /Out/) = 0;

        virtual HRESULT put_ServerCredentialsMethod(
            XlCredentialsMethod RHS) = 0;

        virtual HRESULT get_ServerSSOApplicationID(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ServerSSOApplicationID(
            BSTR RHS) = 0;

        virtual HRESULT get_AlwaysUseConnectionFile(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AlwaysUseConnectionFile(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ServerFillColor(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerFillColor(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ServerFontStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerFontStyle(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ServerNumberFormat(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerNumberFormat(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ServerTextColor(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerTextColor(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RetrieveInOfficeUILang(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RetrieveInOfficeUILang(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Reconnect() = 0;

        virtual HRESULT get_CalculatedMembers(
            CalculatedMembers **RHS /Out/) = 0;

        virtual HRESULT get_LocaleID(
            long *RHS /Out/) = 0;

        virtual HRESULT put_LocaleID(
            long RHS) = 0;

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

        long getMaxDrillthroughRecords();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MaxDrillthroughRecords(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MaxDrillthroughRecords()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMaxDrillthroughRecords(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MaxDrillthroughRecords(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MaxDrillthroughRecords()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MaxDrillthroughRecords, get=getMaxDrillthroughRecords, set=setMaxDrillthroughRecords)

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

        XlCredentialsMethod getServerCredentialsMethod();
        %MethodCode
            etapi::XlCredentialsMethod prop = (etapi::XlCredentialsMethod)0;
            HRESULT hr = sipCpp->get_ServerCredentialsMethod(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerCredentialsMethod()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setServerCredentialsMethod(XlCredentialsMethod prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ServerCredentialsMethod(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ServerCredentialsMethod()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ServerCredentialsMethod, get=getServerCredentialsMethod, set=setServerCredentialsMethod)

        BSTR getServerSSOApplicationID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ServerSSOApplicationID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerSSOApplicationID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setServerSSOApplicationID(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ServerSSOApplicationID(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ServerSSOApplicationID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ServerSSOApplicationID, get=getServerSSOApplicationID, set=setServerSSOApplicationID)

        VARIANT_BOOL getAlwaysUseConnectionFile();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AlwaysUseConnectionFile(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlwaysUseConnectionFile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlwaysUseConnectionFile(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlwaysUseConnectionFile(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlwaysUseConnectionFile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlwaysUseConnectionFile, get=getAlwaysUseConnectionFile, set=setAlwaysUseConnectionFile)

        VARIANT_BOOL getServerFillColor();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ServerFillColor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerFillColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setServerFillColor(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ServerFillColor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ServerFillColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ServerFillColor, get=getServerFillColor, set=setServerFillColor)

        VARIANT_BOOL getServerFontStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ServerFontStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerFontStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setServerFontStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ServerFontStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ServerFontStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ServerFontStyle, get=getServerFontStyle, set=setServerFontStyle)

        VARIANT_BOOL getServerNumberFormat();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ServerNumberFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerNumberFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setServerNumberFormat(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ServerNumberFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ServerNumberFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ServerNumberFormat, get=getServerNumberFormat, set=setServerNumberFormat)

        VARIANT_BOOL getServerTextColor();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ServerTextColor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerTextColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setServerTextColor(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ServerTextColor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ServerTextColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ServerTextColor, get=getServerTextColor, set=setServerTextColor)

        VARIANT_BOOL getRetrieveInOfficeUILang();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RetrieveInOfficeUILang(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RetrieveInOfficeUILang()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRetrieveInOfficeUILang(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RetrieveInOfficeUILang(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RetrieveInOfficeUILang()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RetrieveInOfficeUILang, get=getRetrieveInOfficeUILang, set=setRetrieveInOfficeUILang)

        CalculatedMembers* getCalculatedMembers();
        %MethodCode
            etapi::CalculatedMembers *prop = nullptr;
            HRESULT hr = sipCpp->get_CalculatedMembers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalculatedMembers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CalculatedMembers, get=getCalculatedMembers)

        long getLocaleID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_LocaleID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LocaleID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocaleID(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LocaleID(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LocaleID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LocaleID, get=getLocaleID, set=setLocaleID)
    };
};
