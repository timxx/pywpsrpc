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
            CustomXMLPart **ppPart /Out/) = 0;

        CustomXMLPart* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::CustomXMLPart *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            BSTR XML = 0,
            VARIANT SchemaCollection = argMissing2(),
            CustomXMLPart **ppPart /Out/ = 0) = 0;

        virtual HRESULT SelectByID(
            BSTR Id,
            CustomXMLPart **ppPart /Out/) = 0;

        virtual HRESULT SelectByNamespace(
            BSTR NamespaceURI,
            CustomXMLParts **ppParts /Out/) = 0;

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
