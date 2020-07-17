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
    struct IFormatCondition : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT _Modify(
            XlFormatConditionType Type,
            VARIANT Operator = argMissing2(),
            VARIANT Formula1 = argMissing2(),
            VARIANT Formula2 = argMissing2()) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Operator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Formula1(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Formula2(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **RHS /Out/) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Modify(
            XlFormatConditionType Type,
            VARIANT Operator = argMissing2(),
            VARIANT Formula1 = argMissing2(),
            VARIANT Formula2 = argMissing2(),
            VARIANT String = argMissing2(),
            VARIANT Operator2 = argMissing2()) = 0;

        virtual HRESULT get_Text(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR RHS) = 0;

        virtual HRESULT get_TextOperator(
            XlContainsOperator *RHS /Out/) = 0;

        virtual HRESULT put_TextOperator(
            XlContainsOperator RHS) = 0;

        virtual HRESULT get_DateOperator(
            XlTimePeriods *RHS /Out/) = 0;

        virtual HRESULT put_DateOperator(
            XlTimePeriods RHS) = 0;

        virtual HRESULT get_NumberFormat(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            VARIANT RHS) = 0;

        virtual HRESULT get_Priority(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Priority(
            long RHS) = 0;

        virtual HRESULT get_StopIfTrue(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_StopIfTrue(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AppliesTo(
            Range **RHS /Out/) = 0;

        virtual HRESULT ModifyAppliesToRange(
            Range *Range) = 0;

        virtual HRESULT SetFirstPriority() = 0;

        virtual HRESULT SetLastPriority() = 0;

        virtual HRESULT get_PTCondition(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ScopeType(
            XlPivotConditionScope *RHS /Out/) = 0;

        virtual HRESULT put_ScopeType(
            XlPivotConditionScope RHS) = 0;

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

        long getOperator();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Operator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Operator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Operator, get=getOperator)

        BSTR getFormula1();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Formula1(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Formula1()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Formula1, get=getFormula1)

        BSTR getFormula2();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Formula2(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Formula2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Formula2, get=getFormula2)

        Interior* getInterior();
        %MethodCode
            etapi::Interior *prop = nullptr;
            HRESULT hr = sipCpp->get_Interior(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Interior()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Interior, get=getInterior)

        Borders* getBorders();
        %MethodCode
            etapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Borders, get=getBorders)

        Font* getFont();
        %MethodCode
            etapi::Font *prop = nullptr;
            HRESULT hr = sipCpp->get_Font(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Font()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Font, get=getFont)

        BSTR getText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Text(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Text()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Text(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Text()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Text, get=getText, set=setText)

        XlContainsOperator getTextOperator();
        %MethodCode
            etapi::XlContainsOperator prop = (etapi::XlContainsOperator)0;
            HRESULT hr = sipCpp->get_TextOperator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextOperator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextOperator(XlContainsOperator prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextOperator(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextOperator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextOperator, get=getTextOperator, set=setTextOperator)

        XlTimePeriods getDateOperator();
        %MethodCode
            etapi::XlTimePeriods prop = (etapi::XlTimePeriods)0;
            HRESULT hr = sipCpp->get_DateOperator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateOperator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateOperator(XlTimePeriods prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateOperator(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateOperator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateOperator, get=getDateOperator, set=setDateOperator)

        VARIANT getNumberFormat();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
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

        PyObject* setNumberFormat(VARIANT prop);
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

        PyObject* setStopIfTrue(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StopIfTrue(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StopIfTrue()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StopIfTrue, get=getStopIfTrue, set=setStopIfTrue)

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
    };
};
