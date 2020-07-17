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
    struct IAutoCorrect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT AddReplacement(
            BSTR What,
            BSTR Replacement,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_CapitalizeNamesOfDays(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CapitalizeNamesOfDays(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT DeleteReplacement(
            BSTR What,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ReplacementList(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_ReplacementList(
            VARIANT Index = argMissing2(),
            VARIANT RHS = argMissing2()) = 0;

        virtual HRESULT get_ReplaceText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ReplaceText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TwoInitialCapitals(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TwoInitialCapitals(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CorrectSentenceCap(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CorrectSentenceCap(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CorrectCapsLock(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CorrectCapsLock(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayAutoCorrectOptions(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayAutoCorrectOptions(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoExpandListRange(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoExpandListRange(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoFillFormulasInLists(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoFillFormulasInLists(
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

        VARIANT_BOOL getCapitalizeNamesOfDays();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CapitalizeNamesOfDays(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CapitalizeNamesOfDays()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCapitalizeNamesOfDays(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CapitalizeNamesOfDays(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CapitalizeNamesOfDays()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CapitalizeNamesOfDays, get=getCapitalizeNamesOfDays, set=setCapitalizeNamesOfDays)

        VARIANT_BOOL getReplaceText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReplaceText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReplaceText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReplaceText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReplaceText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReplaceText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReplaceText, get=getReplaceText, set=setReplaceText)

        VARIANT_BOOL getTwoInitialCapitals();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TwoInitialCapitals(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TwoInitialCapitals()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTwoInitialCapitals(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TwoInitialCapitals(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TwoInitialCapitals()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TwoInitialCapitals, get=getTwoInitialCapitals, set=setTwoInitialCapitals)

        VARIANT_BOOL getCorrectSentenceCap();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectSentenceCap(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectSentenceCap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectSentenceCap(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectSentenceCap(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectSentenceCap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectSentenceCap, get=getCorrectSentenceCap, set=setCorrectSentenceCap)

        VARIANT_BOOL getCorrectCapsLock();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectCapsLock(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectCapsLock()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectCapsLock(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectCapsLock(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectCapsLock()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectCapsLock, get=getCorrectCapsLock, set=setCorrectCapsLock)

        VARIANT_BOOL getDisplayAutoCorrectOptions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAutoCorrectOptions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAutoCorrectOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAutoCorrectOptions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAutoCorrectOptions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAutoCorrectOptions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAutoCorrectOptions, get=getDisplayAutoCorrectOptions, set=setDisplayAutoCorrectOptions)

        VARIANT_BOOL getAutoExpandListRange();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoExpandListRange(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoExpandListRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoExpandListRange(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoExpandListRange(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoExpandListRange()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoExpandListRange, get=getAutoExpandListRange, set=setAutoExpandListRange)

        VARIANT_BOOL getAutoFillFormulasInLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFillFormulasInLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFillFormulasInLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFillFormulasInLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFillFormulasInLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFillFormulasInLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFillFormulasInLists, get=getAutoFillFormulasInLists, set=setAutoFillFormulasInLists)
    };
};
