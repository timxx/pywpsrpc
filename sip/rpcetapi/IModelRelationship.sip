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
    struct IModelRelationship : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ForeignKeyTable(
            ModelTable **RHS /Out/) = 0;

        virtual HRESULT get_ForeignKeyColumn(
            ModelTableColumn **RHS /Out/) = 0;

        virtual HRESULT get_PrimaryKeyTable(
            ModelTable **RHS /Out/) = 0;

        virtual HRESULT get_PrimaryKeyColumn(
            ModelTableColumn **RHS /Out/) = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Active(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

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

        ModelTable* getForeignKeyTable();
        %MethodCode
            etapi::ModelTable *prop = nullptr;
            HRESULT hr = sipCpp->get_ForeignKeyTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ForeignKeyTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ForeignKeyTable, get=getForeignKeyTable)

        ModelTableColumn* getForeignKeyColumn();
        %MethodCode
            etapi::ModelTableColumn *prop = nullptr;
            HRESULT hr = sipCpp->get_ForeignKeyColumn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ForeignKeyColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ForeignKeyColumn, get=getForeignKeyColumn)

        ModelTable* getPrimaryKeyTable();
        %MethodCode
            etapi::ModelTable *prop = nullptr;
            HRESULT hr = sipCpp->get_PrimaryKeyTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrimaryKeyTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrimaryKeyTable, get=getPrimaryKeyTable)

        ModelTableColumn* getPrimaryKeyColumn();
        %MethodCode
            etapi::ModelTableColumn *prop = nullptr;
            HRESULT hr = sipCpp->get_PrimaryKeyColumn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrimaryKeyColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrimaryKeyColumn, get=getPrimaryKeyColumn)

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

        PyObject* setActive(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Active(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Active()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Active, get=getActive, set=setActive)
    };
};
