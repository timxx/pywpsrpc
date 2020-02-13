/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct PictureEffect : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            MsoPictureEffectType *EffectType /Out/) = 0;

        virtual HRESULT put_Position(
            int Position) = 0;

        virtual HRESULT get_Position(
            int *Position /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_EffectParameters(
            EffectParameters **EffectParameters /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

    };
};
