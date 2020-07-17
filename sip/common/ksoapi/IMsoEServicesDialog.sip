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
    struct IMsoEServicesDialog : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Close(
            VARIANT_BOOL ApplyWebComponentChanges = VARIANT_FALSE) = 0;

        virtual HRESULT AddTrustedDomain(
            BSTR Domain) = 0;

        virtual HRESULT get_ApplicationName(
            BSTR *retval /Out/) = 0;

        virtual HRESULT get_WebComponent(
            IDispatch **ppdisp /Out/) = 0;

        virtual HRESULT get_ClipArt(
            IDispatch **ppdisp /Out/) = 0;

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

        IDispatch* getWebComponent();
        %MethodCode
            IDispatch *prop = nullptr;
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

        IDispatch* getClipArt();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_ClipArt(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ClipArt()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ClipArt, get=getClipArt)
    };
};
