/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct XSLTransform : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Alias(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR *prop /Out/ = 0) = 0;

        virtual HRESULT put_Alias(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR prop = 0) = 0;

        virtual HRESULT get_Location(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR *prop /Out/ = 0) = 0;

        virtual HRESULT put_Location(
            VARIANT_BOOL AllUsers = VARIANT_FALSE,
            BSTR prop = 0) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        BSTR getID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ID, get=getID)
    };
};
