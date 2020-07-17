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
    struct IPivotField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Calculation(
            XlPivotFieldCalculation *RHS /Out/) = 0;

        virtual HRESULT put_Calculation(
            XlPivotFieldCalculation RHS) = 0;

        virtual HRESULT get_ChildField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_ChildItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_CurrentPage(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CurrentPage(
            VARIANT RHS) = 0;

        virtual HRESULT get_DataRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_DataType(
            XlPivotFieldDataType *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            BSTR RHS) = 0;

        virtual HRESULT get_Function(
            XlConsolidationFunction *RHS /Out/) = 0;

        virtual HRESULT put_Function(
            XlConsolidationFunction RHS) = 0;

        virtual HRESULT get_GroupLevel(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_HiddenItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_LabelRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR RHS) = 0;

        virtual HRESULT get_Orientation(
            XlPivotFieldOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlPivotFieldOrientation RHS) = 0;

        virtual HRESULT get_ShowAllItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAllItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ParentField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_ParentItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT PivotItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Position(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            VARIANT RHS) = 0;

        virtual HRESULT get_SourceName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Subtotals(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_Subtotals(
            VARIANT Index = argMissing2(),
            VARIANT RHS = argMissing2()) = 0;

        virtual HRESULT get_BaseField(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_BaseField(
            VARIANT RHS) = 0;

        virtual HRESULT get_BaseItem(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_BaseItem(
            VARIANT RHS) = 0;

        virtual HRESULT get_TotalLevels(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR RHS) = 0;

        virtual HRESULT get_VisibleItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT CalculatedItems(
            CalculatedItems **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

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

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR RHS) = 0;

        virtual HRESULT get_IsCalculated(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_MemoryUsed(
            long *RHS /Out/) = 0;

        virtual HRESULT get_ServerBased(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ServerBased(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT _AutoSort(
            long Order,
            BSTR Field) = 0;

        virtual HRESULT AutoShow(
            long Type,
            long Range,
            long Count,
            BSTR Field) = 0;

        virtual HRESULT get_AutoSortOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT get_AutoSortField(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_AutoShowType(
            long *RHS /Out/) = 0;

        virtual HRESULT get_AutoShowRange(
            long *RHS /Out/) = 0;

        virtual HRESULT get_AutoShowCount(
            long *RHS /Out/) = 0;

        virtual HRESULT get_AutoShowField(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_LayoutBlankLine(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LayoutBlankLine(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LayoutSubtotalLocation(
            XlSubtototalLocationType *RHS /Out/) = 0;

        virtual HRESULT put_LayoutSubtotalLocation(
            XlSubtototalLocationType RHS) = 0;

        virtual HRESULT get_LayoutPageBreak(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LayoutPageBreak(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LayoutForm(
            XlLayoutFormType *RHS /Out/) = 0;

        virtual HRESULT put_LayoutForm(
            XlLayoutFormType RHS) = 0;

        virtual HRESULT get_SubtotalName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SubtotalName(
            BSTR RHS) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_DrilledDown(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DrilledDown(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CubeField(
            CubeField **RHS /Out/) = 0;

        virtual HRESULT get_CurrentPageName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CurrentPageName(
            BSTR RHS) = 0;

        virtual HRESULT get_StandardFormula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_StandardFormula(
            BSTR RHS) = 0;

        virtual HRESULT get_HiddenItemsList(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_HiddenItemsList(
            VARIANT RHS) = 0;

        virtual HRESULT get_DatabaseSort(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DatabaseSort(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IsMemberProperty(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_PropertyParentField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_PropertyOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PropertyOrder(
            long RHS) = 0;

        virtual HRESULT get_EnableItemSelection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableItemSelection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CurrentPageList(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CurrentPageList(
            VARIANT RHS) = 0;

        virtual HRESULT AddPageItem(
            BSTR Item,
            VARIANT ClearList = argMissing2()) = 0;

        virtual HRESULT get_Hidden(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Hidden(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT DrillTo(
            BSTR Field) = 0;

        virtual HRESULT get_UseMemberPropertyAsCaption(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseMemberPropertyAsCaption(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MemberPropertyCaption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_MemberPropertyCaption(
            BSTR RHS) = 0;

        virtual HRESULT get_DisplayAsTooltip(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayAsTooltip(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayInReport(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayInReport(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayAsCaption(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_LayoutCompactRow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LayoutCompactRow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeNewItemsInFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeNewItemsInFilter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_VisibleItemsList(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VisibleItemsList(
            VARIANT RHS) = 0;

        virtual HRESULT get_PivotFilters(
            PivotFilters **RHS /Out/) = 0;

        virtual HRESULT get_AutoSortPivotLine(
            PivotLine **RHS /Out/) = 0;

        virtual HRESULT get_AutoSortCustomSubtotal(
            long *RHS /Out/) = 0;

        virtual HRESULT get_ShowingInAxis(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_EnableMultiplePageItems(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableMultiplePageItems(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AllItemsVisible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT ClearManualFilter() = 0;

        virtual HRESULT ClearAllFilters() = 0;

        virtual HRESULT ClearValueFilters() = 0;

        virtual HRESULT ClearLabelFilters() = 0;

        virtual HRESULT AutoSort(
            long Order,
            BSTR Field,
            VARIANT PivotLine = argMissing2(),
            VARIANT CustomSubtotal = argMissing2()) = 0;

        virtual HRESULT get_SourceCaption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ShowDetail(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowDetail(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RepeatLabels(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RepeatLabels(
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

        XlPivotFieldCalculation getCalculation();
        %MethodCode
            etapi::XlPivotFieldCalculation prop = (etapi::XlPivotFieldCalculation)0;
            HRESULT hr = sipCpp->get_Calculation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Calculation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCalculation(XlPivotFieldCalculation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Calculation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Calculation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Calculation, get=getCalculation, set=setCalculation)

        PivotField* getChildField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_ChildField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChildField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChildField, get=getChildField)

        VARIANT getCurrentPage();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CurrentPage(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CurrentPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCurrentPage(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CurrentPage(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CurrentPage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CurrentPage, get=getCurrentPage, set=setCurrentPage)

        Range* getDataRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_DataRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataRange, get=getDataRange)

        XlPivotFieldDataType getDataType();
        %MethodCode
            etapi::XlPivotFieldDataType prop = (etapi::XlPivotFieldDataType)0;
            HRESULT hr = sipCpp->get_DataType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataType, get=getDataType)

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

        PyObject* set_Default(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put__Default(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__Default()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_Default, get=get_Default, set=set_Default)

        XlConsolidationFunction getFunction();
        %MethodCode
            etapi::XlConsolidationFunction prop = (etapi::XlConsolidationFunction)0;
            HRESULT hr = sipCpp->get_Function(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Function()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFunction(XlConsolidationFunction prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Function(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Function()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Function, get=getFunction, set=setFunction)

        VARIANT getGroupLevel();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_GroupLevel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GroupLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GroupLevel, get=getGroupLevel)

        Range* getLabelRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_LabelRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LabelRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LabelRange, get=getLabelRange)

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

        BSTR getNumberFormat();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NumberFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormat(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormat, get=getNumberFormat, set=setNumberFormat)

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

        PivotField* getParentField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentField, get=getParentField)

        VARIANT getPosition();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Position(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Position()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPosition(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Position(*a0);
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

        VARIANT getBaseField();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_BaseField(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BaseField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBaseField(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BaseField(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BaseField()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BaseField, get=getBaseField, set=setBaseField)

        VARIANT getBaseItem();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_BaseItem(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BaseItem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBaseItem(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BaseItem(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BaseItem()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BaseItem, get=getBaseItem, set=setBaseItem)

        VARIANT getTotalLevels();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_TotalLevels(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TotalLevels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TotalLevels, get=getTotalLevels)

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

        PyObject* setValue(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Value(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Value()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Value, get=getValue, set=setValue)

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

        BSTR getFormula();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Formula(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Formula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormula(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Formula(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Formula()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Formula, get=getFormula, set=setFormula)

        VARIANT_BOOL getIsCalculated();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsCalculated(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsCalculated()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsCalculated, get=getIsCalculated)

        long getMemoryUsed();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MemoryUsed(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MemoryUsed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MemoryUsed, get=getMemoryUsed)

        VARIANT_BOOL getServerBased();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ServerBased(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerBased()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setServerBased(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ServerBased(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ServerBased()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ServerBased, get=getServerBased, set=setServerBased)

        long getAutoSortOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AutoSortOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoSortOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoSortOrder, get=getAutoSortOrder)

        BSTR getAutoSortField();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AutoSortField(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoSortField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoSortField, get=getAutoSortField)

        long getAutoShowType();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AutoShowType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoShowType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoShowType, get=getAutoShowType)

        long getAutoShowRange();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AutoShowRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoShowRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoShowRange, get=getAutoShowRange)

        long getAutoShowCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AutoShowCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoShowCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoShowCount, get=getAutoShowCount)

        BSTR getAutoShowField();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AutoShowField(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoShowField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoShowField, get=getAutoShowField)

        VARIANT_BOOL getLayoutBlankLine();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LayoutBlankLine(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LayoutBlankLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayoutBlankLine(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LayoutBlankLine(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LayoutBlankLine()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LayoutBlankLine, get=getLayoutBlankLine, set=setLayoutBlankLine)

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

        VARIANT_BOOL getLayoutPageBreak();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LayoutPageBreak(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LayoutPageBreak()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayoutPageBreak(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LayoutPageBreak(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LayoutPageBreak()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LayoutPageBreak, get=getLayoutPageBreak, set=setLayoutPageBreak)

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

        BSTR getSubtotalName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SubtotalName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SubtotalName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubtotalName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SubtotalName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SubtotalName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SubtotalName, get=getSubtotalName, set=setSubtotalName)

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

        VARIANT_BOOL getDrilledDown();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DrilledDown(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DrilledDown()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDrilledDown(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DrilledDown(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DrilledDown()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DrilledDown, get=getDrilledDown, set=setDrilledDown)

        CubeField* getCubeField();
        %MethodCode
            etapi::CubeField *prop = nullptr;
            HRESULT hr = sipCpp->get_CubeField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CubeField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CubeField, get=getCubeField)

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

        BSTR getStandardFormula();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_StandardFormula(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StandardFormula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStandardFormula(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StandardFormula(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StandardFormula()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StandardFormula, get=getStandardFormula, set=setStandardFormula)

        VARIANT getHiddenItemsList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_HiddenItemsList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HiddenItemsList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHiddenItemsList(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HiddenItemsList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HiddenItemsList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HiddenItemsList, get=getHiddenItemsList, set=setHiddenItemsList)

        VARIANT_BOOL getDatabaseSort();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DatabaseSort(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DatabaseSort()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDatabaseSort(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DatabaseSort(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DatabaseSort()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DatabaseSort, get=getDatabaseSort, set=setDatabaseSort)

        VARIANT_BOOL getIsMemberProperty();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsMemberProperty(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsMemberProperty()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsMemberProperty, get=getIsMemberProperty)

        PivotField* getPropertyParentField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_PropertyParentField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PropertyParentField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PropertyParentField, get=getPropertyParentField)

        long getPropertyOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PropertyOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PropertyOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPropertyOrder(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PropertyOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PropertyOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PropertyOrder, get=getPropertyOrder, set=setPropertyOrder)

        VARIANT_BOOL getEnableItemSelection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableItemSelection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableItemSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableItemSelection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableItemSelection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableItemSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableItemSelection, get=getEnableItemSelection, set=setEnableItemSelection)

        VARIANT getCurrentPageList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CurrentPageList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CurrentPageList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCurrentPageList(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CurrentPageList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CurrentPageList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CurrentPageList, get=getCurrentPageList, set=setCurrentPageList)

        VARIANT_BOOL getHidden();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Hidden(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHidden(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Hidden(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Hidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Hidden, get=getHidden, set=setHidden)

        VARIANT_BOOL getUseMemberPropertyAsCaption();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseMemberPropertyAsCaption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseMemberPropertyAsCaption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseMemberPropertyAsCaption(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseMemberPropertyAsCaption(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseMemberPropertyAsCaption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseMemberPropertyAsCaption, get=getUseMemberPropertyAsCaption, set=setUseMemberPropertyAsCaption)

        BSTR getMemberPropertyCaption();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MemberPropertyCaption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MemberPropertyCaption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMemberPropertyCaption(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MemberPropertyCaption(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MemberPropertyCaption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MemberPropertyCaption, get=getMemberPropertyCaption, set=setMemberPropertyCaption)

        VARIANT_BOOL getDisplayAsTooltip();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAsTooltip(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAsTooltip()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAsTooltip(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAsTooltip(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAsTooltip()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAsTooltip, get=getDisplayAsTooltip, set=setDisplayAsTooltip)

        VARIANT_BOOL getDisplayInReport();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayInReport(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayInReport()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayInReport(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayInReport(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayInReport()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayInReport, get=getDisplayInReport, set=setDisplayInReport)

        VARIANT_BOOL getDisplayAsCaption();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAsCaption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAsCaption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DisplayAsCaption, get=getDisplayAsCaption)

        VARIANT_BOOL getLayoutCompactRow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LayoutCompactRow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LayoutCompactRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayoutCompactRow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LayoutCompactRow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LayoutCompactRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LayoutCompactRow, get=getLayoutCompactRow, set=setLayoutCompactRow)

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

        VARIANT getVisibleItemsList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_VisibleItemsList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisibleItemsList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisibleItemsList(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VisibleItemsList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VisibleItemsList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VisibleItemsList, get=getVisibleItemsList, set=setVisibleItemsList)

        PivotFilters* getPivotFilters();
        %MethodCode
            etapi::PivotFilters *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotFilters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotFilters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotFilters, get=getPivotFilters)

        PivotLine* getAutoSortPivotLine();
        %MethodCode
            etapi::PivotLine *prop = nullptr;
            HRESULT hr = sipCpp->get_AutoSortPivotLine(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoSortPivotLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoSortPivotLine, get=getAutoSortPivotLine)

        long getAutoSortCustomSubtotal();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AutoSortCustomSubtotal(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoSortCustomSubtotal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoSortCustomSubtotal, get=getAutoSortCustomSubtotal)

        VARIANT_BOOL getShowingInAxis();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowingInAxis(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowingInAxis()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ShowingInAxis, get=getShowingInAxis)

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

        BSTR getSourceCaption();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceCaption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceCaption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SourceCaption, get=getSourceCaption)

        VARIANT_BOOL getShowDetail();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowDetail(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDetail()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDetail(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDetail(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDetail()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDetail, get=getShowDetail, set=setShowDetail)

        VARIANT_BOOL getRepeatLabels();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RepeatLabels(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RepeatLabels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRepeatLabels(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RepeatLabels(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RepeatLabels()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RepeatLabels, get=getRepeatLabels, set=setRepeatLabels)
    };
};
