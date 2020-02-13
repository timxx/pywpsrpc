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
    struct Trendlines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT  get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT  Add(
            XlTrendlineType Type,
            VARIANT Order,
            VARIANT Period,
            VARIANT Forward,
            VARIANT Backward,
            VARIANT Intercept,
            VARIANT DisplayEquation,
            VARIANT DisplayRSquared,
            VARIANT Name,
            IMsoTrendline **RHS /Out/) = 0;

        virtual HRESULT  get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT  Item(
            VARIANT Index,
            IMsoTrendline **RHS /Out/) = 0;

        virtual HRESULT  _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT  get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT  get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT  get__Default(
            VARIANT Index,
            IMsoTrendline **RHS /Out/) = 0;

    };
};
