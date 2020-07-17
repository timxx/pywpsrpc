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
    struct CustomXMLValidationError : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
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

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Name, get=getName)

        CustomXMLNode* getNode();
        %MethodCode
            ksoapi::CustomXMLNode *prop = nullptr;
            HRESULT hr = sipCpp->get_Node(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Node()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Node, get=getNode)

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

        %Property(name=Text, get=getText)

        MsoCustomXMLValidationErrorType getType();
        %MethodCode
            ksoapi::MsoCustomXMLValidationErrorType prop = (ksoapi::MsoCustomXMLValidationErrorType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

        long getErrorCode();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ErrorCode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ErrorCode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ErrorCode, get=getErrorCode)
    };
};
