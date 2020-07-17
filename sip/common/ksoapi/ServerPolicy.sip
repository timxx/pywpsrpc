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
    struct ServerPolicy : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            VARIANT Index,
            PolicyItem **pppi /Out/) = 0;

        PolicyItem* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::PolicyItem *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Id(
            BSTR *pbstrID /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *pbstrDescription /Out/) = 0;

        virtual HRESULT get_Statement(
            BSTR *pbstrStatement /Out/) = 0;

        virtual HRESULT get_Count(
            long *pc /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_BlockPreview(
            VARIANT_BOOL *pfBlockPreview /Out/) = 0;

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

        BSTR getDescription();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Description(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Description()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Description, get=getDescription)

        BSTR getStatement();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Statement(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Statement()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Statement, get=getStatement)

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

        VARIANT_BOOL getBlockPreview();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BlockPreview(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BlockPreview()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BlockPreview, get=getBlockPreview)
    };
};
