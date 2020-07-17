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
    struct IModel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ModelTables(
            ModelTables **RHS /Out/) = 0;

        virtual HRESULT get_ModelRelationships(
            ModelRelationships **RHS /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT AddConnection(
            WorkbookConnection *ConnectionToDataSource,
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT CreateModelWorkbookConnection(
            VARIANT ModelTable,
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_DataModelConnection(
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Initialize() = 0;

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

        ModelRelationships* getModelRelationships();
        %MethodCode
            etapi::ModelRelationships *prop = nullptr;
            HRESULT hr = sipCpp->get_ModelRelationships(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ModelRelationships()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ModelRelationships, get=getModelRelationships)

        WorkbookConnection* getDataModelConnection();
        %MethodCode
            etapi::WorkbookConnection *prop = nullptr;
            HRESULT hr = sipCpp->get_DataModelConnection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataModelConnection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataModelConnection, get=getDataModelConnection)

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

        %Property(name=Name, get=getName)
    };
};
