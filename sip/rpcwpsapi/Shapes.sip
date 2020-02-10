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
    struct Shapes : public IDispatch /Abstract/
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

        virtual HRESULT Item(
            VARIANT *Index,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddCallout(
            MsoCalloutType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddConnector(
            MsoConnectorType Type,
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddCurve(
            VARIANT *SafeArrayOfPoints,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddLabel(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddLine(
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddPicture(
            BSTR FileName,
            VARIANT *LinkToFile = argMissing(),
            VARIANT *SaveWithDocument = argMissing(),
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddPolyline(
            VARIANT *SafeArrayOfPoints,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddShape(
            long Type,
            single Left,
            single Top,
            single Width,
            single Height,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddTextEffect(
            MsoPresetTextEffect PresetTextEffect,
            BSTR Text,
            BSTR FontName,
            single FontSize,
            MsoTriState FontBold,
            MsoTriState FontItalic,
            single Left,
            single Top,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddTextbox(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT BuildFreeform(
            MsoEditingType EditingType,
            single X1,
            single Y1,
            FreeformBuilder **prop /Out/) = 0;

        virtual HRESULT Range(
            VARIANT *Index,
            ShapeRange **prop /Out/) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT AddOLEObject(
            VARIANT *ClassType = argMissing(),
            VARIANT *FileName = argMissing(),
            VARIANT *LinkToFile = argMissing(),
            VARIANT *DisplayAsIcon = argMissing(),
            VARIANT *IconFileName = argMissing(),
            VARIANT *IconIndex = argMissing(),
            VARIANT *IconLabel = argMissing(),
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddOLEControl(
            VARIANT *ClassType = argMissing(),
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddDiagram(
            MsoDiagramType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddCanvas(
            single Left,
            single Top,
            single Width,
            single Height,
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddChart(
            XlChartType Type,
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddSmartArt(
            ksoapi::SmartArtLayout *Layout,
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddWebVideo(
            BSTR EmbedCode,
            VARIANT *VideoWidth,
            VARIANT *VideoHeight,
            VARIANT *PosterFrameImage = argMissing(),
            VARIANT *Url = argMissing(),
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddChart2(
            long Style,
            XlChartType Type,
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Anchor = argMissing(),
            VARIANT *NewLayout = argMissing(),
            Shape **prop /Out/ = 0) = 0;
    };

    struct GroupShapes : public IDispatch /Abstract/
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

        virtual HRESULT Item(
            VARIANT *Index,
            Shape **prop /Out/) = 0;

        virtual HRESULT Range(
            VARIANT *Index,
            ShapeRange **prop /Out/) = 0;
    };

    struct Shape : public IDispatch /Abstract/
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

        virtual HRESULT get_OLEFormat(
            OLEFormat **prop /Out/) = 0;

        virtual HRESULT get_Anchor(
            Range **prop /Out/) = 0;

        virtual HRESULT get_LinkFormat(
            LinkFormat **prop /Out/) = 0;

        virtual HRESULT Apply() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Duplicate(
            Shape **prop /Out/) = 0;

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

        virtual HRESULT ConvertToInlineShape(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT ConvertToFrame(
            Frame **prop /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR prop) = 0;

        virtual HRESULT get_Script(
            ksoapi::Script **prop /Out/) = 0;

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

        virtual HRESULT get_HasChart(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_Chart(
            Chart **prop /Out/) = 0;

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

        virtual HRESULT get_HasSmartArt(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_SmartArt(
            ksoapi::SmartArt **prop /Out/) = 0;

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

        virtual HRESULT get_AnchorID(
            long *prop /Out/) = 0;

        virtual HRESULT get_EditID(
            long *prop /Out/) = 0;
    };

    struct FreeformBuilder : public IDispatch /Abstract/
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
            VARIANT *Anchor = argMissing(),
            Shape **prop /Out/ = 0) = 0;
    };

    struct CalloutFormat : public IDispatch /Abstract/
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

        virtual HRESULT get_Accent(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Accent(
            MsoTriState prop) = 0;

        virtual HRESULT get_Angle(
            MsoCalloutAngleType *prop /Out/) = 0;

        virtual HRESULT put_Angle(
            MsoCalloutAngleType prop) = 0;

        virtual HRESULT get_AutoAttach(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_AutoAttach(
            MsoTriState prop) = 0;

        virtual HRESULT get_AutoLength(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_Border(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Border(
            MsoTriState prop) = 0;

        virtual HRESULT get_Drop(
            single *prop /Out/) = 0;

        virtual HRESULT get_DropType(
            MsoCalloutDropType *prop /Out/) = 0;

        virtual HRESULT get_Gap(
            single *prop /Out/) = 0;

        virtual HRESULT put_Gap(
            single prop) = 0;

        virtual HRESULT get_Length(
            single *prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoCalloutType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoCalloutType prop) = 0;

        virtual HRESULT AutomaticLength() = 0;

        virtual HRESULT CustomDrop(
            single Drop) = 0;

        virtual HRESULT CustomLength(
            single Length) = 0;

        virtual HRESULT PresetDrop(
            MsoCalloutDropType DropType) = 0;
    };

    struct ConnectorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_BeginConnected(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_BeginConnectedShape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_BeginConnectionSite(
            long *prop /Out/) = 0;

        virtual HRESULT get_EndConnected(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_EndConnectedShape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_EndConnectionSite(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoConnectorType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoConnectorType prop) = 0;

        virtual HRESULT BeginConnect(
            Shape **ConnectedShape /Out/,
            long ConnectionSite) = 0;

        virtual HRESULT BeginDisconnect() = 0;

        virtual HRESULT EndConnect(
            Shape **ConnectedShape /Out/,
            long ConnectionSite) = 0;

        virtual HRESULT EndDisconnect() = 0;
    };

    struct CanvasShapes : public IDispatch /Abstract/
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

        virtual HRESULT Item(
            VARIANT *Index,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddCallout(
            MsoCalloutType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddConnector(
            MsoConnectorType Type,
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddCurve(
            VARIANT *SafeArrayOfPoints,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddLabel(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddLine(
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddPicture(
            BSTR FileName,
            VARIANT *LinkToFile = argMissing(),
            VARIANT *SaveWithDocument = argMissing(),
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddPolyline(
            VARIANT *SafeArrayOfPoints,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddShape(
            long Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddTextEffect(
            MsoPresetTextEffect PresetTextEffect,
            BSTR Text,
            BSTR FontName,
            single FontSize,
            MsoTriState FontBold,
            MsoTriState FontItalic,
            single Left,
            single Top,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddTextbox(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **prop /Out/) = 0;

        virtual HRESULT BuildFreeform(
            MsoEditingType EditingType,
            single X1,
            single Y1,
            FreeformBuilder **prop /Out/) = 0;

        virtual HRESULT Range(
            VARIANT *Index,
            ShapeRange **prop /Out/) = 0;

        virtual HRESULT SelectAll() = 0;

    };
};