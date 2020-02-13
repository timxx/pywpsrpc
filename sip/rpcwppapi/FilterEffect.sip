/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct FilterEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Type(
            MsoAnimFilterEffectType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoAnimFilterEffectType Type) = 0;

        virtual HRESULT get_Subtype(
            MsoAnimFilterEffectSubtype *Subtype /Out/) = 0;

        virtual HRESULT put_Subtype(
            MsoAnimFilterEffectSubtype Subtype) = 0;

        virtual HRESULT get_Reveal(
            MsoTriState *Reveal /Out/) = 0;

        virtual HRESULT put_Reveal(
            MsoTriState Reveal) = 0;

    };
};
