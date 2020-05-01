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
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            XlTrendlineType Type = ksoapi::xlLinear,
            VARIANT Order = argMissing2(),
            VARIANT Period = argMissing2(),
            VARIANT Forward = argMissing2(),
            VARIANT Backward = argMissing2(),
            VARIANT Intercept = argMissing2(),
            VARIANT DisplayEquation = argMissing2(),
            VARIANT DisplayRSquared = argMissing2(),
            VARIANT Name = argMissing2(),
            IMsoTrendline **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            VARIANT Index = argMissing2(),
            IMsoTrendline **RHS /Out/ = 0) = 0;

        IMsoTrendline* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::IMsoTrendline *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index = argMissing2(),
            IMsoTrendline **RHS /Out/ = 0) = 0;

    };
};
