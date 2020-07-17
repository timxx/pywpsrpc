/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct WebComponentWindowExternal : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_InterfaceVersion(
            long *RetValue /Out/) = 0;

        virtual HRESULT get_ApplicationName(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT get_ApplicationVersion(
            long *RetValue /Out/) = 0;

        virtual HRESULT CloseWindow() = 0;

        virtual HRESULT get_WebComponent(
            WebComponent **RetValue /Out/) = 0;

        long getInterfaceVersion();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_InterfaceVersion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InterfaceVersion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InterfaceVersion, get=getInterfaceVersion)

        BSTR getApplicationName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ApplicationName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplicationName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ApplicationName, get=getApplicationName)

        long getApplicationVersion();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ApplicationVersion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplicationVersion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ApplicationVersion, get=getApplicationVersion)

        WebComponent* getWebComponent();
        %MethodCode
            ksoapi::WebComponent *prop = nullptr;
            HRESULT hr = sipCpp->get_WebComponent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebComponent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WebComponent, get=getWebComponent)
    };
};
