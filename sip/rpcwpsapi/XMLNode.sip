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

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_XML(
            VARIANT_BOOL DataOnly = VARIANT_FALSE,
            BSTR *prop /Out/ = 0) = 0;

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
            BSTR PrefixMapping = 0,
            VARIANT_BOOL FastSearchSkippingTextNodes = VARIANT_FALSE,
            XMLNode **prop /Out/ = 0) = 0;

        virtual HRESULT SelectNodes(
            BSTR XPath,
            BSTR PrefixMapping = 0,
            VARIANT_BOOL FastSearchSkippingTextNodes = VARIANT_FALSE,
            XMLNodes **prop /Out/ = 0) = 0;

        virtual HRESULT get_ChildNodeSuggestions(
            XMLChildNodeSuggestions **prop /Out/) = 0;

        virtual HRESULT get_Level(
            WdXMLNodeLevel *prop /Out/) = 0;

        virtual HRESULT get_ValidationStatus(
            WdXMLValidationStatus *prop /Out/) = 0;

        virtual HRESULT get_SmartTag(
            SmartTag **prop /Out/) = 0;

        virtual HRESULT get_ValidationErrorText(
            VARIANT_BOOL Advanced = VARIANT_FALSE,
            BSTR *prop /Out/ = 0) = 0;

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

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

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

        XMLNode* getNextSibling();
        %MethodCode
            wpsapi::XMLNode *prop = nullptr;
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

        XMLNode* getPreviousSibling();
        %MethodCode
            wpsapi::XMLNode *prop = nullptr;
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

        XMLNode* getParentNode();
        %MethodCode
            wpsapi::XMLNode *prop = nullptr;
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

        XMLNode* getFirstChild();
        %MethodCode
            wpsapi::XMLNode *prop = nullptr;
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

        XMLNode* getLastChild();
        %MethodCode
            wpsapi::XMLNode *prop = nullptr;
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

        Document* getOwnerDocument();
        %MethodCode
            wpsapi::Document *prop = nullptr;
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

        WdXMLNodeType getNodeType();
        %MethodCode
            wpsapi::WdXMLNodeType prop = (wpsapi::WdXMLNodeType)0;
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

        XMLNodes* getChildNodes();
        %MethodCode
            wpsapi::XMLNodes *prop = nullptr;
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

        XMLNodes* getAttributes();
        %MethodCode
            wpsapi::XMLNodes *prop = nullptr;
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

        VARIANT_BOOL getHasChildNodes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasChildNodes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasChildNodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasChildNodes, get=getHasChildNodes)

        XMLChildNodeSuggestions* getChildNodeSuggestions();
        %MethodCode
            wpsapi::XMLChildNodeSuggestions *prop = nullptr;
            HRESULT hr = sipCpp->get_ChildNodeSuggestions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChildNodeSuggestions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChildNodeSuggestions, get=getChildNodeSuggestions)

        WdXMLNodeLevel getLevel();
        %MethodCode
            wpsapi::WdXMLNodeLevel prop = (wpsapi::WdXMLNodeLevel)0;
            HRESULT hr = sipCpp->get_Level(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Level()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Level, get=getLevel)

        WdXMLValidationStatus getValidationStatus();
        %MethodCode
            wpsapi::WdXMLValidationStatus prop = (wpsapi::WdXMLValidationStatus)0;
            HRESULT hr = sipCpp->get_ValidationStatus(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ValidationStatus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ValidationStatus, get=getValidationStatus)

        SmartTag* getSmartTag();
        %MethodCode
            wpsapi::SmartTag *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartTag(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartTag()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartTag, get=getSmartTag)

        BSTR getPlaceholderText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PlaceholderText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlaceholderText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlaceholderText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PlaceholderText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PlaceholderText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PlaceholderText, get=getPlaceholderText, set=setPlaceholderText)

        BSTR getWordOpenXML();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_WordOpenXML(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WordOpenXML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WordOpenXML, get=getWordOpenXML)
    };
};
