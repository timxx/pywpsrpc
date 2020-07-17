/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct OMath : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Functions(
            OMathFunctions **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdOMathType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdOMathType prop) = 0;

        virtual HRESULT get_ParentOMath(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_ParentFunction(
            OMathFunction **prop /Out/) = 0;

        virtual HRESULT get_ParentRow(
            OMathMatRow **prop /Out/) = 0;

        virtual HRESULT get_ParentCol(
            OMathMatCol **prop /Out/) = 0;

        virtual HRESULT get_ParentArg(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_ArgIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_ArgSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_ArgSize(
            long prop) = 0;

        virtual HRESULT get_Breaks(
            OMathBreaks **prop /Out/) = 0;

        virtual HRESULT get_Justification(
            WdOMathJc *prop /Out/) = 0;

        virtual HRESULT put_Justification(
            WdOMathJc prop) = 0;

        virtual HRESULT get_AlignPoint(
            long *prop /Out/) = 0;

        virtual HRESULT put_AlignPoint(
            long prop) = 0;

        virtual HRESULT Linearize() = 0;

        virtual HRESULT BuildUp() = 0;

        virtual HRESULT Remove() = 0;

        virtual HRESULT ConvertToMathText() = 0;

        virtual HRESULT ConvertToNormalText() = 0;

        virtual HRESULT ConvertToLiteralText() = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
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

        OMathFunctions* getFunctions();
        %MethodCode
            wpsapi::OMathFunctions *prop = nullptr;
            HRESULT hr = sipCpp->get_Functions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Functions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Functions, get=getFunctions)

        WdOMathType getType();
        %MethodCode
            wpsapi::WdOMathType prop = (wpsapi::WdOMathType)0;
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

        PyObject* setType(WdOMathType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        OMath* getParentOMath();
        %MethodCode
            wpsapi::OMath *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentOMath(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentOMath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentOMath, get=getParentOMath)

        OMathFunction* getParentFunction();
        %MethodCode
            wpsapi::OMathFunction *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentFunction(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentFunction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentFunction, get=getParentFunction)

        OMathMatRow* getParentRow();
        %MethodCode
            wpsapi::OMathMatRow *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentRow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentRow, get=getParentRow)

        OMathMatCol* getParentCol();
        %MethodCode
            wpsapi::OMathMatCol *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentCol(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentCol()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentCol, get=getParentCol)

        OMath* getParentArg();
        %MethodCode
            wpsapi::OMath *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentArg(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentArg()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentArg, get=getParentArg)

        long getArgIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ArgIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArgIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ArgIndex, get=getArgIndex)

        long getNestingLevel();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NestingLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NestingLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NestingLevel, get=getNestingLevel)

        long getArgSize();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ArgSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArgSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArgSize(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArgSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArgSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArgSize, get=getArgSize, set=setArgSize)

        OMathBreaks* getBreaks();
        %MethodCode
            wpsapi::OMathBreaks *prop = nullptr;
            HRESULT hr = sipCpp->get_Breaks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Breaks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Breaks, get=getBreaks)

        WdOMathJc getJustification();
        %MethodCode
            wpsapi::WdOMathJc prop = (wpsapi::WdOMathJc)0;
            HRESULT hr = sipCpp->get_Justification(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Justification()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setJustification(WdOMathJc prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Justification(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Justification()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Justification, get=getJustification, set=setJustification)

        long getAlignPoint();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AlignPoint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlignPoint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlignPoint(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlignPoint(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlignPoint()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlignPoint, get=getAlignPoint, set=setAlignPoint)
    };
};
