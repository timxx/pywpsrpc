/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IScenarios : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            VARIANT ChangingCells,
            VARIANT Values = argMissing2(),
            VARIANT Comment = argMissing2(),
            VARIANT Locked = argMissing2(),
            VARIANT Hidden = argMissing2(),
            Scenario **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT CreateSummary(
            XlSummaryReportType ReportType,
            VARIANT ResultCells = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Scenario **RHS /Out/) = 0;

        virtual HRESULT Merge(
            VARIANT Source,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

    };
};
