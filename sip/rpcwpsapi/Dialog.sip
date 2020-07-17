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
    struct Dialog : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_DefaultTab(
            WdWordDialogTab *prop /Out/) = 0;

        virtual HRESULT put_DefaultTab(
            WdWordDialogTab prop) = 0;

        virtual HRESULT get_Type(
            WdWordDialog *prop /Out/) = 0;

        virtual HRESULT Show(
            VARIANT *TimeOut = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT Display(
            VARIANT *TimeOut = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT get_CommandName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_CommandBarId(
            long *prop /Out/) = 0;

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

        WdWordDialogTab getDefaultTab();
        %MethodCode
            wpsapi::WdWordDialogTab prop = (wpsapi::WdWordDialogTab)0;
            HRESULT hr = sipCpp->get_DefaultTab(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTab()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTab(WdWordDialogTab prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTab(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTab()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTab, get=getDefaultTab, set=setDefaultTab)

        WdWordDialog getType();
        %MethodCode
            wpsapi::WdWordDialog prop = (wpsapi::WdWordDialog)0;
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

        BSTR getCommandName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CommandName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CommandName, get=getCommandName)

        long getCommandBarId();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CommandBarId(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandBarId()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CommandBarId, get=getCommandBarId)
    };
};
