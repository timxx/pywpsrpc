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
    struct ITop10 : public IDispatch /Abstract/
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

        virtual HRESULT put_StopIfTrue(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AppliesTo(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_TopBottom(
            XlTopBottom *RHS /Out/) = 0;

        virtual HRESULT put_TopBottom(
            XlTopBottom RHS) = 0;

        virtual HRESULT get_Rank(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Rank(
            long RHS) = 0;

        virtual HRESULT get_Percent(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Percent(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **RHS /Out/) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            VARIANT RHS) = 0;

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

        virtual HRESULT get_CalcFor(
            XlCalcFor *RHS /Out/) = 0;

        virtual HRESULT put_CalcFor(
            XlCalcFor RHS) = 0;

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

        XlTopBottom getTopBottom();
        %MethodCode
            etapi::XlTopBottom prop = (etapi::XlTopBottom)0;
            HRESULT hr = sipCpp->get_TopBottom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TopBottom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTopBottom(XlTopBottom prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TopBottom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TopBottom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TopBottom, get=getTopBottom, set=setTopBottom)

        long getRank();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Rank(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rank()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRank(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Rank(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Rank()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Rank, get=getRank, set=setRank)

        VARIANT_BOOL getPercent();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Percent(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Percent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPercent(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Percent(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Percent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Percent, get=getPercent, set=setPercent)

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

        XlCalcFor getCalcFor();
        %MethodCode
            etapi::XlCalcFor prop = (etapi::XlCalcFor)0;
            HRESULT hr = sipCpp->get_CalcFor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalcFor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCalcFor(XlCalcFor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CalcFor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CalcFor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CalcFor, get=getCalcFor, set=setCalcFor)
    };
};
