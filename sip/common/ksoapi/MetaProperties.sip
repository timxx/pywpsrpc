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
    struct MetaProperties : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            VARIANT Index,
            MetaProperty **ppmp /Out/) = 0;

        MetaProperty* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::MetaProperty *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT GetItemByInternalName(
            BSTR InternalName,
            MetaProperty **ppmp /Out/) = 0;

        virtual HRESULT get_Count(
            long *pc /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Validate(
            BSTR *pbstrError /Out/) = 0;

        virtual HRESULT get_ValidationError(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_SchemaXml(
            BSTR *pbstr /Out/) = 0;

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        BSTR getValidationError();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ValidationError(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ValidationError()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ValidationError, get=getValidationError)

        BSTR getSchemaXml();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SchemaXml(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SchemaXml()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SchemaXml, get=getSchemaXml)

    };
};
