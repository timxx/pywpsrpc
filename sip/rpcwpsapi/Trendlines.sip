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
        virtual HRESULT Add(
            XlTrendlineType Type = wpsapi::xlExponential,
            VARIANT Order = argMissing2(),
            VARIANT Period = argMissing2(),
            VARIANT Forward = argMissing2(),
            VARIANT Backward = argMissing2(),
            VARIANT Intercept = argMissing2(),
            VARIANT DisplayEquation = argMissing2(),
            VARIANT DisplayRSquared = argMissing2(),
            VARIANT Name = argMissing2(),
            Trendline **prop /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            VARIANT Index = argMissing2(),
            Trendline **prop /Out/ = 0) = 0;

        Trendline* __getitem__(VARIANT index) const;
        %MethodCode
            wpsapi::Trendline *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT _Default(
            VARIANT Index = argMissing2(),
            Trendline **prop /Out/ = 0) = 0;

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)
    };
};
