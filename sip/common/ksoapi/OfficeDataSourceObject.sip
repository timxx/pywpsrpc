/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct OfficeDataSourceObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ConnectString(
            BSTR *pbstrConnect /Out/) = 0;

        virtual HRESULT put_ConnectString(
            BSTR pbstrConnect) = 0;

        virtual HRESULT get_Table(
            BSTR *pbstrTable /Out/) = 0;

        virtual HRESULT put_Table(
            BSTR pbstrTable) = 0;

        virtual HRESULT get_DataSource(
            BSTR *pbstrSrc /Out/) = 0;

        virtual HRESULT put_DataSource(
            BSTR pbstrSrc) = 0;

        virtual HRESULT get_Columns(
            IDispatch **ppColumns /Out/) = 0;

        virtual HRESULT get_RowCount(
            long *pcRows /Out/) = 0;

        virtual HRESULT get_Filters(
            IDispatch **ppFilters /Out/) = 0;

        virtual HRESULT Move(
            MsoMoveRow MsoMoveRow,
            int RowNbr = 0,
            int *rval /Out/ = 0) = 0;

        virtual HRESULT Open(
            BSTR bstrSrc = 0,
            BSTR bstrConnect = 0,
            BSTR bstrTable = 0,
            long fOpenExclusive = 0,
            long fNeverPrompt = 1) = 0;

        virtual HRESULT SetSortOrder(
            BSTR SortField1,
            VARIANT_BOOL SortAscending1 = -1,
            BSTR SortField2 = 0,
            VARIANT_BOOL SortAscending2 = -1,
            BSTR SortField3 = 0,
            VARIANT_BOOL SortAscending3 = -1) = 0;

        virtual HRESULT ApplyFilter() = 0;

        BSTR getConnectString();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ConnectString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConnectString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConnectString(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConnectString(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConnectString()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConnectString, get=getConnectString, set=setConnectString)

        BSTR getTable();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Table(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Table()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTable(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Table(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Table()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Table, get=getTable, set=setTable)

        BSTR getDataSource();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DataSource(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataSource()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDataSource(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DataSource(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DataSource()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DataSource, get=getDataSource, set=setDataSource)

        IDispatch* getColumns();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Columns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Columns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Columns, get=getColumns)

        long getRowCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RowCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RowCount, get=getRowCount)

        IDispatch* getFilters();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Filters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Filters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Filters, get=getFilters)
    };
};
