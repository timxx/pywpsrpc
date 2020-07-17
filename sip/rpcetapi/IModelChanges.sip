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
    struct IModelChanges : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_TablesAdded(
            ModelTableNames **RHS /Out/) = 0;

        virtual HRESULT get_TablesDeleted(
            ModelTableNames **RHS /Out/) = 0;

        virtual HRESULT get_TablesModified(
            ModelTableNames **RHS /Out/) = 0;

        virtual HRESULT get_TableNamesChanged(
            ModelTableNameChanges **RHS /Out/) = 0;

        virtual HRESULT get_RelationshipChange(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ColumnsAdded(
            ModelColumnNames **RHS /Out/) = 0;

        virtual HRESULT get_ColumnsDeleted(
            ModelColumnNames **RHS /Out/) = 0;

        virtual HRESULT get_ColumnsChanged(
            ModelColumnChanges **RHS /Out/) = 0;

        virtual HRESULT get_MeasuresAdded(
            ModelMeasureNames **RHS /Out/) = 0;

        virtual HRESULT get_UnknownChange(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Source(
            XlModelChangeSource *RHS /Out/) = 0;

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

        ModelTableNames* getTablesAdded();
        %MethodCode
            etapi::ModelTableNames *prop = nullptr;
            HRESULT hr = sipCpp->get_TablesAdded(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TablesAdded()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TablesAdded, get=getTablesAdded)

        ModelTableNames* getTablesDeleted();
        %MethodCode
            etapi::ModelTableNames *prop = nullptr;
            HRESULT hr = sipCpp->get_TablesDeleted(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TablesDeleted()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TablesDeleted, get=getTablesDeleted)

        ModelTableNames* getTablesModified();
        %MethodCode
            etapi::ModelTableNames *prop = nullptr;
            HRESULT hr = sipCpp->get_TablesModified(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TablesModified()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TablesModified, get=getTablesModified)

        ModelTableNameChanges* getTableNamesChanged();
        %MethodCode
            etapi::ModelTableNameChanges *prop = nullptr;
            HRESULT hr = sipCpp->get_TableNamesChanged(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableNamesChanged()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TableNamesChanged, get=getTableNamesChanged)

        VARIANT_BOOL getRelationshipChange();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RelationshipChange(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelationshipChange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RelationshipChange, get=getRelationshipChange)

        ModelColumnNames* getColumnsAdded();
        %MethodCode
            etapi::ModelColumnNames *prop = nullptr;
            HRESULT hr = sipCpp->get_ColumnsAdded(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnsAdded()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColumnsAdded, get=getColumnsAdded)

        ModelColumnNames* getColumnsDeleted();
        %MethodCode
            etapi::ModelColumnNames *prop = nullptr;
            HRESULT hr = sipCpp->get_ColumnsDeleted(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnsDeleted()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColumnsDeleted, get=getColumnsDeleted)

        ModelColumnChanges* getColumnsChanged();
        %MethodCode
            etapi::ModelColumnChanges *prop = nullptr;
            HRESULT hr = sipCpp->get_ColumnsChanged(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnsChanged()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColumnsChanged, get=getColumnsChanged)

        ModelMeasureNames* getMeasuresAdded();
        %MethodCode
            etapi::ModelMeasureNames *prop = nullptr;
            HRESULT hr = sipCpp->get_MeasuresAdded(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MeasuresAdded()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MeasuresAdded, get=getMeasuresAdded)

        VARIANT_BOOL getUnknownChange();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UnknownChange(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UnknownChange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UnknownChange, get=getUnknownChange)

        XlModelChangeSource getSource();
        %MethodCode
            etapi::XlModelChangeSource prop = (etapi::XlModelChangeSource)0;
            HRESULT hr = sipCpp->get_Source(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Source()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Source, get=getSource)
    };
};
