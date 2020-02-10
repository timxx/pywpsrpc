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
    struct _CustomXMLParts : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            _CustomXMLPart **ppPart /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Item(*a0, (ksoapi::CustomXMLPart**)&a1);
        %End

        virtual HRESULT Add(
            BSTR XML,
            VARIANT SchemaCollection,
            _CustomXMLPart **ppPart /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->Add(*a0, *a1, (ksoapi::CustomXMLPart**)&a2);
        %End

        virtual HRESULT SelectByID(
            BSTR Id,
            _CustomXMLPart **ppPart /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->SelectByID(*a0, (ksoapi::CustomXMLPart**)&a1);
        %End

        virtual HRESULT SelectByNamespace(
            BSTR NamespaceURI,
            _CustomXMLParts **ppParts /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->SelectByNamespace(*a0,
                (ksoapi::CustomXMLParts**)&a1);
        %End

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };

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
            _CustomXMLSchemaCollection **ppSchemaCollection /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_SchemaCollection((ksoapi::CustomXMLSchemaCollection**)&a0);
        %End

        virtual HRESULT put_SchemaCollection(
            _CustomXMLSchemaCollection *ppSchemaCollection) = 0;
        %MethodCode
            sipRes = sipCpp->put_SchemaCollection((ksoapi::CustomXMLSchemaCollection*)a0);
        %End

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

    struct CustomXMLPrefixMappings : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CustomXMLPrefixMapping **ppPrefixMapping /Out/) = 0;

        virtual HRESULT AddNamespace(
            BSTR Prefix,
            BSTR NamespaceURI) = 0;

        virtual HRESULT LookupNamespace(
            BSTR Prefix,
            BSTR *pbstrNamespaceURI /Out/) = 0;

        virtual HRESULT LookupPrefix(
            BSTR NamespaceURI,
            BSTR *pbstrPrefix /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;
    };

    struct CustomXMLPrefixMapping : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Prefix(
            BSTR *pbstrPrefix /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *pbstrNamespaceURI /Out/) = 0;
    };

    struct CustomXMLNodes : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Item(
            long Index,
            CustomXMLNode **ppNode /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;
    };

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

        virtual HRESULT get_OwnerPart(_CustomXMLPart **ppOwnerPart /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_OwnerPart((ksoapi::CustomXMLPart**)&a0);
        %End

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

    struct _CustomXMLSchemaCollection : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CustomXMLSchema **ppSchema /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            long Index,
            BSTR *pbstrNamespaceURI /Out/) = 0;

        virtual HRESULT Add(
            BSTR NamespaceURI,
            BSTR Alias,
            BSTR FileName,
            VARIANT_BOOL InstallForAllUsers,
            CustomXMLSchema **ppSchema /Out/) = 0;

        virtual HRESULT AddCollection(
            _CustomXMLSchemaCollection *SchemaCollection) = 0;
        %MethodCode
            sipRes = sipCpp->AddCollection((ksoapi::CustomXMLSchemaCollection*)a0);
        %End

        virtual HRESULT Validate(
            VARIANT_BOOL *pfResult /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;
    };

    struct CustomXMLSchema : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Location(
            BSTR *pbstrLocation /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *pbstrNamespaceURI /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Reload() = 0;
    };

    struct CustomXMLValidationErrors : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Item(
            long Index,
            CustomXMLValidationError **ppError /Out/) = 0;

        virtual HRESULT Add(
            CustomXMLNode *Node,
            BSTR ErrorName,
            BSTR ErrorText = 0,
            VARIANT_BOOL ClearedOnUpdate = -1) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;
    };

    struct CustomXMLValidationError : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_Node(
            CustomXMLNode **ppNode /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT get_Type(
            MsoCustomXMLValidationErrorType *pErrorType /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_ErrorCode(
            long *plErrorCode /Out/) = 0;
    };
};