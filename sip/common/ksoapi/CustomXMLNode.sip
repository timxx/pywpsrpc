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

        CustomXMLNodes* getAttributes();
        %MethodCode
            ksoapi::CustomXMLNodes *prop = nullptr;
            HRESULT hr = sipCpp->get_Attributes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Attributes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Attributes, get=getAttributes)

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

        CustomXMLNodes* getChildNodes();
        %MethodCode
            ksoapi::CustomXMLNodes *prop = nullptr;
            HRESULT hr = sipCpp->get_ChildNodes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChildNodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChildNodes, get=getChildNodes)

        CustomXMLNode* getFirstChild();
        %MethodCode
            ksoapi::CustomXMLNode *prop = nullptr;
            HRESULT hr = sipCpp->get_FirstChild(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstChild()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FirstChild, get=getFirstChild)

        CustomXMLNode* getLastChild();
        %MethodCode
            ksoapi::CustomXMLNode *prop = nullptr;
            HRESULT hr = sipCpp->get_LastChild(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LastChild()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LastChild, get=getLastChild)

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

        CustomXMLNode* getNextSibling();
        %MethodCode
            ksoapi::CustomXMLNode *prop = nullptr;
            HRESULT hr = sipCpp->get_NextSibling(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NextSibling()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NextSibling, get=getNextSibling)

        MsoCustomXMLNodeType getNodeType();
        %MethodCode
            ksoapi::MsoCustomXMLNodeType prop = (ksoapi::MsoCustomXMLNodeType)0;
            HRESULT hr = sipCpp->get_NodeType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NodeType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NodeType, get=getNodeType)

        BSTR getNodeValue();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NodeValue(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NodeValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNodeValue(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NodeValue(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NodeValue()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NodeValue, get=getNodeValue, set=setNodeValue)

        IDispatch* getOwnerDocument();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_OwnerDocument(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OwnerDocument()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OwnerDocument, get=getOwnerDocument)

        CustomXMLPart* getOwnerPart();
        %MethodCode
            ksoapi::CustomXMLPart *prop = nullptr;
            HRESULT hr = sipCpp->get_OwnerPart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OwnerPart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OwnerPart, get=getOwnerPart)

        CustomXMLNode* getPreviousSibling();
        %MethodCode
            ksoapi::CustomXMLNode *prop = nullptr;
            HRESULT hr = sipCpp->get_PreviousSibling(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreviousSibling()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PreviousSibling, get=getPreviousSibling)

        CustomXMLNode* getParentNode();
        %MethodCode
            ksoapi::CustomXMLNode *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentNode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentNode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentNode, get=getParentNode)

        BSTR getText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Text(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Text()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Text(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Text()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Text, get=getText, set=setText)

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

        BSTR getXML();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_XML(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XML, get=getXML)
    };
};
