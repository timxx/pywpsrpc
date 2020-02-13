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
    struct IMsoChartData : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Workbook(
            IDispatch **ppdispWorkbook /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_IsLinked(
            VARIANT_BOOL *pfIsLinked /Out/) = 0;

        virtual HRESULT BreakLink() = 0;

        virtual HRESULT ActivateChartDataWindow() = 0;

    };
};
