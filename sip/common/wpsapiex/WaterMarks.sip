/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapiex
{
    struct WaterMarks : public IDispatch /Abstract/
    {
    public:
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
            VARIANT *Index,
            WaterMark **prop /Out/) = 0;

        WaterMark* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapiex::WaterMark *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            WdWaterMarkType Type,
            IDispatch *HeaderFooter,
            BSTR Name,
            VARIANT_BOOL Italic,
            WaterMark **prop /Out/) = 0;

        virtual HRESULT AddWaterMarks(
            WdWaterMarkType Type,
            VARIANT *Range,
            BSTR Name,
            VARIANT_BOOL Italic,
            WaterMarks **prop /Out/) = 0;

        virtual HRESULT DeleteAll(
            VARIANT *WaterMarkType = argMissing()) = 0;

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
