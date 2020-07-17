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
    struct IWorkbookConnection : public IDispatch /Abstract/
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

        virtual HRESULT get_Description(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Description(
            BSTR RHS) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            BSTR RHS) = 0;

        virtual HRESULT get_Type(
            XlConnectionType *RHS /Out/) = 0;

        virtual HRESULT get_OLEDBConnection(
            OLEDBConnection **RHS /Out/) = 0;

        virtual HRESULT get_ODBCConnection(
            ODBCConnection **RHS /Out/) = 0;

        virtual HRESULT get_Ranges(
            Ranges **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT get_ModelConnection(
            ModelConnection **RHS /Out/) = 0;

        virtual HRESULT get_WorksheetDataConnection(
            WorksheetDataConnection **RHS /Out/) = 0;

        virtual HRESULT get_RefreshWithRefreshAll(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RefreshWithRefreshAll(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextConnection(
            TextConnection **RHS /Out/) = 0;

        virtual HRESULT get_DataFeedConnection(
            DataFeedConnection **RHS /Out/) = 0;

        virtual HRESULT get_InModel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ModelTables(
            ModelTables **RHS /Out/) = 0;

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

        BSTR getDescription();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Description(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Description()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDescription(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Description(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Description()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Description, get=getDescription, set=setDescription)

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

        PyObject* set_Default(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put__Default(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__Default()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_Default, get=get_Default, set=set_Default)

        XlConnectionType getType();
        %MethodCode
            etapi::XlConnectionType prop = (etapi::XlConnectionType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

        OLEDBConnection* getOLEDBConnection();
        %MethodCode
            etapi::OLEDBConnection *prop = nullptr;
            HRESULT hr = sipCpp->get_OLEDBConnection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OLEDBConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OLEDBConnection, get=getOLEDBConnection)

        ODBCConnection* getODBCConnection();
        %MethodCode
            etapi::ODBCConnection *prop = nullptr;
            HRESULT hr = sipCpp->get_ODBCConnection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ODBCConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ODBCConnection, get=getODBCConnection)

        Ranges* getRanges();
        %MethodCode
            etapi::Ranges *prop = nullptr;
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

        ModelConnection* getModelConnection();
        %MethodCode
            etapi::ModelConnection *prop = nullptr;
            HRESULT hr = sipCpp->get_ModelConnection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ModelConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ModelConnection, get=getModelConnection)

        WorksheetDataConnection* getWorksheetDataConnection();
        %MethodCode
            etapi::WorksheetDataConnection *prop = nullptr;
            HRESULT hr = sipCpp->get_WorksheetDataConnection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WorksheetDataConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WorksheetDataConnection, get=getWorksheetDataConnection)

        VARIANT_BOOL getRefreshWithRefreshAll();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RefreshWithRefreshAll(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefreshWithRefreshAll()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRefreshWithRefreshAll(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RefreshWithRefreshAll(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RefreshWithRefreshAll()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RefreshWithRefreshAll, get=getRefreshWithRefreshAll, set=setRefreshWithRefreshAll)

        TextConnection* getTextConnection();
        %MethodCode
            etapi::TextConnection *prop = nullptr;
            HRESULT hr = sipCpp->get_TextConnection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextConnection, get=getTextConnection)

        DataFeedConnection* getDataFeedConnection();
        %MethodCode
            etapi::DataFeedConnection *prop = nullptr;
            HRESULT hr = sipCpp->get_DataFeedConnection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataFeedConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataFeedConnection, get=getDataFeedConnection)

        VARIANT_BOOL getInModel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InModel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InModel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InModel, get=getInModel)

        ModelTables* getModelTables();
        %MethodCode
            etapi::ModelTables *prop = nullptr;
            HRESULT hr = sipCpp->get_ModelTables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ModelTables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ModelTables, get=getModelTables)
    };
};
