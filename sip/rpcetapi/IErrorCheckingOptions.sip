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
    struct IErrorCheckingOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_BackgroundChecking(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundChecking(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IndicatorColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT put_IndicatorColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT get_EvaluateToError(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EvaluateToError(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextDate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextDate(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NumberAsText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_NumberAsText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_InconsistentFormula(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InconsistentFormula(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_OmittedCells(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_OmittedCells(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_UnlockedFormulaCells(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UnlockedFormulaCells(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EmptyCellReferences(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EmptyCellReferences(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ListDataValidation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ListDataValidation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_InconsistentTableFormula(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InconsistentTableFormula(
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

        VARIANT_BOOL getBackgroundChecking();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BackgroundChecking(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundChecking()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackgroundChecking(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackgroundChecking(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackgroundChecking()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackgroundChecking, get=getBackgroundChecking, set=setBackgroundChecking)

        XlColorIndex getIndicatorColorIndex();
        %MethodCode
            etapi::XlColorIndex prop = (etapi::XlColorIndex)0;
            HRESULT hr = sipCpp->get_IndicatorColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IndicatorColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIndicatorColorIndex(XlColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IndicatorColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IndicatorColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IndicatorColorIndex, get=getIndicatorColorIndex, set=setIndicatorColorIndex)

        VARIANT_BOOL getEvaluateToError();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EvaluateToError(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EvaluateToError()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEvaluateToError(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EvaluateToError(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EvaluateToError()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EvaluateToError, get=getEvaluateToError, set=setEvaluateToError)

        VARIANT_BOOL getTextDate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextDate(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextDate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextDate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextDate, get=getTextDate, set=setTextDate)

        VARIANT_BOOL getNumberAsText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NumberAsText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberAsText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberAsText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberAsText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberAsText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberAsText, get=getNumberAsText, set=setNumberAsText)

        VARIANT_BOOL getInconsistentFormula();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InconsistentFormula(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InconsistentFormula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInconsistentFormula(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InconsistentFormula(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InconsistentFormula()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InconsistentFormula, get=getInconsistentFormula, set=setInconsistentFormula)

        VARIANT_BOOL getOmittedCells();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OmittedCells(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OmittedCells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOmittedCells(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OmittedCells(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OmittedCells()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OmittedCells, get=getOmittedCells, set=setOmittedCells)

        VARIANT_BOOL getUnlockedFormulaCells();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UnlockedFormulaCells(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UnlockedFormulaCells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUnlockedFormulaCells(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UnlockedFormulaCells(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UnlockedFormulaCells()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UnlockedFormulaCells, get=getUnlockedFormulaCells, set=setUnlockedFormulaCells)

        VARIANT_BOOL getEmptyCellReferences();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EmptyCellReferences(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmptyCellReferences()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmptyCellReferences(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmptyCellReferences(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmptyCellReferences()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmptyCellReferences, get=getEmptyCellReferences, set=setEmptyCellReferences)

        VARIANT_BOOL getListDataValidation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ListDataValidation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListDataValidation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListDataValidation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListDataValidation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListDataValidation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListDataValidation, get=getListDataValidation, set=setListDataValidation)

        VARIANT_BOOL getInconsistentTableFormula();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InconsistentTableFormula(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InconsistentTableFormula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInconsistentTableFormula(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InconsistentTableFormula(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InconsistentTableFormula()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InconsistentTableFormula, get=getInconsistentTableFormula, set=setInconsistentTableFormula)
    };
};
