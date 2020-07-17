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
    struct SharedWorkspaceMember : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_DomainName(
            BSTR *pbstrDomainName /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_Email(
            BSTR *pbstrEmail /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Id(
            BSTR *Id /Out/) = 0;

        BSTR getDomainName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DomainName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DomainName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DomainName, get=getDomainName)

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

        BSTR getEmail();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Email(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Email()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Email, get=getEmail)

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
    };
};
