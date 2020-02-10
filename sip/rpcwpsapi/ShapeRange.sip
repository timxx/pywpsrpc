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
    struct ShapeRange : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **prop /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            MsoAutoShapeType *prop /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            MsoAutoShapeType prop) = 0;

        virtual HRESULT get_Callout(
            CalloutFormat **prop /Out/) = 0;

        virtual HRESULT get_ConnectionSiteCount(
            long *prop /Out/) = 0;

        virtual HRESULT get_Connector(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_ConnectorFormat(
            ConnectorFormat **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            FillFormat **prop /Out/) = 0;

        virtual HRESULT get_GroupItems(
            GroupShapes **prop /Out/) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HorizontalFlip(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_Left(
            single *prop /Out/) = 0;

        virtual HRESULT put_Left(
            single prop) = 0;

        virtual HRESULT get_Line(
            LineFormat **prop /Out/) = 0;

        virtual HRESULT get_LockAspectRatio(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_LockAspectRatio(
            MsoTriState prop) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_Nodes(
            ShapeNodes **prop /Out/) = 0;

        virtual HRESULT get_Rotation(
            single *prop /Out/) = 0;

        virtual HRESULT put_Rotation(
            single prop) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **prop /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **prop /Out/) = 0;

        virtual HRESULT get_TextEffect(
            TextEffectFormat **prop /Out/) = 0;

        virtual HRESULT get_TextFrame(
            TextFrame **prop /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **prop /Out/) = 0;

        virtual HRESULT get_Top(
            single *prop /Out/) = 0;

        virtual HRESULT put_Top(
            single prop) = 0;

        virtual HRESULT get_Type(
            MsoShapeType *prop /Out/) = 0;

        virtual HRESULT get_VerticalFlip(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_Vertices(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_ZOrderPosition(
            long *prop /Out/) = 0;

        virtual HRESULT get_Hyperlink(
            Hyperlink **prop /Out/) = 0;

        virtual HRESULT get_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition prop) = 0;

        virtual HRESULT get_RelativeVerticalPosition(
            WdRelativeVerticalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeVerticalPosition(
            WdRelativeVerticalPosition prop) = 0;

        virtual HRESULT get_LockAnchor(
            long *prop /Out/) = 0;

        virtual HRESULT put_LockAnchor(
            long prop) = 0;

        virtual HRESULT get_WrapFormat(
            WrapFormat **prop /Out/) = 0;

        virtual HRESULT get_Anchor(
            Range **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Shape **prop /Out/) = 0;

        virtual HRESULT Align(
            MsoAlignCmd Align,
            long RelativeTo) = 0;

        virtual HRESULT Apply() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Distribute(
            MsoDistributeCmd Distribute,
            long RelativeTo) = 0;

        virtual HRESULT Duplicate(
            ShapeRange **prop /Out/) = 0;

        virtual HRESULT Flip(
            MsoFlipCmd FlipCmd) = 0;

        virtual HRESULT IncrementLeft(
            single Increment) = 0;

        virtual HRESULT IncrementRotation(
            single Increment) = 0;

        virtual HRESULT IncrementTop(
            single Increment) = 0;

        virtual HRESULT Group(
            Shape **prop /Out/) = 0;

        virtual HRESULT PickUp() = 0;

        virtual HRESULT Regroup(
            Shape **prop /Out/) = 0;

        virtual HRESULT RerouteConnections() = 0;

        virtual HRESULT ScaleHeight(
            single Factor,
            MsoTriState RelativeToOriginalSize,
            MsoScaleFrom Scale = wpsapi::msoScaleFromTopLeft) = 0;

        virtual HRESULT ScaleWidth(
            single Factor,
            MsoTriState RelativeToOriginalSize,
            MsoScaleFrom Scale = wpsapi::msoScaleFromTopLeft) = 0;

        virtual HRESULT Select(
            VARIANT *Replace = argMissing()) = 0;

        virtual HRESULT SetShapesDefaultProperties() = 0;

        virtual HRESULT Ungroup(
            ShapeRange **prop /Out/) = 0;

        virtual HRESULT ZOrder(
            MsoZOrderCmd ZOrderCmd) = 0;

        virtual HRESULT ConvertToFrame(
            Frame **prop /Out/) = 0;

        virtual HRESULT ConvertToInlineShape(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR prop) = 0;

        virtual HRESULT get_HasDiagram(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_Diagram(
            ksoapi::IMsoDiagram **prop /Out/) = 0;

        virtual HRESULT get_HasDiagramNode(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_DiagramNode(
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT get_Child(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_ParentGroup(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_CanvasItems(
            CanvasShapes **prop /Out/) = 0;

        virtual HRESULT get_ID(
            long *prop /Out/) = 0;

        virtual HRESULT CanvasCropLeft(
            single Increment) = 0;

        virtual HRESULT CanvasCropTop(
            single Increment) = 0;

        virtual HRESULT CanvasCropRight(
            single Increment) = 0;

        virtual HRESULT CanvasCropBottom(
            single Increment) = 0;

        virtual HRESULT put_RTF(
            BSTR rhs) = 0;

        virtual HRESULT get_LayoutInCell(
            long *prop /Out/) = 0;

        virtual HRESULT put_LayoutInCell(
            long prop) = 0;

        virtual HRESULT get_LeftRelative(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftRelative(
            single prop) = 0;

        virtual HRESULT get_TopRelative(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopRelative(
            single prop) = 0;

        virtual HRESULT get_WidthRelative(
            single *prop /Out/) = 0;

        virtual HRESULT put_WidthRelative(
            single prop) = 0;

        virtual HRESULT get_HeightRelative(
            single *prop /Out/) = 0;

        virtual HRESULT put_HeightRelative(
            single prop) = 0;

        virtual HRESULT get_RelativeHorizontalSize(
            WdRelativeHorizontalSize *prop /Out/) = 0;

        virtual HRESULT put_RelativeHorizontalSize(
            WdRelativeHorizontalSize prop) = 0;

        virtual HRESULT get_RelativeVerticalSize(
            WdRelativeVerticalSize *prop /Out/) = 0;

        virtual HRESULT put_RelativeVerticalSize(
            WdRelativeVerticalSize prop) = 0;

        virtual HRESULT get_SoftEdge(
            SoftEdgeFormat **prop /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **prop /Out/) = 0;

        virtual HRESULT get_Reflection(
            ReflectionFormat **prop /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            ksoapi::TextFrame2 **prop /Out/) = 0;

        virtual HRESULT get_ShapeStyle(
            MsoShapeStyleIndex *prop /Out/) = 0;

        virtual HRESULT put_ShapeStyle(
            MsoShapeStyleIndex prop) = 0;

        virtual HRESULT get_BackgroundStyle(
            MsoBackgroundStyleIndex *prop /Out/) = 0;

        virtual HRESULT put_BackgroundStyle(
            MsoBackgroundStyleIndex prop) = 0;

        virtual HRESULT get_Title(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR prop) = 0;
    };

    struct Adjustments : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Item(
            long Index,
            single *prop /Out/) = 0;

        virtual HRESULT put_Item(
            long Index,
            single prop) = 0;
    };
};