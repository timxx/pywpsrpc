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
    struct XMLNode : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_BaseName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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

        virtual HRESULT get_OwnerDocument(
            Document **prop /Out/) = 0;

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
};
