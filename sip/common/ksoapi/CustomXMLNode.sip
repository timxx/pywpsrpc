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
    struct CustomXMLNode : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Attributes(
            CustomXMLNodes **ppAttributes /Out/) = 0;

        virtual HRESULT get_BaseName(
            BSTR *pbstrBaseName /Out/) = 0;

        virtual HRESULT get_ChildNodes(
            CustomXMLNodes **ppChildNodes /Out/) = 0;

        virtual HRESULT get_FirstChild(
            CustomXMLNode **ppFirstChild /Out/) = 0;

        virtual HRESULT get_LastChild(
            CustomXMLNode **ppLastChild /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *pbstrNamespaceURI /Out/) = 0;

        virtual HRESULT get_NextSibling(
            CustomXMLNode **ppNextSibling /Out/) = 0;

        virtual HRESULT get_NodeType(
            MsoCustomXMLNodeType *pNodeType /Out/) = 0;

        virtual HRESULT get_NodeValue(
            BSTR *pbstrNodeValue /Out/) = 0;

        virtual HRESULT put_NodeValue(
            BSTR pbstrNodeValue) = 0;

        virtual HRESULT get_OwnerDocument(
            IDispatch **ppdispDoc /Out/) = 0;

        virtual HRESULT get_OwnerPart(
            CustomXMLPart **ppOwnerPart /Out/) = 0;

        virtual HRESULT get_PreviousSibling(
            CustomXMLNode **ppPreviousSibling /Out/) = 0;

        virtual HRESULT get_ParentNode(
            CustomXMLNode **ppParentNode /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR pbstrText) = 0;

        virtual HRESULT get_XPath(
            BSTR *pbstrXPath /Out/) = 0;

        virtual HRESULT get_XML(
            BSTR *pbstrXML /Out/) = 0;

        virtual HRESULT AppendChildNode(
            BSTR Name = 0,
            BSTR NamespaceURI = 0,
            MsoCustomXMLNodeType NodeType = ksoapi::msoCustomXMLNodeElement,
            BSTR NodeValue = 0) = 0;

        virtual HRESULT AppendChildSubtree(
            BSTR XML) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT HasChildNodes(
            VARIANT_BOOL *pfHasChildNodes /Out/) = 0;

        virtual HRESULT InsertNodeBefore(
            BSTR Name = 0,
            BSTR NamespaceURI = 0,
            MsoCustomXMLNodeType NodeType = ksoapi::msoCustomXMLNodeElement,
            BSTR NodeValue = 0,
            CustomXMLNode *NextSibling = 0) = 0;

        virtual HRESULT InsertSubtreeBefore(
            BSTR XML,
            CustomXMLNode *NextSibling = 0) = 0;

        virtual HRESULT RemoveChild(
            CustomXMLNode *Child) = 0;

        virtual HRESULT ReplaceChildNode(
            CustomXMLNode *OldNode,
            BSTR Name = 0,
            BSTR NamespaceURI = 0,
            MsoCustomXMLNodeType NodeType = ksoapi::msoCustomXMLNodeElement,
            BSTR NodeValue = 0) = 0;

        virtual HRESULT ReplaceChildSubtree(
            BSTR XML,
            CustomXMLNode *OldNode) = 0;

        virtual HRESULT SelectNodes(
            BSTR XPath,
            CustomXMLNodes **ppNodes /Out/) = 0;

        virtual HRESULT SelectSingleNode(
            BSTR XPath,
            CustomXMLNode **ppNode /Out/) = 0;

    };
};
