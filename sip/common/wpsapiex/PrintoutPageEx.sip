/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapiex
{
    struct PrintoutPageEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_PrintOutRange(
            int *printOutRange /Out/) = 0;

        virtual HRESULT get_PrintOutPages(
            BSTR *pages /Out/) = 0;

        int getPrintOutRange();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_PrintOutRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintOutRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrintOutRange, get=getPrintOutRange)

        BSTR getPrintOutPages();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PrintOutPages(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintOutPages()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrintOutPages, get=getPrintOutPages)
    };
};
