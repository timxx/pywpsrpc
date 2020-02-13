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
    struct TextFrame : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Creator(
            long *plCreator /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_MarginBottom(
            single *MarginBottom /Out/) = 0;

        virtual HRESULT put_MarginBottom(
            single MarginBottom) = 0;

        virtual HRESULT get_MarginLeft(
            single *MarginLeft /Out/) = 0;

        virtual HRESULT put_MarginLeft(
            single MarginLeft) = 0;

        virtual HRESULT get_MarginRight(
            single *MarginRight /Out/) = 0;

        virtual HRESULT put_MarginRight(
            single MarginRight) = 0;

        virtual HRESULT get_MarginTop(
            single *MarginTop /Out/) = 0;

        virtual HRESULT put_MarginTop(
            single MarginTop) = 0;

        virtual HRESULT get_Orientation(
            MsoTextOrientation *Orientation /Out/) = 0;

        virtual HRESULT put_Orientation(
            MsoTextOrientation Orientation) = 0;

        virtual HRESULT get_HasText(
            MsoTriState *HasText /Out/) = 0;

        virtual HRESULT get_TextRange(
            TextRange **TextRange /Out/) = 0;

        virtual HRESULT get_Ruler(
            Ruler **Ruler /Out/) = 0;

        virtual HRESULT get_HorizontalAnchor(
            MsoHorizontalAnchor *HorizontalAnchor /Out/) = 0;

        virtual HRESULT put_HorizontalAnchor(
            MsoHorizontalAnchor HorizontalAnchor) = 0;

        virtual HRESULT get_VerticalAnchor(
            MsoVerticalAnchor *VerticalAnchor /Out/) = 0;

        virtual HRESULT put_VerticalAnchor(
            MsoVerticalAnchor VerticalAnchor) = 0;

        virtual HRESULT get_AutoSize(
            PpAutoSize *AutoSize /Out/) = 0;

        virtual HRESULT put_AutoSize(
            PpAutoSize AutoSize) = 0;

        virtual HRESULT get_WordWrap(
            MsoTriState *WordWrap /Out/) = 0;

        virtual HRESULT put_WordWrap(
            MsoTriState WordWrap) = 0;

        virtual HRESULT DeleteText() = 0;

    };
};
