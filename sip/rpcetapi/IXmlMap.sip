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
    struct IXmlMap : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_IsExportable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ShowImportExportValidationErrors(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowImportExportValidationErrors(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SaveDataSourceDefinition(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SaveDataSourceDefinition(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AdjustColumnWidth(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AdjustColumnWidth(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PreserveColumnFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveColumnFilter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PreserveNumberFormatting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveNumberFormatting(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AppendOnImport(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AppendOnImport(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RootElementName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_RootElementNamespace(
            XmlNamespace **RHS /Out/) = 0;

        virtual HRESULT get_Schemas(
            XmlSchemas **RHS /Out/) = 0;

        virtual HRESULT get_DataBinding(
            XmlDataBinding **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Import(
            BSTR Url,
            VARIANT Overwrite = argMissing2(),
            XlXmlImportResult *RHS /Out/ = 0) = 0;

        virtual HRESULT ImportXml(
            BSTR XmlData,
            VARIANT Overwrite = argMissing2(),
            XlXmlImportResult *RHS /Out/ = 0) = 0;

        virtual HRESULT Export(
            BSTR Url,
            VARIANT Overwrite = argMissing2(),
            XlXmlExportResult *RHS /Out/ = 0) = 0;

        virtual HRESULT ExportXml(
            BSTR *Data /Out/,
            XlXmlExportResult *RHS /Out/) = 0;

        virtual HRESULT get_WorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

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

        VARIANT_BOOL getIsExportable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsExportable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsExportable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsExportable, get=getIsExportable)

        VARIANT_BOOL getShowImportExportValidationErrors();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowImportExportValidationErrors(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowImportExportValidationErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowImportExportValidationErrors(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowImportExportValidationErrors(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowImportExportValidationErrors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowImportExportValidationErrors, get=getShowImportExportValidationErrors, set=setShowImportExportValidationErrors)

        VARIANT_BOOL getSaveDataSourceDefinition();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SaveDataSourceDefinition(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveDataSourceDefinition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveDataSourceDefinition(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveDataSourceDefinition(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveDataSourceDefinition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveDataSourceDefinition, get=getSaveDataSourceDefinition, set=setSaveDataSourceDefinition)

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

        VARIANT_BOOL getPreserveColumnFilter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PreserveColumnFilter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreserveColumnFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreserveColumnFilter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreserveColumnFilter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreserveColumnFilter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreserveColumnFilter, get=getPreserveColumnFilter, set=setPreserveColumnFilter)

        VARIANT_BOOL getPreserveNumberFormatting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PreserveNumberFormatting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreserveNumberFormatting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreserveNumberFormatting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreserveNumberFormatting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreserveNumberFormatting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreserveNumberFormatting, get=getPreserveNumberFormatting, set=setPreserveNumberFormatting)

        VARIANT_BOOL getAppendOnImport();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AppendOnImport(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AppendOnImport()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAppendOnImport(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AppendOnImport(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AppendOnImport()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AppendOnImport, get=getAppendOnImport, set=setAppendOnImport)

        BSTR getRootElementName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RootElementName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RootElementName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RootElementName, get=getRootElementName)

        XmlNamespace* getRootElementNamespace();
        %MethodCode
            etapi::XmlNamespace *prop = nullptr;
            HRESULT hr = sipCpp->get_RootElementNamespace(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RootElementNamespace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RootElementNamespace, get=getRootElementNamespace)

        XmlSchemas* getSchemas();
        %MethodCode
            etapi::XmlSchemas *prop = nullptr;
            HRESULT hr = sipCpp->get_Schemas(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Schemas()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Schemas, get=getSchemas)

        XmlDataBinding* getDataBinding();
        %MethodCode
            etapi::XmlDataBinding *prop = nullptr;
            HRESULT hr = sipCpp->get_DataBinding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataBinding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataBinding, get=getDataBinding)

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
    };
};
