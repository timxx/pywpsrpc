/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct ChartCategory : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_IsFiltered(
            VARIANT_BOOL *pfIsFiltered /Out/) = 0;

        virtual HRESULT put_IsFiltered(
            VARIANT_BOOL pfIsFiltered) = 0;

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

        VARIANT_BOOL getIsFiltered();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsFiltered(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsFiltered()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIsFiltered(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IsFiltered(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IsFiltered()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IsFiltered, get=getIsFiltered, set=setIsFiltered)
    };
};
