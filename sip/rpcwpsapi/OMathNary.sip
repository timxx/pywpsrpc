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
    struct OMathNary : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Sub(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Sup(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Char(
            short *prop /Out/) = 0;

        virtual HRESULT put_Char(
            short prop) = 0;

        virtual HRESULT get_Grow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Grow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SubSupLim(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SubSupLim(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideSub(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideSub(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideSup(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideSup(
            VARIANT_BOOL prop) = 0;

    };
};
