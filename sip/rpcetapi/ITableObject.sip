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
    struct ITableObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_RowNumbers(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RowNumbers(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FetchedRowOverflow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RefreshStyle(
            XlCellInsertionMode *RHS /Out/) = 0;

        virtual HRESULT put_RefreshStyle(
            XlCellInsertionMode RHS) = 0;

        virtual HRESULT get_EnableRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Destination(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ResultRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Refresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_EnableEditing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableEditing(
            VARIANT_BOOL RHS) = 0;

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

        virtual HRESULT get_ListObject(
            ListObject **RHS /Out/) = 0;

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
