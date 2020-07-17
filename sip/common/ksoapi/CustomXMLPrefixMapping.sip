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
    struct CustomXMLPrefixMapping : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Prefix(
            BSTR *pbstrPrefix /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *pbstrNamespaceURI /Out/) = 0;

        BSTR getPrefix();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Prefix(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Prefix()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Prefix, get=getPrefix)

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
    };
};
