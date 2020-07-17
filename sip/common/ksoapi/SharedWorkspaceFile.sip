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
    struct SharedWorkspaceFile : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_URL(
            BSTR *pbstrFilename /Out/) = 0;

        virtual HRESULT get_CreatedBy(
            BSTR *pbstrCreatedBy /Out/) = 0;

        virtual HRESULT get_CreatedDate(
            VARIANT *CreatedDate /Out/) = 0;

        virtual HRESULT get_ModifiedBy(
            BSTR *pbstrModifiedBy /Out/) = 0;

        virtual HRESULT get_ModifiedDate(
            VARIANT *ModifiedDate /Out/) = 0;

        virtual HRESULT Delete() = 0;

        BSTR getURL();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_URL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_URL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=URL, get=getURL)

        BSTR getCreatedBy();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CreatedBy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CreatedBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CreatedBy, get=getCreatedBy)

        VARIANT getCreatedDate();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CreatedDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CreatedDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CreatedDate, get=getCreatedDate)

        BSTR getModifiedBy();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ModifiedBy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ModifiedBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ModifiedBy, get=getModifiedBy)

        VARIANT getModifiedDate();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ModifiedDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ModifiedDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ModifiedDate, get=getModifiedDate)
    };
};
