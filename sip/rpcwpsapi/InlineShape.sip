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
    struct InlineShape : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_LinkFormat(
            LinkFormat **prop /Out/) = 0;

        virtual HRESULT get_Field(
            Field **prop /Out/) = 0;

        virtual HRESULT get_OLEFormat(
            OLEFormat **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdInlineShapeType *prop /Out/) = 0;

        virtual HRESULT get_Hyperlink(
            Hyperlink **prop /Out/) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_ScaleHeight(
            single *prop /Out/) = 0;

        virtual HRESULT put_ScaleHeight(
            single prop) = 0;

        virtual HRESULT get_ScaleWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_ScaleWidth(
            single prop) = 0;

        virtual HRESULT get_LockAspectRatio(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_LockAspectRatio(
            MsoTriState prop) = 0;

        virtual HRESULT get_Line(
            LineFormat **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            FillFormat **prop /Out/) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **prop /Out/) = 0;

        virtual HRESULT put_PictureFormat(
            PictureFormat *prop) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT ConvertToShape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_HorizontalLineFormat(
            HorizontalLineFormat **prop /Out/) = 0;

        virtual HRESULT get_Script(
            ksoapi::Script **prop /Out/) = 0;

        virtual HRESULT get_OWSAnchor(
            long *prop /Out/) = 0;

        virtual HRESULT get_TextEffect(
            TextEffectFormat **prop /Out/) = 0;

        virtual HRESULT put_TextEffect(
            TextEffectFormat *prop) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR prop) = 0;

        virtual HRESULT get_IsPictureBullet(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_GroupItems(
            GroupShapes **prop /Out/) = 0;

        virtual HRESULT get_HasChart(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_Chart(
            Chart **prop /Out/) = 0;

        virtual HRESULT get_SoftEdge(
            SoftEdgeFormat **prop /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **prop /Out/) = 0;

        virtual HRESULT get_Reflection(
            ReflectionFormat **prop /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **prop /Out/) = 0;

        virtual HRESULT get_HasSmartArt(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_SmartArt(
            ksoapi::SmartArt **prop /Out/) = 0;

        virtual HRESULT get_Title(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR prop) = 0;

        virtual HRESULT get_AnchorID(
            long *prop /Out/) = 0;

        virtual HRESULT get_EditID(
            long *prop /Out/) = 0;

    };
};
