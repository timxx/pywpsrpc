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
    struct Tables : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Table **prop /Out/) = 0;

        virtual HRESULT AddOld(
            Range *Range,
            long NumRows,
            long NumColumns,
            Table **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            long NumRows,
            long NumColumns,
            VARIANT *DefaultTableBehavior = argMissing(),
            VARIANT *AutoFitBehavior = argMissing(),
            Table **prop /Out/ = 0) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

    };
};
