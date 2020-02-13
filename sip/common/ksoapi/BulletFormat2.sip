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
    struct BulletFormat2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Character(
            int *Character /Out/) = 0;

        virtual HRESULT put_Character(
            int Character) = 0;

        virtual HRESULT get_Font(
            Font2 **Font /Out/) = 0;

        virtual HRESULT get_Number(
            int *Number /Out/) = 0;

        virtual HRESULT Picture(
            BSTR FileName) = 0;

        virtual HRESULT get_RelativeSize(
            single *Size /Out/) = 0;

        virtual HRESULT put_RelativeSize(
            single Size) = 0;

        virtual HRESULT get_StartValue(
            int *Start /Out/) = 0;

        virtual HRESULT put_StartValue(
            int Start) = 0;

        virtual HRESULT get_Style(
            MsoNumberedBulletStyle *Style /Out/) = 0;

        virtual HRESULT put_Style(
            MsoNumberedBulletStyle Style) = 0;

        virtual HRESULT get_Type(
            MsoBulletType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoBulletType Type) = 0;

        virtual HRESULT get_UseTextColor(
            MsoTriState *UseTextColor /Out/) = 0;

        virtual HRESULT put_UseTextColor(
            MsoTriState UseTextColor) = 0;

        virtual HRESULT get_UseTextFont(
            MsoTriState *UseTextFont /Out/) = 0;

        virtual HRESULT put_UseTextFont(
            MsoTriState UseTextFont) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

    };
};
