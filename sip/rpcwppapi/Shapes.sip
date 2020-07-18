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
        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            VARIANT Index,
            Shape **Item /Out/) = 0;

        Shape* __getitem__(VARIANT index) const;
        %MethodCode
            wppapi::Shape *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
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
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            BSTR ClassName = 0,
            BSTR FileName = 0,
            MsoTriState DisplayAsIcon = wppapi::msoFalse,
            BSTR IconFileName = 0,
            int IconIndex = 0,
            BSTR IconLabel = 0,
            MsoTriState Link = wppapi::msoFalse,
            Shape **OLEObject /Out/ = 0) = 0;

        virtual HRESULT AddComment(
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **Comment /Out/ = 0) = 0;

        virtual HRESULT AddPlaceholder(
            PpPlaceholderType Type,
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **Placeholder /Out/ = 0) = 0;

        virtual HRESULT AddMediaObject(
            BSTR FileName,
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **MediaObject /Out/ = 0) = 0;

        virtual HRESULT Paste(
            ShapeRange **Paste /Out/) = 0;

        virtual HRESULT AddTable(
            int NumRows,
            int NumColumns,
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **Table /Out/ = 0) = 0;

        virtual HRESULT PasteSpecial(
            PpPasteDataType DataType = wppapi::ppPasteDefault,
            MsoTriState DisplayAsIcon = wppapi::msoFalse,
            BSTR IconFileName = 0,
            int IconIndex = 0,
            BSTR IconLabel = 0,
            MsoTriState Link = wppapi::msoFalse,
            ShapeRange **PasteSpecial /Out/ = 0) = 0;

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
            XlChartType Type = wppapi::xlSuggestedChart,
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **Chart /Out/ = 0) = 0;

        virtual HRESULT AddMediaObject2(
            BSTR FileName,
            MsoTriState LinkToFile = wppapi::msoFalse,
            MsoTriState SaveWithDocument = wppapi::msoTrue,
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **MediaObject2 /Out/ = 0) = 0;

        virtual HRESULT AddMediaObjectFromEmbedTag(
            BSTR EmbedTag,
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **MediaObjectFromEmbedTag /Out/ = 0) = 0;

        virtual HRESULT AddSmartArt(
            ksoapi::SmartArtLayout *Layout,
            single Left = 0,
            single Top = 0,
            single Width = 0,
            single Height = 0,
            Shape **SmartArt /Out/ = 0) = 0;

        virtual HRESULT AddChart2(
            int Style = 0,
            XlChartType Type = wppapi::xlSuggestedChart,
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
            MsoPictureCompress compress = wppapi::msoPictureCompressDocDefault,
            Shape **Picture /Out/ = 0) = 0;

        int getCount();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        MsoTriState getHasTitle();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasTitle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasTitle, get=getHasTitle)

        Shape* getTitle();
        %MethodCode
            wppapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_Title(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Title, get=getTitle)

        Placeholders* getPlaceholders();
        %MethodCode
            wppapi::Placeholders *prop = nullptr;
            HRESULT hr = sipCpp->get_Placeholders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Placeholders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Placeholders, get=getPlaceholders)
    };
};
