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
    struct _CustomXMLSchemaCollection : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Item(
            VARIANT Index,
            CustomXMLSchema **ppSchema /Out/) = 0;

        CustomXMLSchema* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::CustomXMLSchema *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_NamespaceURI(
            long Index,
            BSTR *pbstrNamespaceURI /Out/) = 0;

        virtual HRESULT Add(
            BSTR NamespaceURI = 0,
            BSTR Alias = 0,
            BSTR FileName = 0,
            VARIANT_BOOL InstallForAllUsers = VARIANT_FALSE,
            CustomXMLSchema **ppSchema /Out/ = 0) = 0;

        virtual HRESULT AddCollection(
            CustomXMLSchemaCollection *SchemaCollection) = 0;

        virtual HRESULT Validate(
            VARIANT_BOOL *pfResult /Out/) = 0;

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

    };
};
