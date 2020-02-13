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
    struct Comments : public IDispatch /Abstract/
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

        virtual HRESULT get_ShowBy(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ShowBy(
            BSTR prop) = 0;

        virtual HRESULT Item(
            long Index,
            Comment **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            VARIANT *Text = argMissing(),
            Comment **prop /Out/ = 0) = 0;

    };
};
