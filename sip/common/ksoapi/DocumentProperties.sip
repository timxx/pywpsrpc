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
    struct DocumentProperties : public IDispatch /Abstract/
    {
    public:
        virtual IDispatch *get_Parent() = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            long lcid,
            DocumentProperty **ppIDocProp /Out/) = 0;

        DocumentProperty* __getitem__(VARIANT Index) const;
        %MethodCode
            ksoapi::DocumentProperty *prop = nullptr;
            if (sipCpp->get_Item(*a0, 0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Count(
            long *pc /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Add(
            BSTR Name,
            VARIANT_BOOL LinkToContent,
            VARIANT Type = argMissing2(),
            VARIANT Value = argMissing2(),
            VARIANT LinkSource = argMissing2(),
            long lcid = 0,
            DocumentProperty **ppIDocProp /Out/ = 0) = 0;

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
