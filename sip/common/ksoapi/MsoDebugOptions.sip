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

    };
};
