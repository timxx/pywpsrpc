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
    struct ISlicer : public IDispatch /Abstract/
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

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_DisableMoveResizeUI(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisableMoveResizeUI(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_RowHeight(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RowHeight(
            double RHS) = 0;

        virtual HRESULT get_ColumnWidth(
            double *RHS /Out/) = 0;

        virtual HRESULT put_ColumnWidth(
            double RHS) = 0;

        virtual HRESULT get_NumberOfColumns(
            long *RHS /Out/) = 0;

        virtual HRESULT put_NumberOfColumns(
            long RHS) = 0;

        virtual HRESULT get_DisplayHeader(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHeader(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SlicerCache(
            SlicerCache **RHS /Out/) = 0;

        virtual HRESULT get_SlicerCacheLevel(
            SlicerCacheLevel **RHS /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_Style(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT get_ActiveItem(
            SlicerItem **RHS /Out/) = 0;

        virtual HRESULT get_TimelineViewState(
            TimelineViewState **RHS /Out/) = 0;

        virtual HRESULT get_SlicerCacheType(
            XlSlicerCacheType *RHS /Out/) = 0;

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

        BSTR getCaption();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Caption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Caption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCaption(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Caption(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Caption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Caption, get=getCaption, set=setCaption)

        double getTop();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTop(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Top(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Top()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Top, get=getTop, set=setTop)

        double getLeft();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeft(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Left(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Left()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Left, get=getLeft, set=setLeft)

        VARIANT_BOOL getDisableMoveResizeUI();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisableMoveResizeUI(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableMoveResizeUI()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableMoveResizeUI(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableMoveResizeUI(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableMoveResizeUI()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableMoveResizeUI, get=getDisableMoveResizeUI, set=setDisableMoveResizeUI)

        double getWidth();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidth(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)

        double getHeight();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        double getRowHeight();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_RowHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRowHeight(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RowHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RowHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RowHeight, get=getRowHeight, set=setRowHeight)

        double getColumnWidth();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_ColumnWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColumnWidth(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColumnWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColumnWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColumnWidth, get=getColumnWidth, set=setColumnWidth)

        long getNumberOfColumns();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NumberOfColumns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberOfColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberOfColumns(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberOfColumns(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberOfColumns()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberOfColumns, get=getNumberOfColumns, set=setNumberOfColumns)

        VARIANT_BOOL getDisplayHeader();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayHeader(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayHeader(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayHeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayHeader, get=getDisplayHeader, set=setDisplayHeader)

        VARIANT_BOOL getLocked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Locked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Locked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Locked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Locked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Locked, get=getLocked, set=setLocked)

        SlicerCache* getSlicerCache();
        %MethodCode
            etapi::SlicerCache *prop = nullptr;
            HRESULT hr = sipCpp->get_SlicerCache(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlicerCache()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlicerCache, get=getSlicerCache)

        SlicerCacheLevel* getSlicerCacheLevel();
        %MethodCode
            etapi::SlicerCacheLevel *prop = nullptr;
            HRESULT hr = sipCpp->get_SlicerCacheLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlicerCacheLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlicerCacheLevel, get=getSlicerCacheLevel)

        Shape* getShape();
        %MethodCode
            etapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_Shape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shape, get=getShape)

        VARIANT getStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Style(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Style()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Style, get=getStyle, set=setStyle)

        SlicerItem* getActiveItem();
        %MethodCode
            etapi::SlicerItem *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveItem(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveItem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveItem, get=getActiveItem)

        TimelineViewState* getTimelineViewState();
        %MethodCode
            etapi::TimelineViewState *prop = nullptr;
            HRESULT hr = sipCpp->get_TimelineViewState(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TimelineViewState()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TimelineViewState, get=getTimelineViewState)

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
    };
};
