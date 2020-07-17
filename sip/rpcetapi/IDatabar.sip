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
    struct IDatabar : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Priority(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Priority(
            long RHS) = 0;

        virtual HRESULT get_StopIfTrue(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AppliesTo(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_MinPoint(
            ConditionValue **RHS /Out/) = 0;

        virtual HRESULT get_MaxPoint(
            ConditionValue **RHS /Out/) = 0;

        virtual HRESULT get_PercentMin(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PercentMin(
            long RHS) = 0;

        virtual HRESULT get_PercentMax(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PercentMax(
            long RHS) = 0;

        virtual HRESULT get_BarColor(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ShowValue(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowValue(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT SetFirstPriority() = 0;

        virtual HRESULT SetLastPriority() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT ModifyAppliesToRange(
            Range *Range) = 0;

        virtual HRESULT get_PTCondition(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ScopeType(
            XlPivotConditionScope *RHS /Out/) = 0;

        virtual HRESULT put_ScopeType(
            XlPivotConditionScope RHS) = 0;

        virtual HRESULT get_Direction(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Direction(
            long RHS) = 0;

        virtual HRESULT get_BarFillType(
            XlDataBarFillType *RHS /Out/) = 0;

        virtual HRESULT put_BarFillType(
            XlDataBarFillType RHS) = 0;

        virtual HRESULT get_AxisPosition(
            XlDataBarAxisPosition *RHS /Out/) = 0;

        virtual HRESULT put_AxisPosition(
            XlDataBarAxisPosition RHS) = 0;

        virtual HRESULT get_AxisColor(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BarBorder(
            DataBarBorder **RHS /Out/) = 0;

        virtual HRESULT get_NegativeBarFormat(
            NegativeBarFormat **RHS /Out/) = 0;

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

        long getPriority();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Priority(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Priority()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPriority(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Priority(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Priority()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Priority, get=getPriority, set=setPriority)

        VARIANT_BOOL getStopIfTrue();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StopIfTrue(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StopIfTrue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=StopIfTrue, get=getStopIfTrue)

        Range* getAppliesTo();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_AppliesTo(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AppliesTo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AppliesTo, get=getAppliesTo)

        ConditionValue* getMinPoint();
        %MethodCode
            etapi::ConditionValue *prop = nullptr;
            HRESULT hr = sipCpp->get_MinPoint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinPoint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MinPoint, get=getMinPoint)

        ConditionValue* getMaxPoint();
        %MethodCode
            etapi::ConditionValue *prop = nullptr;
            HRESULT hr = sipCpp->get_MaxPoint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MaxPoint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MaxPoint, get=getMaxPoint)

        long getPercentMin();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PercentMin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PercentMin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPercentMin(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PercentMin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PercentMin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PercentMin, get=getPercentMin, set=setPercentMin)

        long getPercentMax();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PercentMax(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PercentMax()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPercentMax(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PercentMax(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PercentMax()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PercentMax, get=getPercentMax, set=setPercentMax)

        IDispatch* getBarColor();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_BarColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BarColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BarColor, get=getBarColor)

        VARIANT_BOOL getShowValue();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowValue(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowValue(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowValue(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowValue()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowValue, get=getShowValue, set=setShowValue)

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

        long getType();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

        VARIANT_BOOL getPTCondition();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PTCondition(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PTCondition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PTCondition, get=getPTCondition)

        XlPivotConditionScope getScopeType();
        %MethodCode
            etapi::XlPivotConditionScope prop = (etapi::XlPivotConditionScope)0;
            HRESULT hr = sipCpp->get_ScopeType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScopeType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScopeType(XlPivotConditionScope prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScopeType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScopeType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScopeType, get=getScopeType, set=setScopeType)

        long getDirection();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Direction(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Direction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDirection(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Direction(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Direction()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Direction, get=getDirection, set=setDirection)

        XlDataBarFillType getBarFillType();
        %MethodCode
            etapi::XlDataBarFillType prop = (etapi::XlDataBarFillType)0;
            HRESULT hr = sipCpp->get_BarFillType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BarFillType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBarFillType(XlDataBarFillType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BarFillType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BarFillType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BarFillType, get=getBarFillType, set=setBarFillType)

        XlDataBarAxisPosition getAxisPosition();
        %MethodCode
            etapi::XlDataBarAxisPosition prop = (etapi::XlDataBarAxisPosition)0;
            HRESULT hr = sipCpp->get_AxisPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AxisPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAxisPosition(XlDataBarAxisPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AxisPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AxisPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AxisPosition, get=getAxisPosition, set=setAxisPosition)

        IDispatch* getAxisColor();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_AxisColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AxisColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AxisColor, get=getAxisColor)

        DataBarBorder* getBarBorder();
        %MethodCode
            etapi::DataBarBorder *prop = nullptr;
            HRESULT hr = sipCpp->get_BarBorder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BarBorder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BarBorder, get=getBarBorder)

        NegativeBarFormat* getNegativeBarFormat();
        %MethodCode
            etapi::NegativeBarFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_NegativeBarFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NegativeBarFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NegativeBarFormat, get=getNegativeBarFormat)
    };
};
