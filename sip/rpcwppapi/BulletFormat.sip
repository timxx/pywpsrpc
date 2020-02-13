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
    struct BulletFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Character(
            int *Character /Out/) = 0;

        virtual HRESULT put_Character(
            int Character) = 0;

        virtual HRESULT get_RelativeSize(
            single *RelativeSize /Out/) = 0;

        virtual HRESULT put_RelativeSize(
            single RelativeSize) = 0;

        virtual HRESULT get_UseTextColor(
            MsoTriState *UseTextColor /Out/) = 0;

        virtual HRESULT put_UseTextColor(
            MsoTriState UseTextColor) = 0;

        virtual HRESULT get_UseTextFont(
            MsoTriState *UseTextFont /Out/) = 0;

        virtual HRESULT put_UseTextFont(
            MsoTriState UseTextFont) = 0;

        virtual HRESULT get_Font(
            Font **Font /Out/) = 0;

        virtual HRESULT get_Type(
            PpBulletType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            PpBulletType Type) = 0;

        virtual HRESULT get_Style(
            PpNumberedBulletStyle *Style /Out/) = 0;

        virtual HRESULT put_Style(
            PpNumberedBulletStyle Style) = 0;

        virtual HRESULT get_StartValue(
            int *StartValue /Out/) = 0;

        virtual HRESULT put_StartValue(
            int StartValue) = 0;

        virtual HRESULT Picture(
            BSTR Picture) = 0;

        virtual HRESULT get_Number(
            int *Number /Out/) = 0;

    };
};
