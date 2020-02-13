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
    struct OMathBox : public IDispatch /Abstract/
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

        virtual HRESULT get_OpEmu(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OpEmu(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NoBreak(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoBreak(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Diff(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Diff(
            VARIANT_BOOL prop) = 0;

    };
};
