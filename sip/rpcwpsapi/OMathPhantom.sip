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
    struct OMathPhantom : public IDispatch /Abstract/
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

        virtual HRESULT get_Show(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Show(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ZeroWid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ZeroWid(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ZeroAsc(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ZeroAsc(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ZeroDesc(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ZeroDesc(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Transp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Transp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Smash(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Smash(
            VARIANT_BOOL prop) = 0;

    };
};
