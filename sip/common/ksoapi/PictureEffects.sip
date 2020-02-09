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
    struct PictureEffects : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            int Index,
            PictureEffect **Item /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT Insert(
            MsoPictureEffectType EffectType,
            int Position,
            PictureEffect **Effect /Out/) = 0;

        virtual HRESULT Delete(
            int Index = -1) = 0;
    };

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

    struct EffectParameters : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            VARIANT Index,
            EffectParameter **EffectParameter /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;
    };

    struct EffectParameter : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Value(
            VARIANT *Value /Out/) = 0;

        virtual HRESULT put_Value(
            VARIANT Value) = 0;
    };
};