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
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Shape **prop /Out/) = 0;

        Shape* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::Shape *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

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
            XlChartType Type = wpsapi::xlSuggestedChart,
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
            long Style = 0,
            XlChartType Type = wpsapi::xlSuggestedChart,
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Anchor = argMissing(),
            VARIANT *NewLayout = argMissing(),
            Shape **prop /Out/ = 0) = 0;

    };
};
