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
    struct ITimelineState : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_StartDate(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_EndDate(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_FilterType(
            XlPivotFilterType *RHS /Out/) = 0;

        virtual HRESULT get_FilterValue1(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_FilterValue2(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_SingleRangeFilterState(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT SetFilterDateRange(
            VARIANT StartDate,
            VARIANT EndDate,
            XlFilterStatus *RHS /Out/) = 0;

    };
};
