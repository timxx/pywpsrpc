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
    struct XMLChildNodeSuggestion : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_BaseName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_XMLSchemaReference(
            XMLSchemaReference **prop /Out/) = 0;

        virtual HRESULT Insert(
            VARIANT *Range = argMissing(),
            XMLNode **prop /Out/ = 0) = 0;

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

        BSTR getBaseName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_BaseName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BaseName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BaseName, get=getBaseName)

        BSTR getNamespaceURI();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NamespaceURI(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NamespaceURI()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NamespaceURI, get=getNamespaceURI)

        XMLSchemaReference* getXMLSchemaReference();
        %MethodCode
            wpsapi::XMLSchemaReference *prop = nullptr;
            HRESULT hr = sipCpp->get_XMLSchemaReference(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLSchemaReference()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XMLSchemaReference, get=getXMLSchemaReference)
    };
};
