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
    struct CubeField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_CubeFieldType(
            XlCubeFieldType *RHS /Out/) = 0;

        virtual HRESULT get__Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Orientation(
            XlPivotFieldOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlPivotFieldOrientation RHS) = 0;

        virtual HRESULT get_Position(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            long RHS) = 0;

        virtual HRESULT get_TreeviewControl(
            TreeviewControl **RHS /Out/) = 0;

        virtual HRESULT get_DragToColumn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToColumn(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DragToHide(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToHide(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DragToPage(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToPage(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DragToRow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToRow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DragToData(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DragToData(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HiddenLevels(
            long *RHS /Out/) = 0;

        virtual HRESULT put_HiddenLevels(
            long RHS) = 0;

        virtual HRESULT get_HasMemberProperties(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_LayoutForm(
            XlLayoutFormType *RHS /Out/) = 0;

        virtual HRESULT put_LayoutForm(
            XlLayoutFormType RHS) = 0;

        virtual HRESULT get_PivotFields(
            PivotFields **RHS /Out/) = 0;

        virtual HRESULT _AddMemberPropertyField(
            BSTR Property,
            VARIANT PropertyOrder = argMissing2()) = 0;

        virtual HRESULT get_EnableMultiplePageItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableMultiplePageItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LayoutSubtotalLocation(
            XlSubtototalLocationType *RHS /Out/) = 0;

        virtual HRESULT put_LayoutSubtotalLocation(
            XlSubtototalLocationType RHS) = 0;

        virtual HRESULT get_ShowInFieldList(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowInFieldList(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT AddMemberPropertyField(
            BSTR Property,
            VARIANT PropertyOrder = argMissing2(),
            VARIANT PropertyDisplayedIn = argMissing2()) = 0;

        virtual HRESULT get_IncludeNewItemsInFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeNewItemsInFilter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CubeFieldSubType(
            XlCubeFieldSubType *RHS /Out/) = 0;

        virtual HRESULT get_AllItemsVisible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT ClearManualFilter() = 0;

        virtual HRESULT CreatePivotFields() = 0;

        virtual HRESULT get_CurrentPageName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CurrentPageName(
            BSTR RHS) = 0;

        virtual HRESULT get_IsDate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_FlattenHierarchies(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FlattenHierarchies(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HierarchizeDistinct(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HierarchizeDistinct(
            VARIANT_BOOL RHS) = 0;

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

        XlCubeFieldType getCubeFieldType();
        %MethodCode
            etapi::XlCubeFieldType prop = (etapi::XlCubeFieldType)0;
            HRESULT hr = sipCpp->get_CubeFieldType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CubeFieldType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CubeFieldType, get=getCubeFieldType)

        BSTR get_Caption();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__Caption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Caption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Caption, get=get_Caption)

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

        BSTR getValue();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Value(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Value, get=getValue)

        XlPivotFieldOrientation getOrientation();
        %MethodCode
            etapi::XlPivotFieldOrientation prop = (etapi::XlPivotFieldOrientation)0;
            HRESULT hr = sipCpp->get_Orientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Orientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrientation(XlPivotFieldOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Orientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Orientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Orientation, get=getOrientation, set=setOrientation)

        long getPosition();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Position(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Position()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPosition(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Position(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Position()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Position, get=getPosition, set=setPosition)

        TreeviewControl* getTreeviewControl();
        %MethodCode
            etapi::TreeviewControl *prop = nullptr;
            HRESULT hr = sipCpp->get_TreeviewControl(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TreeviewControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TreeviewControl, get=getTreeviewControl)

        VARIANT_BOOL getDragToColumn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DragToColumn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DragToColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDragToColumn(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DragToColumn(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DragToColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DragToColumn, get=getDragToColumn, set=setDragToColumn)

        VARIANT_BOOL getDragToHide();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DragToHide(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DragToHide()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDragToHide(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DragToHide(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DragToHide()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DragToHide, get=getDragToHide, set=setDragToHide)

        VARIANT_BOOL getDragToPage();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DragToPage(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DragToPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDragToPage(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DragToPage(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DragToPage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DragToPage, get=getDragToPage, set=setDragToPage)

        VARIANT_BOOL getDragToRow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DragToRow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DragToRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDragToRow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DragToRow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DragToRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DragToRow, get=getDragToRow, set=setDragToRow)

        VARIANT_BOOL getDragToData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DragToData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DragToData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDragToData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DragToData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DragToData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DragToData, get=getDragToData, set=setDragToData)

        long getHiddenLevels();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HiddenLevels(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HiddenLevels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHiddenLevels(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HiddenLevels(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HiddenLevels()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HiddenLevels, get=getHiddenLevels, set=setHiddenLevels)

        VARIANT_BOOL getHasMemberProperties();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasMemberProperties(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasMemberProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasMemberProperties, get=getHasMemberProperties)

        XlLayoutFormType getLayoutForm();
        %MethodCode
            etapi::XlLayoutFormType prop = (etapi::XlLayoutFormType)0;
            HRESULT hr = sipCpp->get_LayoutForm(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LayoutForm()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayoutForm(XlLayoutFormType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LayoutForm(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LayoutForm()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LayoutForm, get=getLayoutForm, set=setLayoutForm)

        PivotFields* getPivotFields();
        %MethodCode
            etapi::PivotFields *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotFields, get=getPivotFields)

        VARIANT_BOOL getEnableMultiplePageItems();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableMultiplePageItems(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableMultiplePageItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableMultiplePageItems(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableMultiplePageItems(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableMultiplePageItems()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableMultiplePageItems, get=getEnableMultiplePageItems, set=setEnableMultiplePageItems)

        XlSubtototalLocationType getLayoutSubtotalLocation();
        %MethodCode
            etapi::XlSubtototalLocationType prop = (etapi::XlSubtototalLocationType)0;
            HRESULT hr = sipCpp->get_LayoutSubtotalLocation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LayoutSubtotalLocation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayoutSubtotalLocation(XlSubtototalLocationType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LayoutSubtotalLocation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LayoutSubtotalLocation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LayoutSubtotalLocation, get=getLayoutSubtotalLocation, set=setLayoutSubtotalLocation)

        VARIANT_BOOL getShowInFieldList();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowInFieldList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowInFieldList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowInFieldList(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowInFieldList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowInFieldList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowInFieldList, get=getShowInFieldList, set=setShowInFieldList)

        VARIANT_BOOL getIncludeNewItemsInFilter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeNewItemsInFilter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeNewItemsInFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeNewItemsInFilter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeNewItemsInFilter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeNewItemsInFilter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeNewItemsInFilter, get=getIncludeNewItemsInFilter, set=setIncludeNewItemsInFilter)

        XlCubeFieldSubType getCubeFieldSubType();
        %MethodCode
            etapi::XlCubeFieldSubType prop = (etapi::XlCubeFieldSubType)0;
            HRESULT hr = sipCpp->get_CubeFieldSubType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CubeFieldSubType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CubeFieldSubType, get=getCubeFieldSubType)

        VARIANT_BOOL getAllItemsVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllItemsVisible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllItemsVisible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllItemsVisible, get=getAllItemsVisible)

        BSTR getCurrentPageName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CurrentPageName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CurrentPageName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCurrentPageName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CurrentPageName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CurrentPageName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CurrentPageName, get=getCurrentPageName, set=setCurrentPageName)

        VARIANT_BOOL getIsDate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsDate, get=getIsDate)

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

        VARIANT_BOOL getFlattenHierarchies();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FlattenHierarchies(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FlattenHierarchies()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFlattenHierarchies(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FlattenHierarchies(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FlattenHierarchies()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FlattenHierarchies, get=getFlattenHierarchies, set=setFlattenHierarchies)

        VARIANT_BOOL getHierarchizeDistinct();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HierarchizeDistinct(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HierarchizeDistinct()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHierarchizeDistinct(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HierarchizeDistinct(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HierarchizeDistinct()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HierarchizeDistinct, get=getHierarchizeDistinct, set=setHierarchizeDistinct)
    };
};
