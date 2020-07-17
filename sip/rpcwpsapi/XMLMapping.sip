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
    struct XMLMapping : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_IsMapped(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_CustomXMLPart(
            ksoapi::CustomXMLPart **prop /Out/) = 0;

        virtual HRESULT get_CustomXMLNode(
            ksoapi::CustomXMLNode **prop /Out/) = 0;

        virtual HRESULT SetMapping(
            BSTR XPath,
            BSTR PrefixMapping,
            ksoapi::CustomXMLPart *Source,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT SetMappingByNode(
            ksoapi::CustomXMLNode *Node,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_XPath(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_PrefixMappings(
            BSTR *prop /Out/) = 0;

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

        VARIANT_BOOL getIsMapped();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsMapped(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsMapped()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsMapped, get=getIsMapped)

        ksoapi::CustomXMLPart* getCustomXMLPart();
        %MethodCode
            ksoapi::CustomXMLPart *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomXMLPart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomXMLPart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomXMLPart, get=getCustomXMLPart)

        ksoapi::CustomXMLNode* getCustomXMLNode();
        %MethodCode
            ksoapi::CustomXMLNode *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomXMLNode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomXMLNode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomXMLNode, get=getCustomXMLNode)

        BSTR getXPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_XPath(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XPath, get=getXPath)

        BSTR getPrefixMappings();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PrefixMappings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrefixMappings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrefixMappings, get=getPrefixMappings)
    };
};
