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
    struct SmartTagAction : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT get_Type(
            WdSmartTagControlType *prop /Out/) = 0;

        virtual HRESULT get_PresentInPane(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ExpandHelp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ExpandHelp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CheckboxState(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckboxState(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TextboxText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_TextboxText(
            BSTR prop) = 0;

        virtual HRESULT get_ListSelection(
            long *prop /Out/) = 0;

        virtual HRESULT put_ListSelection(
            long prop) = 0;

        virtual HRESULT get_RadioGroupSelection(
            long *prop /Out/) = 0;

        virtual HRESULT put_RadioGroupSelection(
            long prop) = 0;

        virtual HRESULT get_ExpandDocumentFragment(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ExpandDocumentFragment(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ActiveXControl(
            IDispatch **prop /Out/) = 0;

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

        %Property(name=Name, get=getName)

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

        WdSmartTagControlType getType();
        %MethodCode
            wpsapi::WdSmartTagControlType prop = (wpsapi::WdSmartTagControlType)0;
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

        VARIANT_BOOL getPresentInPane();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PresentInPane(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresentInPane()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PresentInPane, get=getPresentInPane)

        VARIANT_BOOL getExpandHelp();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ExpandHelp(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExpandHelp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExpandHelp(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ExpandHelp(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ExpandHelp()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ExpandHelp, get=getExpandHelp, set=setExpandHelp)

        VARIANT_BOOL getCheckboxState();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CheckboxState(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckboxState()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckboxState(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckboxState(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CheckboxState()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CheckboxState, get=getCheckboxState, set=setCheckboxState)

        BSTR getTextboxText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextboxText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextboxText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextboxText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextboxText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextboxText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextboxText, get=getTextboxText, set=setTextboxText)

        long getListSelection();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ListSelection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListSelection(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListSelection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListSelection, get=getListSelection, set=setListSelection)

        long getRadioGroupSelection();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RadioGroupSelection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RadioGroupSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRadioGroupSelection(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RadioGroupSelection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RadioGroupSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RadioGroupSelection, get=getRadioGroupSelection, set=setRadioGroupSelection)

        VARIANT_BOOL getExpandDocumentFragment();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ExpandDocumentFragment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExpandDocumentFragment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExpandDocumentFragment(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ExpandDocumentFragment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ExpandDocumentFragment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ExpandDocumentFragment, get=getExpandDocumentFragment, set=setExpandDocumentFragment)

        IDispatch* getActiveXControl();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveXControl(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveXControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveXControl, get=getActiveXControl)
    };
};
