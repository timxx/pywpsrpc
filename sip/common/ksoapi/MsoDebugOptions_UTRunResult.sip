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
    struct MsoDebugOptions_UTRunResult : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Passed(
            VARIANT_BOOL *Passed /Out/) = 0;

        virtual HRESULT get_ErrorString(
            BSTR *Error /Out/) = 0;

        VARIANT_BOOL getPassed();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Passed(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Passed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Passed, get=getPassed)

        BSTR getErrorString();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ErrorString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ErrorString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ErrorString, get=getErrorString)
    };
};
