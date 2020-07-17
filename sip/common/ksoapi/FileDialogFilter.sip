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
    struct FileDialogFilter : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Extensions(
            BSTR *Extensions /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *Description /Out/) = 0;

        BSTR getExtensions();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Extensions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Extensions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Extensions, get=getExtensions)

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
    };
};
