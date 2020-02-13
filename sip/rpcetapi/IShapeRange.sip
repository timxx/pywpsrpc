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
    struct IShapeRange : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Shape **RHS /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index,
            Shape **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT Align(
            MsoAlignCmd AlignCmd,
            MsoTriState RelativeTo) = 0;

        virtual HRESULT Apply() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Distribute(
            MsoDistributeCmd DistributeCmd,
            MsoTriState RelativeTo) = 0;

        virtual HRESULT Duplicate(
            ShapeRange **RHS /Out/) = 0;

        virtual HRESULT Flip(
            MsoFlipCmd FlipCmd) = 0;

        virtual HRESULT IncrementLeft(
            single Increment) = 0;

        virtual HRESULT IncrementRotation(
            single Increment) = 0;

        virtual HRESULT IncrementTop(
            single Increment) = 0;

        virtual HRESULT Group(
            Shape **RHS /Out/) = 0;

        virtual HRESULT PickUp() = 0;

        virtual HRESULT RerouteConnections() = 0;

        virtual HRESULT Regroup(
            Shape **RHS /Out/) = 0;

        virtual HRESULT ScaleHeight(
            single Factor,
            MsoTriState RelativeToOriginalSize,
            VARIANT Scale) = 0;

        virtual HRESULT ScaleWidth(
            single Factor,
            MsoTriState RelativeToOriginalSize,
            VARIANT Scale) = 0;

        virtual HRESULT Select(
            VARIANT Replace) = 0;

        virtual HRESULT SetShapesDefaultProperties() = 0;

        virtual HRESULT Ungroup(
            ShapeRange **RHS /Out/) = 0;

        virtual HRESULT ZOrder(
            MsoZOrderCmd ZOrderCmd) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **RHS /Out/) = 0;

        virtual HRESULT get_TextFrame(
            TextFrame **RHS /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            etapi::MsoAutoShapeType *RHS /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            etapi::MsoAutoShapeType RHS) = 0;

        virtual HRESULT get_Callout(
            CalloutFormat **RHS /Out/) = 0;

        virtual HRESULT get_ConnectionSiteCount(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Connector(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_ConnectorFormat(
            ConnectorFormat **RHS /Out/) = 0;

        virtual HRESULT get_Fill(
            FillFormat **RHS /Out/) = 0;

        virtual HRESULT get_GroupItems(
            GroupShapes **RHS /Out/) = 0;

        virtual HRESULT get_Height(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            single RHS) = 0;

        virtual HRESULT get_HorizontalFlip(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_Left(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            single RHS) = 0;

        virtual HRESULT get_Line(
            LineFormat **RHS /Out/) = 0;

        virtual HRESULT get_LockAspectRatio(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_LockAspectRatio(
            MsoTriState RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Nodes(
            ShapeNodes **RHS /Out/) = 0;

        virtual HRESULT get_Rotation(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Rotation(
            single RHS) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **RHS /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **RHS /Out/) = 0;

        virtual HRESULT get_TextEffect(
            TextEffectFormat **RHS /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **RHS /Out/) = 0;

        virtual HRESULT get_Top(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            single RHS) = 0;

        virtual HRESULT get_Type(
            MsoShapeType *RHS /Out/) = 0;

        virtual HRESULT get_VerticalFlip(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_Vertices(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState RHS) = 0;

        virtual HRESULT get_Width(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            single RHS) = 0;

        virtual HRESULT get_ZOrderPosition(
            long *RHS /Out/) = 0;

        virtual HRESULT get_BlackWhiteMode(
            MsoBlackWhiteMode *RHS /Out/) = 0;

        virtual HRESULT put_BlackWhiteMode(
            MsoBlackWhiteMode RHS) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR RHS) = 0;

        virtual HRESULT get_DiagramNode(
            DiagramNode **RHS /Out/) = 0;

        virtual HRESULT get_HasDiagramNode(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_Diagram(
            Diagram **RHS /Out/) = 0;

        virtual HRESULT get_HasDiagram(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_Child(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_ParentGroup(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_CanvasItems(
            ksoapi::CanvasShapes **RHS /Out/) = 0;

        virtual HRESULT get_ID(
            long *RHS /Out/) = 0;

        virtual HRESULT CanvasCropLeft(
            single Increment) = 0;

        virtual HRESULT CanvasCropTop(
            single Increment) = 0;

        virtual HRESULT CanvasCropRight(
            single Increment) = 0;

        virtual HRESULT CanvasCropBottom(
            single Increment) = 0;

        virtual HRESULT get_Chart(
            Chart **RHS /Out/) = 0;

        virtual HRESULT get_HasChart(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **RHS /Out/) = 0;

        virtual HRESULT get_ShapeStyle(
            MsoShapeStyleIndex *RHS /Out/) = 0;

        virtual HRESULT put_ShapeStyle(
            MsoShapeStyleIndex RHS) = 0;

        virtual HRESULT get_BackgroundStyle(
            MsoBackgroundStyleIndex *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundStyle(
            MsoBackgroundStyleIndex RHS) = 0;

        virtual HRESULT get_SoftEdge(
            ksoapi::SoftEdgeFormat **RHS /Out/) = 0;

        virtual HRESULT get_Glow(
            ksoapi::GlowFormat **RHS /Out/) = 0;

        virtual HRESULT get_Reflection(
            ksoapi::ReflectionFormat **RHS /Out/) = 0;

        virtual HRESULT get_Title(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR RHS) = 0;

    };
};
