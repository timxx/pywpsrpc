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
    struct MsoDebugOptions_UTManager : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_UnitTests(
            MsoDebugOptions_UTs **ppMsoUnitTests /Out/) = 0;

        virtual HRESULT NotifyStartOfTestSuiteRun() = 0;

        virtual HRESULT NotifyEndOfTestSuiteRun() = 0;

        virtual HRESULT get_ReportErrors(
            VARIANT_BOOL *pfReportErrors /Out/) = 0;

        virtual HRESULT put_ReportErrors(
            VARIANT_BOOL pfReportErrors) = 0;

        MsoDebugOptions_UTs* getUnitTests();
        %MethodCode
            ksoapi::MsoDebugOptions_UTs *prop = nullptr;
            HRESULT hr = sipCpp->get_UnitTests(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UnitTests()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UnitTests, get=getUnitTests)

        VARIANT_BOOL getReportErrors();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReportErrors(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReportErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReportErrors(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReportErrors(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReportErrors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReportErrors, get=getReportErrors, set=setReportErrors)
    };
};
