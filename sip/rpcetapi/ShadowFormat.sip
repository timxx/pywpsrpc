/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct ShadowFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT IncrementOffsetX(
            single Increment) = 0;

        virtual HRESULT IncrementOffsetY(
            single Increment) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **ForeColor /Out/) = 0;

        virtual HRESULT put_ForeColor(
            ColorFormat *ForeColor) = 0;

        virtual HRESULT get_Obscured(
            MsoTriState *Obscured /Out/) = 0;

        virtual HRESULT put_Obscured(
            MsoTriState Obscured) = 0;

        virtual HRESULT get_OffsetX(
            single *OffsetX /Out/) = 0;

        virtual HRESULT put_OffsetX(
            single OffsetX) = 0;

        virtual HRESULT get_OffsetY(
            single *OffsetY /Out/) = 0;

        virtual HRESULT put_OffsetY(
            single OffsetY) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Type(
            MsoShadowType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoShadowType Type) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Style(
            MsoShadowStyle *ShadowStyle /Out/) = 0;

        virtual HRESULT put_Style(
            MsoShadowStyle ShadowStyle) = 0;

        virtual HRESULT get_Blur(
            single *Blur /Out/) = 0;

        virtual HRESULT put_Blur(
            single Blur) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_RotateWithShape(
            MsoTriState *RotateWithShape /Out/) = 0;

        virtual HRESULT put_RotateWithShape(
            MsoTriState RotateWithShape) = 0;

    };
};
