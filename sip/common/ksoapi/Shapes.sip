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
    struct Shapes : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Shape **Item /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT AddCallout(
            MsoCalloutType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Callout /Out/) = 0;

        virtual HRESULT AddConnector(
            MsoConnectorType Type,
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **Connector /Out/) = 0;

        virtual HRESULT AddCurve(
            VARIANT SafeArrayOfPoints,
            Shape **Curve /Out/) = 0;

        virtual HRESULT AddLabel(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Label /Out/) = 0;

        virtual HRESULT AddLine(
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **Line /Out/) = 0;

        virtual HRESULT AddPicture(
            BSTR FileName,
            MsoTriState LinkToFile,
            MsoTriState SaveWithDocument,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Picture /Out/) = 0;

        virtual HRESULT AddPolyline(
            VARIANT SafeArrayOfPoints,
            Shape **Polyline /Out/) = 0;

        virtual HRESULT AddShape(
            MsoAutoShapeType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Shape /Out/) = 0;

        virtual HRESULT AddTextEffect(
            MsoPresetTextEffect PresetTextEffect,
            BSTR Text,
            BSTR FontName,
            single FontSize,
            MsoTriState FontBold,
            MsoTriState FontItalic,
            single Left,
            single Top,
            Shape **TextEffect /Out/) = 0;

        virtual HRESULT AddTextbox(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Textbox /Out/) = 0;

        virtual HRESULT BuildFreeform(
            MsoEditingType EditingType,
            single X1,
            single Y1,
            FreeformBuilder **FreeformBuilder /Out/) = 0;

        virtual HRESULT Range(
            VARIANT Index,
            ShapeRange **Range /Out/) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT get_Background(
            Shape **Background /Out/) = 0;

        virtual HRESULT get_Default(
            Shape **Default /Out/) = 0;

        virtual HRESULT AddDiagram(
            MsoDiagramType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Diagram /Out/) = 0;

        virtual HRESULT AddCanvas(
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Shape /Out/) = 0;

        virtual HRESULT AddChart(
            XlChartType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Chart /Out/) = 0;

        virtual HRESULT AddTable(
            int NumRows,
            int NumColumns,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Table /Out/) = 0;

        virtual HRESULT AddSmartArt(
            SmartArtLayout *Layout,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **SmartArt /Out/) = 0;

        virtual HRESULT AddChart2(
            int Style,
            XlChartType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            VARIANT_BOOL NewLayout,
            Shape **Chart /Out/) = 0;

        virtual HRESULT AddPicture2(
            BSTR FileName,
            MsoTriState LinkToFile,
            MsoTriState SaveWithDocument,
            single Left,
            single Top,
            single Width,
            single Height,
            MsoPictureCompress Compress,
            Shape **Picture /Out/) = 0;
    };

    struct Shape : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Apply() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Duplicate(
            Shape **Duplicate /Out/) = 0;

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
            MsoScaleFrom fScale = ksoapi::msoScaleFromTopLeft) = 0;

        virtual HRESULT ScaleWidth(
            single Factor,
            MsoTriState RelativeToOriginalSize,
            MsoScaleFrom fScale = ksoapi::msoScaleFromTopLeft) = 0;

        virtual HRESULT Select(
            VARIANT Replace) = 0;

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

        virtual HRESULT get_Script(
            Script **Script /Out/) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *AlternativeText /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR AlternativeText) = 0;

        virtual HRESULT get_HasDiagram(
            MsoTriState *pHasDiagram /Out/) = 0;

        virtual HRESULT get_Diagram(
            IMsoDiagram **Diagram /Out/) = 0;

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

        virtual HRESULT get_TextFrame2(
            TextFrame2 **Frame /Out/) = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT get_HasChart(
            MsoTriState *pHasChart /Out/) = 0;

        virtual HRESULT get_Chart(
            IMsoChart **Chart /Out/) = 0;

        virtual HRESULT get_ShapeStyle(
            MsoShapeStyleIndex *ShapeStyle /Out/) = 0;

        virtual HRESULT put_ShapeStyle(
            MsoShapeStyleIndex ShapeStyle) = 0;

        virtual HRESULT get_BackgroundStyle(
            MsoBackgroundStyleIndex *BackgroundStyle /Out/) = 0;

        virtual HRESULT put_BackgroundStyle(
            MsoBackgroundStyleIndex BackgroundStyle) = 0;

        virtual HRESULT get_SoftEdge(
            SoftEdgeFormat **SoftEdge /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **Glow /Out/) = 0;

        virtual HRESULT get_Reflection(
            ReflectionFormat **Reflection /Out/) = 0;

        virtual HRESULT get_HasSmartArt(
            MsoTriState *HasSmartArt /Out/) = 0;

        virtual HRESULT get_SmartArt(
            SmartArt **SmartArt /Out/) = 0;

        virtual HRESULT ConvertTextToSmartArt(
            SmartArtLayout *Layout) = 0;

        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;
    };

    struct GroupShapes : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Count(
            int *pnShapes /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Shape **Item /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT Range(
            VARIANT Index,
            ShapeRange **Range /Out/) = 0;
    };

    struct CanvasShapes : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Shape **Item /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT AddCallout(
            MsoCalloutType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Callout /Out/) = 0;

        virtual HRESULT AddConnector(
            MsoConnectorType Type,
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **Connector /Out/) = 0;

        virtual HRESULT AddCurve(
            VARIANT SafeArrayOfPoints,
            Shape **Curve /Out/) = 0;

        virtual HRESULT AddLabel(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Label /Out/) = 0;

        virtual HRESULT AddLine(
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **Line /Out/) = 0;

        virtual HRESULT AddPicture(
            BSTR FileName,
            MsoTriState LinkToFile,
            MsoTriState SaveWithDocument,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Picture /Out/) = 0;

        virtual HRESULT AddPolyline(
            VARIANT SafeArrayOfPoints,
            Shape **Polyline /Out/) = 0;

        virtual HRESULT AddShape(
            MsoAutoShapeType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Shape /Out/) = 0;

        virtual HRESULT AddTextEffect(
            MsoPresetTextEffect PresetTextEffect,
            BSTR Text,
            BSTR FontName,
            single FontSize,
            MsoTriState FontBold,
            MsoTriState FontItalic,
            single Left,
            single Top,
            Shape **TextEffect /Out/) = 0;

        virtual HRESULT AddTextbox(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Textbox /Out/) = 0;

        virtual HRESULT BuildFreeform(
            MsoEditingType EditingType,
            single X1,
            single Y1,
            FreeformBuilder **FreeformBuilder /Out/) = 0;

        virtual HRESULT Range(
            VARIANT Index,
            ShapeRange **Range /Out/) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT get_Background(
            Shape **Background /Out/) = 0;
    };

    struct FreeformBuilder : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT AddNodes(
            MsoSegmentType SegmentType,
            MsoEditingType EditingType,
            single X1,
            single Y1,
            single X2 = 0,
            single Y2 = 0,
            single X3 = 0,
            single Y3 = 0) = 0;

        virtual HRESULT ConvertToShape(
            Shape **Freeform /Out/) = 0;
    };
};