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
    struct XMLNodes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            XMLNode **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            BSTR Namespace,
            VARIANT *Range = argMissing(),
            XMLNode **prop /Out/ = 0) = 0;
    };

    struct XMLNode : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_BaseName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_XML(
            VARIANT_BOOL DataOnly,
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_NextSibling(
            XMLNode **prop /Out/) = 0;

        virtual HRESULT get_PreviousSibling(
            XMLNode **prop /Out/) = 0;

        virtual HRESULT get_ParentNode(
            XMLNode **prop /Out/) = 0;

        virtual HRESULT get_FirstChild(
            XMLNode **prop /Out/) = 0;

        virtual HRESULT get_LastChild(
            XMLNode **prop /Out/) = 0;

        virtual HRESULT get_OwnerDocument(_Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_OwnerDocument((wpsapi::Document**)&a0);
        %End

        virtual HRESULT get_NodeType(
            WdXMLNodeType *prop /Out/) = 0;

        virtual HRESULT get_ChildNodes(
            XMLNodes **prop /Out/) = 0;

        virtual HRESULT get_Attributes(
            XMLNodes **prop /Out/) = 0;

        virtual HRESULT get_NodeValue(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NodeValue(
            BSTR prop) = 0;

        virtual HRESULT get_HasChildNodes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT SelectSingleNode(
            BSTR XPath,
            BSTR PrefixMapping,
            VARIANT_BOOL FastSearchSkippingTextNodes,
            XMLNode **prop /Out/) = 0;

        virtual HRESULT SelectNodes(
            BSTR XPath,
            BSTR PrefixMapping,
            VARIANT_BOOL FastSearchSkippingTextNodes,
            XMLNodes **prop /Out/) = 0;

        virtual HRESULT get_ChildNodeSuggestions(
            XMLChildNodeSuggestions **prop /Out/) = 0;

        virtual HRESULT get_Level(
            WdXMLNodeLevel *prop /Out/) = 0;

        virtual HRESULT get_ValidationStatus(
            WdXMLValidationStatus *prop /Out/) = 0;

        virtual HRESULT get_SmartTag(
            SmartTag **prop /Out/) = 0;

        virtual HRESULT get_ValidationErrorText(
            VARIANT_BOOL Advanced,
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_PlaceholderText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PlaceholderText(
            BSTR prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT RemoveChild(
            XMLNode *ChildElement) = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Validate() = 0;

        virtual HRESULT SetValidationError(
            WdXMLValidationStatus Status,
            VARIANT *ErrorText = argMissing(),
            VARIANT_BOOL ClearedAutomatically = -1) = 0;

        virtual HRESULT get_WordOpenXML(
            BSTR *prop /Out/) = 0;
    };

    struct XMLChildNodeSuggestions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            XMLChildNodeSuggestion **prop /Out/) = 0;
    };

    struct XMLChildNodeSuggestion : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_BaseName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_XMLSchemaReference(
            XMLSchemaReference **prop /Out/) = 0;

        virtual HRESULT Insert(
            VARIANT *Range = argMissing(),
            XMLNode **prop /Out/ = 0) = 0;
    };

    struct XMLMapping : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_IsMapped(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_CustomXMLPart(
            ksoapi::_CustomXMLPart **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_CustomXMLPart((ksoapi::CustomXMLPart**)&a0);
        %End

        virtual HRESULT get_CustomXMLNode(ksoapi::CustomXMLNode **prop /Out/) = 0;

        virtual HRESULT SetMapping(
            BSTR XPath,
            BSTR PrefixMapping,
            ksoapi::_CustomXMLPart *Source,
            VARIANT_BOOL *prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->SetMapping(*a0, *a1,
                (ksoapi::CustomXMLPart*)a2, a3);
        %End

        virtual HRESULT Delete() = 0;

        virtual HRESULT SetMappingByNode(
            ksoapi::CustomXMLNode *Node,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_XPath(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_PrefixMappings(
            BSTR *prop /Out/) = 0;
    };
};