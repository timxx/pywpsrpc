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
    struct XMLNamespace : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_URI(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Location(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR *prop /Out/ = 0) = 0;

        virtual HRESULT put_Location(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR prop = 0) = 0;

        virtual HRESULT get_Alias(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR *prop /Out/ = 0) = 0;

        virtual HRESULT put_Alias(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR prop = 0) = 0;

        virtual HRESULT get_XSLTransforms(
            XSLTransforms **prop /Out/) = 0;

        virtual HRESULT get_DefaultTransform(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            XSLTransform **prop /Out/ = 0) = 0;

        virtual HRESULT put_DefaultTransform(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            XSLTransform *prop = 0) = 0;

        virtual HRESULT AttachToDocument(
            VARIANT *Document) = 0;

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

        BSTR getURI();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_URI(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_URI()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=URI, get=getURI)

        XSLTransforms* getXSLTransforms();
        %MethodCode
            wpsapi::XSLTransforms *prop = nullptr;
            HRESULT hr = sipCpp->get_XSLTransforms(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XSLTransforms()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XSLTransforms, get=getXSLTransforms)
    };
};
