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
    struct IPivotCell : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_PivotCellType(
            XlPivotCellType *RHS /Out/) = 0;

        virtual HRESULT get_PivotTable(
            PivotTable **RHS /Out/) = 0;

        virtual HRESULT get_DataField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_PivotField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_PivotItem(
            PivotItem **RHS /Out/) = 0;

        virtual HRESULT get_RowItems(
            PivotItemList **RHS /Out/) = 0;

        virtual HRESULT get_ColumnItems(
            PivotItemList **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Dummy18(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_CustomSubtotalFunction(
            XlConsolidationFunction *RHS /Out/) = 0;

        virtual HRESULT get_PivotRowLine(
            PivotLine **RHS /Out/) = 0;

        virtual HRESULT get_PivotColumnLine(
            PivotLine **RHS /Out/) = 0;

        virtual HRESULT AllocateChange() = 0;

        virtual HRESULT DiscardChange() = 0;

        virtual HRESULT get_DataSourceValue(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_CellChanged(
            XlCellChangedState *RHS /Out/) = 0;

        virtual HRESULT get_MDX(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ServerActions(
            Actions **RHS /Out/) = 0;

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

        XlPivotCellType getPivotCellType();
        %MethodCode
            etapi::XlPivotCellType prop = (etapi::XlPivotCellType)0;
            HRESULT hr = sipCpp->get_PivotCellType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotCellType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotCellType, get=getPivotCellType)

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

        PivotField* getDataField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_DataField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataField, get=getDataField)

        PivotField* getPivotField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotField, get=getPivotField)

        PivotItem* getPivotItem();
        %MethodCode
            etapi::PivotItem *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotItem(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotItem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotItem, get=getPivotItem)

        PivotItemList* getRowItems();
        %MethodCode
            etapi::PivotItemList *prop = nullptr;
            HRESULT hr = sipCpp->get_RowItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RowItems, get=getRowItems)

        PivotItemList* getColumnItems();
        %MethodCode
            etapi::PivotItemList *prop = nullptr;
            HRESULT hr = sipCpp->get_ColumnItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColumnItems, get=getColumnItems)

        Range* getRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        BSTR getDummy18();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Dummy18(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dummy18()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Dummy18, get=getDummy18)

        XlConsolidationFunction getCustomSubtotalFunction();
        %MethodCode
            etapi::XlConsolidationFunction prop = (etapi::XlConsolidationFunction)0;
            HRESULT hr = sipCpp->get_CustomSubtotalFunction(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomSubtotalFunction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomSubtotalFunction, get=getCustomSubtotalFunction)

        PivotLine* getPivotRowLine();
        %MethodCode
            etapi::PivotLine *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotRowLine(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotRowLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotRowLine, get=getPivotRowLine)

        PivotLine* getPivotColumnLine();
        %MethodCode
            etapi::PivotLine *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotColumnLine(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotColumnLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotColumnLine, get=getPivotColumnLine)

        VARIANT getDataSourceValue();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DataSourceValue(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataSourceValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataSourceValue, get=getDataSourceValue)

        XlCellChangedState getCellChanged();
        %MethodCode
            etapi::XlCellChangedState prop = (etapi::XlCellChangedState)0;
            HRESULT hr = sipCpp->get_CellChanged(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CellChanged()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CellChanged, get=getCellChanged)

        BSTR getMDX();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MDX(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MDX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MDX, get=getMDX)

        Actions* getServerActions();
        %MethodCode
            etapi::Actions *prop = nullptr;
            HRESULT hr = sipCpp->get_ServerActions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerActions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ServerActions, get=getServerActions)
    };
};
