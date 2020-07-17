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
    struct SmartArtColor : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Id(
            BSTR *ColorStyleId /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *Description /Out/) = 0;

        virtual HRESULT get_Category(
            BSTR *Category /Out/) = 0;

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

        BSTR getCategory();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Category(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Category()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Category, get=getCategory)
    };
};
