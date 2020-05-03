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
    struct SmartDocument : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_SolutionID(
            BSTR *pbstrID /Out/) = 0;

        virtual HRESULT put_SolutionID(
            BSTR pbstrID) = 0;

        virtual HRESULT get_SolutionURL(
            BSTR *pbstrUrl /Out/) = 0;

        virtual HRESULT put_SolutionURL(
            BSTR pbstrUrl) = 0;

        virtual HRESULT PickSolution(
            VARIANT_BOOL ConsiderAllSchemas = VARIANT_FALSE) = 0;

        virtual HRESULT RefreshPane() = 0;

        BSTR getSolutionID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SolutionID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SolutionID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSolutionID(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SolutionID(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SolutionID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SolutionID, get=getSolutionID, set=setSolutionID)

        BSTR getSolutionURL();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SolutionURL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SolutionURL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSolutionURL(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SolutionURL(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SolutionURL()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SolutionURL, get=getSolutionURL, set=setSolutionURL)
    };
};
