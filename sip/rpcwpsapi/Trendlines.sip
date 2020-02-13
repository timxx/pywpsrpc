/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Trendlines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Add(
            XlTrendlineType Type,
            VARIANT Order,
            VARIANT Period,
            VARIANT Forward,
            VARIANT Backward,
            VARIANT Intercept,
            VARIANT DisplayEquation,
            VARIANT DisplayRSquared,
            VARIANT Name,
            Trendline **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Trendline **prop /Out/) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index,
            Trendline **prop /Out/) = 0;

    };
};
