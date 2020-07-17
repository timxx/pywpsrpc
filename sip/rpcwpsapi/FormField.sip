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
    struct FormField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdFieldType *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_EntryMacro(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_EntryMacro(
            BSTR prop) = 0;

        virtual HRESULT get_ExitMacro(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ExitMacro(
            BSTR prop) = 0;

        virtual HRESULT get_OwnHelp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OwnHelp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OwnStatus(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OwnStatus(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HelpText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_HelpText(
            BSTR prop) = 0;

        virtual HRESULT get_StatusText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_StatusText(
            BSTR prop) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Result(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Result(
            BSTR prop) = 0;

        virtual HRESULT get_TextInput(
            TextInput **prop /Out/) = 0;

        virtual HRESULT get_CheckBox(
            CheckBox **prop /Out/) = 0;

        virtual HRESULT get_DropDown(
            DropDown **prop /Out/) = 0;

        virtual HRESULT get_Next(
            FormField **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            FormField **prop /Out/) = 0;

        virtual HRESULT get_CalculateOnExit(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CalculateOnExit(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Delete() = 0;

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

        WdFieldType getType();
        %MethodCode
            wpsapi::WdFieldType prop = (wpsapi::WdFieldType)0;
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

        BSTR getEntryMacro();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_EntryMacro(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EntryMacro()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEntryMacro(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EntryMacro(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EntryMacro()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EntryMacro, get=getEntryMacro, set=setEntryMacro)

        BSTR getExitMacro();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ExitMacro(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExitMacro()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExitMacro(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ExitMacro(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ExitMacro()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ExitMacro, get=getExitMacro, set=setExitMacro)

        VARIANT_BOOL getOwnHelp();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OwnHelp(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OwnHelp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOwnHelp(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OwnHelp(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OwnHelp()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OwnHelp, get=getOwnHelp, set=setOwnHelp)

        VARIANT_BOOL getOwnStatus();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OwnStatus(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OwnStatus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOwnStatus(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OwnStatus(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OwnStatus()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OwnStatus, get=getOwnStatus, set=setOwnStatus)

        BSTR getHelpText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_HelpText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HelpText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHelpText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HelpText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HelpText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HelpText, get=getHelpText, set=setHelpText)

        BSTR getStatusText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_StatusText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StatusText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStatusText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StatusText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StatusText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StatusText, get=getStatusText, set=setStatusText)

        VARIANT_BOOL getEnabled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Enabled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Enabled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnabled(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Enabled(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Enabled()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Enabled, get=getEnabled, set=setEnabled)

        BSTR getResult();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Result(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Result()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setResult(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Result(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Result()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Result, get=getResult, set=setResult)

        TextInput* getTextInput();
        %MethodCode
            wpsapi::TextInput *prop = nullptr;
            HRESULT hr = sipCpp->get_TextInput(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextInput()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextInput, get=getTextInput)

        CheckBox* getCheckBox();
        %MethodCode
            wpsapi::CheckBox *prop = nullptr;
            HRESULT hr = sipCpp->get_CheckBox(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckBox()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CheckBox, get=getCheckBox)

        DropDown* getDropDown();
        %MethodCode
            wpsapi::DropDown *prop = nullptr;
            HRESULT hr = sipCpp->get_DropDown(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DropDown()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DropDown, get=getDropDown)

        FormField* getNext();
        %MethodCode
            wpsapi::FormField *prop = nullptr;
            HRESULT hr = sipCpp->get_Next(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Next()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Next, get=getNext)

        FormField* getPrevious();
        %MethodCode
            wpsapi::FormField *prop = nullptr;
            HRESULT hr = sipCpp->get_Previous(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Previous()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Previous, get=getPrevious)

        VARIANT_BOOL getCalculateOnExit();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CalculateOnExit(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalculateOnExit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCalculateOnExit(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CalculateOnExit(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CalculateOnExit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CalculateOnExit, get=getCalculateOnExit, set=setCalculateOnExit)

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
    };
};
