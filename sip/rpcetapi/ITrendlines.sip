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
    struct ITrendlines : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            XlTrendlineType Type = etapi::xlExponential,
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

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            VARIANT Index = argMissing2(),
            Trendline **RHS /Out/ = 0) = 0;

        Trendline* __getitem__(VARIANT index) const;
        %MethodCode
            etapi::Trendline *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index = argMissing2(),
            Trendline **RHS /Out/ = 0) = 0;

    };
};
