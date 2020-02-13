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
    struct IChartEvents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Activate() = 0;

        virtual HRESULT Deactivate() = 0;

        virtual HRESULT Resize() = 0;

        virtual HRESULT MouseDown(
            long Button,
            long Shift,
            long x,
            long y) = 0;

        virtual HRESULT MouseUp(
            long Button,
            long Shift,
            long x,
            long y) = 0;

        virtual HRESULT MouseMove(
            long Button,
            long Shift,
            long x,
            long y) = 0;

        virtual HRESULT BeforeRightClick(
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT DragPlot() = 0;

        virtual HRESULT DragOver() = 0;

        virtual HRESULT BeforeDoubleClick(
            long ElementID,
            long Arg1,
            long Arg2,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT Select(
            long ElementID,
            long Arg1,
            long Arg2) = 0;

        virtual HRESULT SeriesChange(
            long SeriesIndex,
            long PointIndex) = 0;

        virtual HRESULT Calculate() = 0;

    };
};
