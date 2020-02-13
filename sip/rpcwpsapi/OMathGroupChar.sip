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
    struct OMathGroupChar : public IDispatch /Abstract/
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

        virtual HRESULT get_Char(
            short *prop /Out/) = 0;

        virtual HRESULT put_Char(
            short prop) = 0;

        virtual HRESULT get_CharTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CharTop(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AlignTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlignTop(
            VARIANT_BOOL prop) = 0;

    };
};
