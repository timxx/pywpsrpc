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

    };
};
