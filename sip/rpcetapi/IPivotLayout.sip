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
    struct IPivotLayout : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ColumnFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_DataFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_PageFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_RowFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_HiddenFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_VisibleFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_PivotFields(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_CubeFields(
            CubeFields **RHS /Out/) = 0;

        virtual HRESULT get_PivotCache(
            PivotCache **RHS /Out/) = 0;

        virtual HRESULT get_PivotTable(
            PivotTable **RHS /Out/) = 0;

        virtual HRESULT get_InnerDetail(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_InnerDetail(
            BSTR RHS) = 0;

        virtual HRESULT AddFields(
            VARIANT RowFields = argMissing2(),
            VARIANT ColumnFields = argMissing2(),
            VARIANT PageFields = argMissing2(),
            VARIANT AppendField = argMissing2()) = 0;

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

        CubeFields* getCubeFields();
        %MethodCode
            etapi::CubeFields *prop = nullptr;
            HRESULT hr = sipCpp->get_CubeFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CubeFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CubeFields, get=getCubeFields)

        PivotCache* getPivotCache();
        %MethodCode
            etapi::PivotCache *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotCache(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotCache()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotCache, get=getPivotCache)

        PivotTable* getPivotTable();
        %MethodCode
            etapi::PivotTable *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotTable, get=getPivotTable)

        BSTR getInnerDetail();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_InnerDetail(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InnerDetail()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInnerDetail(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InnerDetail(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InnerDetail()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InnerDetail, get=getInnerDetail, set=setInnerDetail)
    };
};
