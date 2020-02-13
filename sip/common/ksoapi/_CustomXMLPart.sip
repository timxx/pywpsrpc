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
    struct _CustomXMLPart : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_DocumentElement(
            CustomXMLNode **ppDocumentElement /Out/) = 0;

        virtual HRESULT get_Id(
            BSTR *pbstrID /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *pbstrNamespaceURI /Out/) = 0;

        virtual HRESULT get_SchemaCollection(
            CustomXMLSchemaCollection **ppSchemaCollection /Out/) = 0;

        virtual HRESULT put_SchemaCollection(
            CustomXMLSchemaCollection *ppSchemaCollection) = 0;

        virtual HRESULT get_NamespaceManager(
            CustomXMLPrefixMappings **ppPrefixMappings /Out/) = 0;

        virtual HRESULT get_XML(
            BSTR *pbstrXML /Out/) = 0;

        virtual HRESULT AddNode(
            CustomXMLNode *Parent,
            BSTR Name = 0,
            BSTR NamespaceURI = 0,
            CustomXMLNode *NextSibling = 0,
            MsoCustomXMLNodeType NodeType = ksoapi::msoCustomXMLNodeElement,
            BSTR NodeValue = 0) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Load(
            BSTR FilePath,
            VARIANT_BOOL *pfRet /Out/) = 0;

        virtual HRESULT LoadXML(
            BSTR XML,
            VARIANT_BOOL *pfRet /Out/) = 0;

        virtual HRESULT SelectNodes(
            BSTR XPath,
            CustomXMLNodes **ppNodes /Out/) = 0;

        virtual HRESULT SelectSingleNode(
            BSTR XPath,
            CustomXMLNode **ppNode /Out/) = 0;

        virtual HRESULT get_Errors(
            CustomXMLValidationErrors **ppErrors /Out/) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *pfRet /Out/) = 0;

    };
};
