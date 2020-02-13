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
    struct ShapeRange : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Creator(
            long *plCreator /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Apply() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Flip(
            MsoFlipCmd FlipCmd) = 0;

        virtual HRESULT IncrementLeft(
            single Increment) = 0;

        virtual HRESULT IncrementRotation(
            single Increment) = 0;

        virtual HRESULT IncrementTop(
            single Increment) = 0;

        virtual HRESULT PickUp() = 0;

        virtual HRESULT RerouteConnections() = 0;

        virtual HRESULT ScaleHeight(
            single Factor,
            MsoTriState RelativeToOriginalSize,
            MsoScaleFrom fScale = wppapi::msoScaleFromTopLeft) = 0;

        virtual HRESULT ScaleWidth(
            single Factor,
            MsoTriState RelativeToOriginalSize,
            MsoScaleFrom fScale = wppapi::msoScaleFromTopLeft) = 0;

        virtual HRESULT SetShapesDefaultProperties() = 0;

        virtual HRESULT Ungroup(
            ShapeRange **Ungroup /Out/) = 0;

        virtual HRESULT ZOrder(
            MsoZOrderCmd ZOrderCmd) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **Adjustments /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            MsoAutoShapeType *AutoShapeType /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            MsoAutoShapeType AutoShapeType) = 0;

        virtual HRESULT get_BlackWhiteMode(
            MsoBlackWhiteMode *BlackWhiteMode /Out/) = 0;

        virtual HRESULT put_BlackWhiteMode(
            MsoBlackWhiteMode BlackWhiteMode) = 0;

        virtual HRESULT get_Callout(
            CalloutFormat **Callout /Out/) = 0;

        virtual HRESULT get_ConnectionSiteCount(
            int *ConnectionSiteCount /Out/) = 0;

        virtual HRESULT get_Connector(
            MsoTriState *Connector /Out/) = 0;

        virtual HRESULT get_ConnectorFormat(
            ConnectorFormat **ConnectorFormat /Out/) = 0;

        virtual HRESULT get_Fill(
            FillFormat **Fill /Out/) = 0;

        virtual HRESULT get_GroupItems(
            GroupShapes **GroupItems /Out/) = 0;

        virtual HRESULT get_Height(
            single *Height /Out/) = 0;

        virtual HRESULT put_Height(
            single Height) = 0;

        virtual HRESULT get_HorizontalFlip(
            MsoTriState *HorizontalFlip /Out/) = 0;

        virtual HRESULT get_Left(
            single *Left /Out/) = 0;

        virtual HRESULT put_Left(
            single Left) = 0;

        virtual HRESULT get_Line(
            LineFormat **Line /Out/) = 0;

        virtual HRESULT get_LockAspectRatio(
            MsoTriState *LockAspectRatio /Out/) = 0;

        virtual HRESULT put_LockAspectRatio(
            MsoTriState LockAspectRatio) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT get_Nodes(
            ShapeNodes **Nodes /Out/) = 0;

        virtual HRESULT get_Rotation(
            single *Rotation /Out/) = 0;

        virtual HRESULT put_Rotation(
            single Rotation) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **Picture /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **Shadow /Out/) = 0;

        virtual HRESULT get_TextEffect(
            TextEffectFormat **TextEffect /Out/) = 0;

        virtual HRESULT get_TextFrame(
            TextFrame **TextFrame /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **ThreeD /Out/) = 0;

        virtual HRESULT get_Top(
            single *Top /Out/) = 0;

        virtual HRESULT put_Top(
            single Top) = 0;

        virtual HRESULT get_Type(
            MsoShapeType *Type /Out/) = 0;

        virtual HRESULT get_VerticalFlip(
            MsoTriState *VerticalFlip /Out/) = 0;

        virtual HRESULT get_Vertices(
            VARIANT *Vertices /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Width(
            single *Width /Out/) = 0;

        virtual HRESULT put_Width(
            single Width) = 0;

        virtual HRESULT get_ZOrderPosition(
            int *ZOrderPosition /Out/) = 0;

        virtual HRESULT get_OLEFormat(
            OLEFormat **OLEFormat /Out/) = 0;

        virtual HRESULT get_LinkFormat(
            LinkFormat **LinkFormat /Out/) = 0;

        virtual HRESULT get_PlaceholderFormat(
            PlaceholderFormat **PlaceholderFormat /Out/) = 0;

        virtual HRESULT get_AnimationSettings(
            AnimationSettings **AnimationSettings /Out/) = 0;

        virtual HRESULT get_ActionSettings(
            ActionSettings **ActionSettings /Out/) = 0;

        virtual HRESULT get_Tags(
            Tags **Tags /Out/) = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Select(
            MsoTriState Replace = wppapi::msoTrue) = 0;

        virtual HRESULT Duplicate(
            ShapeRange **Duplicate /Out/) = 0;

        virtual HRESULT get_MediaType(
            PpMediaType *MediaType /Out/) = 0;

        virtual HRESULT get_HasTextFrame(
            MsoTriState *HasTextFrame /Out/) = 0;

        virtual HRESULT get_SoundFormat(
            SoundFormat **SoundFormat /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Shape **Item /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT _Index(
            int Index,
            VARIANT *_Index /Out/) = 0;

        virtual HRESULT get_Count(
            long *Count /Out/) = 0;

        virtual HRESULT Group(
            Shape **Group /Out/) = 0;

        virtual HRESULT Regroup(
            Shape **Regroup /Out/) = 0;

        virtual HRESULT Align(
            MsoAlignCmd AlignCmd,
            MsoTriState RelativeTo) = 0;

        virtual HRESULT Distribute(
            MsoDistributeCmd DistributeCmd,
            MsoTriState RelativeTo) = 0;

        virtual HRESULT GetPolygonalRepresentation(
            unsigned long maxPointsInBuffer,
            single *pPoints,
            unsigned long *numPointsInPolygon /Out/,
            MsoTriState *IsOpen /Out/) = 0;

        virtual HRESULT get_Script(
            ksoapi::Script **Script /Out/) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *AlternativeText /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR AlternativeText) = 0;

        virtual HRESULT get_HasTable(
            MsoTriState *HasTable /Out/) = 0;

        virtual HRESULT get_Table(
            Table **Table /Out/) = 0;

        virtual HRESULT Export(
            BSTR PathName,
            PpShapeFormat Filter,
            int ScaleWidth = 0,
            int ScaleHeight = 0,
            PpExportMode ExportMode = wppapi::ppRelativeToSlide) = 0;

        virtual HRESULT get_HasDiagram(
            MsoTriState *pHasDiagram /Out/) = 0;

        virtual HRESULT get_Diagram(
            Diagram **Diagram /Out/) = 0;

        virtual HRESULT get_HasDiagramNode(
            MsoTriState *pHasDiagram /Out/) = 0;

        virtual HRESULT get_DiagramNode(
            DiagramNode **DiagramNode /Out/) = 0;

        virtual HRESULT get_Child(
            MsoTriState *Child /Out/) = 0;

        virtual HRESULT get_ParentGroup(
            Shape **Parent /Out/) = 0;

        virtual HRESULT get_CanvasItems(
            CanvasShapes **CanvasShapes /Out/) = 0;

        virtual HRESULT get_Id(
            int *pid /Out/) = 0;

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

        virtual HRESULT get_CustomerData(
            CustomerData **CustomerData /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **Frame /Out/) = 0;

        virtual HRESULT get_HasChart(
            MsoTriState *pHasChart /Out/) = 0;

        virtual HRESULT get_ShapeStyle(
            MsoShapeStyleIndex *ShapeStyle /Out/) = 0;

        virtual HRESULT put_ShapeStyle(
            MsoShapeStyleIndex ShapeStyle) = 0;

        virtual HRESULT get_BackgroundStyle(
            MsoBackgroundStyleIndex *BackgroundStyle /Out/) = 0;

        virtual HRESULT put_BackgroundStyle(
            MsoBackgroundStyleIndex BackgroundStyle) = 0;

        virtual HRESULT get_SoftEdge(
            ksoapi::SoftEdgeFormat **SoftEdge /Out/) = 0;

        virtual HRESULT get_Glow(
            ksoapi::GlowFormat **Glow /Out/) = 0;

        virtual HRESULT get_Reflection(
            ksoapi::ReflectionFormat **Reflection /Out/) = 0;

        virtual HRESULT get_Chart(
            Chart **Chart /Out/) = 0;

        virtual HRESULT get_HasSmartArt(
            MsoTriState *HasSmartArt /Out/) = 0;

        virtual HRESULT get_SmartArt(
            ksoapi::SmartArt **SmartArt /Out/) = 0;

        virtual HRESULT ConvertTextToSmartArt(
            ksoapi::SmartArtLayout *Layout) = 0;

        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

        virtual HRESULT get_MediaFormat(
            MediaFormat **MediaFormat /Out/) = 0;

        virtual HRESULT PickupAnimation() = 0;

        virtual HRESULT ApplyAnimation() = 0;

        virtual HRESULT UpgradeMedia() = 0;

        virtual HRESULT MergeShapes(
            MsoMergeCmd MergeCmd,
            Shape *PrimaryShape = 0) = 0;

    };
};
