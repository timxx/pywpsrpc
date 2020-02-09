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
    struct GradientStops : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            int Index,
            GradientStop **Item /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT Delete(
            int Index = -1) = 0;

        virtual HRESULT Insert(
            MsoRGBType RGB,
            single Position,
            single Transparency = 0,
            int Index = -1) = 0;

        virtual HRESULT Insert2(
            MsoRGBType RGB,
            single Position,
            single Transparency = 0,
            int Index = -1,
            single Brightness = 0) = 0;
    };

    struct GradientStop : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Color(
            ColorFormat **Color /Out/) = 0;

        virtual HRESULT get_Position(
            single *Position /Out/) = 0;

        virtual HRESULT put_Position(
            single Position) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;
    };
};