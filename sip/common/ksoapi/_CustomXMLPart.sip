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

        CustomXMLNode* getDocumentElement();
        %MethodCode
            ksoapi::CustomXMLNode *prop = nullptr;
            HRESULT hr = sipCpp->get_DocumentElement(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentElement()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DocumentElement, get=getDocumentElement)

        BSTR getId();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Id(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Id()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Id, get=getId)

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

        CustomXMLSchemaCollection* getSchemaCollection();
        %MethodCode
            ksoapi::CustomXMLSchemaCollection *prop = nullptr;
            HRESULT hr = sipCpp->get_SchemaCollection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SchemaCollection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSchemaCollection(CustomXMLSchemaCollection *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SchemaCollection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SchemaCollection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SchemaCollection, get=getSchemaCollection, set=setSchemaCollection)

        CustomXMLPrefixMappings* getNamespaceManager();
        %MethodCode
            ksoapi::CustomXMLPrefixMappings *prop = nullptr;
            HRESULT hr = sipCpp->get_NamespaceManager(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NamespaceManager()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NamespaceManager, get=getNamespaceManager)

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

        CustomXMLValidationErrors* getErrors();
        %MethodCode
            ksoapi::CustomXMLValidationErrors *prop = nullptr;
            HRESULT hr = sipCpp->get_Errors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Errors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Errors, get=getErrors)

        VARIANT_BOOL getBuiltIn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BuiltIn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltIn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuiltIn, get=getBuiltIn)
    };
};
