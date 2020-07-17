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
    struct KeyBinding : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Command(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_KeyString(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Protected(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_KeyCategory(
            WdKeyCategory *prop /Out/) = 0;

        virtual HRESULT get_KeyCode(
            long *prop /Out/) = 0;

        virtual HRESULT get_KeyCode2(
            long *prop /Out/) = 0;

        virtual HRESULT get_CommandParameter(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Context(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT Disable() = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT Rebind(
            WdKeyCategory KeyCategory,
            BSTR Command,
            VARIANT *CommandParameter = argMissing()) = 0;

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

        BSTR getCommand();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Command(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Command()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Command, get=getCommand)

        BSTR getKeyString();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_KeyString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeyString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=KeyString, get=getKeyString)

        VARIANT_BOOL getProtected();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Protected(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Protected()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Protected, get=getProtected)

        WdKeyCategory getKeyCategory();
        %MethodCode
            wpsapi::WdKeyCategory prop = (wpsapi::WdKeyCategory)0;
            HRESULT hr = sipCpp->get_KeyCategory(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeyCategory()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=KeyCategory, get=getKeyCategory)

        long getKeyCode();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_KeyCode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeyCode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=KeyCode, get=getKeyCode)

        long getKeyCode2();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_KeyCode2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeyCode2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=KeyCode2, get=getKeyCode2)

        BSTR getCommandParameter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CommandParameter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandParameter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CommandParameter, get=getCommandParameter)

        IDispatch* getContext();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Context(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Context()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Context, get=getContext)
    };
};
