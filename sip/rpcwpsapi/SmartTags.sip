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
    struct SmartTags : public IDispatch /Abstract/
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
            VARIANT *Index,
            SmartTag **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            VARIANT *Range = argMissing(),
            VARIANT *Properties = argMissing(),
            SmartTag **prop /Out/ = 0) = 0;

        virtual HRESULT SmartTagsByType(
            BSTR Name,
            SmartTags **prop /Out/) = 0;

    };
};
