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
    struct IShapes : public IDispatch /Abstract/
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

        virtual HRESULT AddCallout(
            MsoCalloutType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddConnector(
            MsoConnectorType Type,
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddCurve(
            VARIANT SafeArrayOfPoints,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddLabel(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddLine(
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddPicture(
            BSTR Filename,
            MsoTriState LinkToFile,
            MsoTriState SaveWithDocument,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddPolyline(
            VARIANT SafeArrayOfPoints,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddShape(
            etapi::MsoAutoShapeType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddTextEffect(
            MsoPresetTextEffect PresetTextEffect,
            BSTR Text,
            BSTR FontName,
            single FontSize,
            MsoTriState FontBold,
            MsoTriState FontItalic,
            single Left,
            single Top,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddTextbox(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **RHS /Out/) = 0;

        virtual HRESULT BuildFreeform(
            MsoEditingType EditingType,
            single X1,
            single Y1,
            FreeformBuilder **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            VARIANT Index,
            ShapeRange **RHS /Out/) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT AddFormControl(
            XlFormControl Type,
            long Left,
            long Top,
            long Width,
            long Height,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddOLEObject(
            VARIANT ClassType = argMissing2(),
            VARIANT Filename = argMissing2(),
            VARIANT Link = argMissing2(),
            VARIANT DisplayAsIcon = argMissing2(),
            VARIANT IconFileName = argMissing2(),
            VARIANT IconIndex = argMissing2(),
            VARIANT IconLabel = argMissing2(),
            VARIANT Left = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT Width = argMissing2(),
            VARIANT Height = argMissing2(),
            Shape **RHS /Out/ = 0) = 0;

        virtual HRESULT AddDiagram(
            MsoDiagramType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddCanvas(
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **RHS /Out/) = 0;

        virtual HRESULT AddChart(
            VARIANT XlChartType = argMissing2(),
            VARIANT Left = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT Width = argMissing2(),
            VARIANT Height = argMissing2(),
            Shape **RHS /Out/ = 0) = 0;

        virtual HRESULT AddSmartArt(
            ksoapi::SmartArtLayout *Layout,
            VARIANT Left = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT Width = argMissing2(),
            VARIANT Height = argMissing2(),
            Shape **RHS /Out/ = 0) = 0;

        virtual HRESULT AddChart2(
            VARIANT Style = argMissing2(),
            VARIANT XlChartType = argMissing2(),
            VARIANT Left = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT Width = argMissing2(),
            VARIANT Height = argMissing2(),
            VARIANT NewLayout = argMissing2(),
            Shape **RHS /Out/ = 0) = 0;

        virtual HRESULT AddPicture2(
            BSTR Filename,
            MsoTriState LinkToFile,
            MsoTriState SaveWithDocument,
            single Left,
            single Top,
            single Width,
            single Height,
            MsoPictureCompress Compress,
            Shape **RHS /Out/) = 0;

    };
};
