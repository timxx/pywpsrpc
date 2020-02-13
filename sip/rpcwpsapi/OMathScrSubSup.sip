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
    struct OMathScrSubSup : public IDispatch /Abstract/
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

        virtual HRESULT get_Sub(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Sup(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_AlignScripts(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlignScripts(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT RemoveSub(
            OMathFunction **prop /Out/) = 0;

        virtual HRESULT RemoveSup(
            OMathFunction **prop /Out/) = 0;

        virtual HRESULT ToScrPre(
            OMathFunction **prop /Out/) = 0;

    };
};
