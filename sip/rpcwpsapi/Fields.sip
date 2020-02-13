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
    struct Fields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Locked(
            long *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            long prop) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Field **prop /Out/) = 0;

        virtual HRESULT ToggleShowCodes() = 0;

        virtual HRESULT Update(
            long *prop /Out/) = 0;

        virtual HRESULT Unlink() = 0;

        virtual HRESULT UpdateSource() = 0;

        virtual HRESULT Add(
            Range *Range,
            VARIANT *Type = argMissing(),
            VARIANT *Text = argMissing(),
            VARIANT *PreserveFormatting = argMissing(),
            Field **prop /Out/ = 0) = 0;

    };
};
