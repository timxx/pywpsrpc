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
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            WaterMark **prop /Out/) = 0;

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

    };
};
