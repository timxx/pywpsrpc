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
    struct MsoDebugOptions : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_FeatureReports(
            int *puintFeatureReports /Out/) = 0;

        virtual HRESULT put_FeatureReports(
            int puintFeatureReports) = 0;

        virtual HRESULT get_OutputToDebugger(
            VARIANT_BOOL *pvarfOutputToDebugger /Out/) = 0;

        virtual HRESULT put_OutputToDebugger(
            VARIANT_BOOL pvarfOutputToDebugger) = 0;

        virtual HRESULT get_OutputToFile(
            VARIANT_BOOL *pvarfOutputToFile /Out/) = 0;

        virtual HRESULT put_OutputToFile(
            VARIANT_BOOL pvarfOutputToFile) = 0;

        virtual HRESULT get_OutputToMessageBox(
            VARIANT_BOOL *pvarfOutputToMessageBox /Out/) = 0;

        virtual HRESULT put_OutputToMessageBox(
            VARIANT_BOOL pvarfOutputToMessageBox) = 0;

        virtual HRESULT get_UnitTestManager(
            IUnknown **ppMsoUnitTestManager /Out/) = 0;

        virtual HRESULT AddIgnoredAssertTag(
            BSTR bstrTagToIgnore) = 0;

        virtual HRESULT RemoveIgnoredAssertTag(
            BSTR bstrTagToIgnore) = 0;

        int getFeatureReports();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_FeatureReports(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FeatureReports()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFeatureReports(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FeatureReports(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FeatureReports()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FeatureReports, get=getFeatureReports, set=setFeatureReports)

        VARIANT_BOOL getOutputToDebugger();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OutputToDebugger(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutputToDebugger()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutputToDebugger(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutputToDebugger(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutputToDebugger()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutputToDebugger, get=getOutputToDebugger, set=setOutputToDebugger)

        VARIANT_BOOL getOutputToFile();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OutputToFile(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutputToFile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutputToFile(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutputToFile(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutputToFile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutputToFile, get=getOutputToFile, set=setOutputToFile)

        VARIANT_BOOL getOutputToMessageBox();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OutputToMessageBox(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutputToMessageBox()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutputToMessageBox(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutputToMessageBox(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutputToMessageBox()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutputToMessageBox, get=getOutputToMessageBox, set=setOutputToMessageBox)

        IUnknown* getUnitTestManager();
        %MethodCode
            IUnknown *prop = nullptr;
            HRESULT hr = sipCpp->get_UnitTestManager(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UnitTestManager()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UnitTestManager, get=getUnitTestManager)
    };
};
