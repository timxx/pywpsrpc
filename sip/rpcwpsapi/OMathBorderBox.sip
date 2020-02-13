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
    struct OMathBorderBox : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_HideTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideTop(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideBot(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideBot(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideLeft(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideLeft(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideRight(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideRight(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeH(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeH(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeV(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeV(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeBLTR(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeBLTR(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeTLBR(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeTLBR(
            VARIANT_BOOL prop) = 0;

    };
};
