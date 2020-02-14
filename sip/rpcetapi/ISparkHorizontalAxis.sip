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
    struct ISparkHorizontalAxis : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Axis(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_IsDateAxis(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RightToLeftPlotOrder(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RightToLeftPlotOrder(
            VARIANT_BOOL RHS) = 0;

    };
};