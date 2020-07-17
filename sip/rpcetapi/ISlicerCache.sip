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
    struct ISlicerCache : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_OLAP(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SourceType(
            XlPivotTableSourceType *RHS /Out/) = 0;

        virtual HRESULT get_WorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_Slicers(
            Slicers **RHS /Out/) = 0;

        virtual HRESULT get_PivotTables(
            SlicerPivotTables **RHS /Out/) = 0;

        virtual HRESULT get_SlicerCacheLevels(
            SlicerCacheLevels **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_VisibleSlicerItems(
            SlicerItems **RHS /Out/) = 0;

        virtual HRESULT get_VisibleSlicerItemsList(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VisibleSlicerItemsList(
            VARIANT RHS) = 0;

        virtual HRESULT get_SlicerItems(
            SlicerItems **RHS /Out/) = 0;

        virtual HRESULT get_CrossFilterType(
            XlSlicerCrossFilterType *RHS /Out/) = 0;

        virtual HRESULT put_CrossFilterType(
            XlSlicerCrossFilterType RHS) = 0;

        virtual HRESULT get_SortItems(
            XlSlicerSort *RHS /Out/) = 0;

        virtual HRESULT put_SortItems(
            XlSlicerSort RHS) = 0;

        virtual HRESULT get_SourceName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SortUsingCustomLists(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SortUsingCustomLists(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowAllItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAllItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ClearManualFilter() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_TimelineState(
            TimelineState **RHS /Out/) = 0;

        virtual HRESULT ClearAllFilters() = 0;

        virtual HRESULT get_SlicerCacheType(
            XlSlicerCacheType *RHS /Out/) = 0;

        virtual HRESULT get_FilterCleared(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_List(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RequireManualUpdate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RequireManualUpdate(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ListObject(
            ListObject **RHS /Out/) = 0;

        virtual HRESULT ClearDateFilter() = 0;

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

        Slicers* getSlicers();
        %MethodCode
            etapi::Slicers *prop = nullptr;
            HRESULT hr = sipCpp->get_Slicers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Slicers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Slicers, get=getSlicers)

        SlicerPivotTables* getPivotTables();
        %MethodCode
            etapi::SlicerPivotTables *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotTables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotTables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotTables, get=getPivotTables)

        SlicerCacheLevels* getSlicerCacheLevels();
        %MethodCode
            etapi::SlicerCacheLevels *prop = nullptr;
            HRESULT hr = sipCpp->get_SlicerCacheLevels(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlicerCacheLevels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlicerCacheLevels, get=getSlicerCacheLevels)

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

        SlicerItems* getVisibleSlicerItems();
        %MethodCode
            etapi::SlicerItems *prop = nullptr;
            HRESULT hr = sipCpp->get_VisibleSlicerItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisibleSlicerItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VisibleSlicerItems, get=getVisibleSlicerItems)

        VARIANT getVisibleSlicerItemsList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_VisibleSlicerItemsList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisibleSlicerItemsList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisibleSlicerItemsList(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VisibleSlicerItemsList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VisibleSlicerItemsList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VisibleSlicerItemsList, get=getVisibleSlicerItemsList, set=setVisibleSlicerItemsList)

        SlicerItems* getSlicerItems();
        %MethodCode
            etapi::SlicerItems *prop = nullptr;
            HRESULT hr = sipCpp->get_SlicerItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlicerItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlicerItems, get=getSlicerItems)

        XlSlicerCrossFilterType getCrossFilterType();
        %MethodCode
            etapi::XlSlicerCrossFilterType prop = (etapi::XlSlicerCrossFilterType)0;
            HRESULT hr = sipCpp->get_CrossFilterType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CrossFilterType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCrossFilterType(XlSlicerCrossFilterType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CrossFilterType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CrossFilterType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CrossFilterType, get=getCrossFilterType, set=setCrossFilterType)

        XlSlicerSort getSortItems();
        %MethodCode
            etapi::XlSlicerSort prop = (etapi::XlSlicerSort)0;
            HRESULT hr = sipCpp->get_SortItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSortItems(XlSlicerSort prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SortItems(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SortItems()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SortItems, get=getSortItems, set=setSortItems)

        BSTR getSourceName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SourceName, get=getSourceName)

        VARIANT_BOOL getSortUsingCustomLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SortUsingCustomLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortUsingCustomLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSortUsingCustomLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SortUsingCustomLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SortUsingCustomLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SortUsingCustomLists, get=getSortUsingCustomLists, set=setSortUsingCustomLists)

        VARIANT_BOOL getShowAllItems();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAllItems(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAllItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAllItems(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAllItems(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAllItems()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAllItems, get=getShowAllItems, set=setShowAllItems)

        TimelineState* getTimelineState();
        %MethodCode
            etapi::TimelineState *prop = nullptr;
            HRESULT hr = sipCpp->get_TimelineState(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TimelineState()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TimelineState, get=getTimelineState)

        XlSlicerCacheType getSlicerCacheType();
        %MethodCode
            etapi::XlSlicerCacheType prop = (etapi::XlSlicerCacheType)0;
            HRESULT hr = sipCpp->get_SlicerCacheType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlicerCacheType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlicerCacheType, get=getSlicerCacheType)

        VARIANT_BOOL getFilterCleared();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FilterCleared(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FilterCleared()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FilterCleared, get=getFilterCleared)

        VARIANT_BOOL getList();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_List(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_List()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=List, get=getList)

        VARIANT_BOOL getRequireManualUpdate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RequireManualUpdate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RequireManualUpdate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRequireManualUpdate(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RequireManualUpdate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RequireManualUpdate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RequireManualUpdate, get=getRequireManualUpdate, set=setRequireManualUpdate)

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
    };
};
