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
    struct Shapes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Creator(
            long *plCreator /Out/) = 0;

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

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT Range(
            VARIANT Index = argMissing2(),
            ShapeRange **Range /Out/ = 0) = 0;

        virtual HRESULT get_HasTitle(
            MsoTriState *HasTitle /Out/) = 0;

        virtual HRESULT AddTitle(
            Shape **Title /Out/) = 0;

        virtual HRESULT get_Title(
            Shape **Title /Out/) = 0;

        virtual HRESULT get_Placeholders(
            Placeholders **Placeholders /Out/) = 0;

        virtual HRESULT AddOLEObject(
            single Left,
            single Top,
            single Width,
            single Height,
            BSTR ClassName,
            BSTR FileName,
            MsoTriState DisplayAsIcon,
            BSTR IconFileName,
            int IconIndex,
            BSTR IconLabel,
            MsoTriState Link,
            Shape **OLEObject /Out/) = 0;

        virtual HRESULT AddComment(
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Comment /Out/) = 0;

        virtual HRESULT AddPlaceholder(
            PpPlaceholderType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Placeholder /Out/) = 0;

        virtual HRESULT AddMediaObject(
            BSTR FileName,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **MediaObject /Out/) = 0;

        virtual HRESULT Paste(
            ShapeRange **Paste /Out/) = 0;

        virtual HRESULT AddTable(
            int NumRows,
            int NumColumns,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **Table /Out/) = 0;

        virtual HRESULT PasteSpecial(
            PpPasteDataType DataType,
            MsoTriState DisplayAsIcon,
            BSTR IconFileName,
            int IconIndex,
            BSTR IconLabel,
            MsoTriState Link,
            ShapeRange **PasteSpecial /Out/) = 0;

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

        virtual HRESULT AddMediaObject2(
            BSTR FileName,
            MsoTriState LinkToFile,
            MsoTriState SaveWithDocument,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **MediaObject2 /Out/) = 0;

        virtual HRESULT AddMediaObjectFromEmbedTag(
            BSTR EmbedTag,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **MediaObjectFromEmbedTag /Out/) = 0;

        virtual HRESULT AddSmartArt(
            ksoapi::SmartArtLayout *Layout,
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
            MsoPictureCompress compress,
            Shape **Picture /Out/) = 0;

    };
};
