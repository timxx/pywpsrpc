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
    struct IValidation : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Add(
            XlDVType Type,
            VARIANT AlertStyle = argMissing2(),
            VARIANT Operator = argMissing2(),
            VARIANT Formula1 = argMissing2(),
            VARIANT Formula2 = argMissing2()) = 0;

        virtual HRESULT get_AlertStyle(
            long *RHS /Out/) = 0;

        virtual HRESULT get_IgnoreBlank(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IgnoreBlank(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IMEMode(
            long *RHS /Out/) = 0;

        virtual HRESULT put_IMEMode(
            long RHS) = 0;

        virtual HRESULT get_InCellDropdown(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InCellDropdown(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_ErrorMessage(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ErrorMessage(
            BSTR RHS) = 0;

        virtual HRESULT get_ErrorTitle(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ErrorTitle(
            BSTR RHS) = 0;

        virtual HRESULT get_InputMessage(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_InputMessage(
            BSTR RHS) = 0;

        virtual HRESULT get_InputTitle(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_InputTitle(
            BSTR RHS) = 0;

        virtual HRESULT get_Formula1(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Formula2(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Modify(
            VARIANT Type = argMissing2(),
            VARIANT AlertStyle = argMissing2(),
            VARIANT Operator = argMissing2(),
            VARIANT Formula1 = argMissing2(),
            VARIANT Formula2 = argMissing2()) = 0;

        virtual HRESULT get_Operator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_ShowError(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowError(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowInput(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowInput(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            VARIANT_BOOL *RHS /Out/) = 0;

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

        long getAlertStyle();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AlertStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlertStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AlertStyle, get=getAlertStyle)

        VARIANT_BOOL getIgnoreBlank();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreBlank(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreBlank()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreBlank(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreBlank(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreBlank()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreBlank, get=getIgnoreBlank, set=setIgnoreBlank)

        long getIMEMode();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_IMEMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IMEMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIMEMode(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IMEMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IMEMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IMEMode, get=getIMEMode, set=setIMEMode)

        VARIANT_BOOL getInCellDropdown();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InCellDropdown(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InCellDropdown()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInCellDropdown(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InCellDropdown(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InCellDropdown()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InCellDropdown, get=getInCellDropdown, set=setInCellDropdown)

        BSTR getErrorMessage();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ErrorMessage(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ErrorMessage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setErrorMessage(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ErrorMessage(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ErrorMessage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ErrorMessage, get=getErrorMessage, set=setErrorMessage)

        BSTR getErrorTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ErrorTitle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ErrorTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setErrorTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ErrorTitle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ErrorTitle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ErrorTitle, get=getErrorTitle, set=setErrorTitle)

        BSTR getInputMessage();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_InputMessage(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InputMessage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInputMessage(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InputMessage(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InputMessage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InputMessage, get=getInputMessage, set=setInputMessage)

        BSTR getInputTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_InputTitle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InputTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInputTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InputTitle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InputTitle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InputTitle, get=getInputTitle, set=setInputTitle)

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

        VARIANT_BOOL getShowError();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowError(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowError()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowError(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowError(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowError()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowError, get=getShowError, set=setShowError)

        VARIANT_BOOL getShowInput();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowInput(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowInput()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowInput(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowInput(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowInput()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowInput, get=getShowInput, set=setShowInput)

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

        VARIANT_BOOL getValue();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
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
    };
};
