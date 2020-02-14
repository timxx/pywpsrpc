/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Trendlines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            XlTrendlineType Type,
            VARIANT Order = argMissing2(),
            VARIANT Period = argMissing2(),
            VARIANT Forward = argMissing2(),
            VARIANT Backward = argMissing2(),
            VARIANT Intercept = argMissing2(),
            VARIANT DisplayEquation = argMissing2(),
            VARIANT DisplayRSquared = argMissing2(),
            VARIANT Name = argMissing2(),
            Trendline **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index = argMissing2(),
            Trendline **RHS /Out/ = 0) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index = argMissing2(),
            Trendline **RHS /Out/ = 0) = 0;

    };
};
