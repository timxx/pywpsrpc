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
    struct ODSOFilters : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParentOdso /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            IDispatch **ppColumn /Out/) = 0;

        virtual HRESULT Add(
            BSTR Column,
            MsoFilterComparison Comparison,
            MsoFilterConjunction Conjunction,
            BSTR bstrCompareTo = 0,
            VARIANT_BOOL DeferUpdate = 0) = 0;

        virtual HRESULT Delete(
            long Index,
            VARIANT_BOOL DeferUpdate = 0) = 0;

    };
};
