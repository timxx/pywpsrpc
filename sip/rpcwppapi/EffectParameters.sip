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
    struct EffectParameters : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Direction(
            MsoAnimDirection *Direction /Out/) = 0;

        virtual HRESULT put_Direction(
            MsoAnimDirection Direction) = 0;

        virtual HRESULT get_Amount(
            single *Amount /Out/) = 0;

        virtual HRESULT put_Amount(
            single Amount) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_Color2(
            ColorFormat **Color2 /Out/) = 0;

        virtual HRESULT get_Relative(
            MsoTriState *Relative /Out/) = 0;

        virtual HRESULT put_Relative(
            MsoTriState Relative) = 0;

        virtual HRESULT get_FontName(
            BSTR *FontName /Out/) = 0;

        virtual HRESULT put_FontName(
            BSTR FontName) = 0;

    };
};
