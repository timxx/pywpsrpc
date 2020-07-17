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
    struct IPivotItem : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ChildItems(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_DataRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            BSTR RHS) = 0;

        virtual HRESULT get_LabelRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_ParentItem(
            PivotItem **RHS /Out/) = 0;

        virtual HRESULT get_ParentShowDetail(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Position(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            long RHS) = 0;

        virtual HRESULT get_ShowDetail(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowDetail(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceName(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR RHS) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_IsCalculated(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RecordCount(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR RHS) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_DrilledDown(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DrilledDown(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_StandardFormula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_StandardFormula(
            BSTR RHS) = 0;

        virtual HRESULT get_SourceNameStandard(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT DrillTo(
            BSTR Field) = 0;

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

        PivotField* getParent();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_Parent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Parent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

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

        PivotItem* getParentItem();
        %MethodCode
            etapi::PivotItem *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentItem(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentItem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentItem, get=getParentItem)

        VARIANT_BOOL getParentShowDetail();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ParentShowDetail(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentShowDetail()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentShowDetail, get=getParentShowDetail)

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

        VARIANT getSourceName();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
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

        VARIANT_BOOL getVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

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

        long getRecordCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RecordCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecordCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RecordCount, get=getRecordCount)

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

        BSTR getSourceNameStandard();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceNameStandard(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceNameStandard()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SourceNameStandard, get=getSourceNameStandard)
    };
};
