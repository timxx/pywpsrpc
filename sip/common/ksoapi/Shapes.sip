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
            single Width = 0,
            single Height = 0,
            Shape **Picture /Out/ = 0) = 0;

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
            XlChartType Type = ksoapi::xlSuggestedChart,
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **Chart /Out/ = 0) = 0;

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
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **SmartArt /Out/ = 0) = 0;

        virtual HRESULT AddChart2(
            int Style = 0,
            XlChartType Type = ksoapi::xlSuggestedChart,
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            VARIANT_BOOL NewLayout = VARIANT_FALSE,
            Shape **Chart /Out/ = 0) = 0;

        virtual HRESULT AddPicture2(
            BSTR FileName,
            MsoTriState LinkToFile,
            MsoTriState SaveWithDocument,
            single Left,
            single Top,
            single Width = 0,
            single Height = 0,
            MsoPictureCompress Compress = ksoapi::msoPictureCompressDocDefault,
            Shape **Picture /Out/ = 0) = 0;

    };
};
