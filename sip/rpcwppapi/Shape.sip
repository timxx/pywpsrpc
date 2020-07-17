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
    struct Shape : public IDispatch /Abstract/
    {
    public:
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

        Adjustments* getAdjustments();
        %MethodCode
            wppapi::Adjustments *prop = nullptr;
            HRESULT hr = sipCpp->get_Adjustments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Adjustments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Adjustments, get=getAdjustments)

        MsoAutoShapeType getAutoShapeType();
        %MethodCode
            wppapi::MsoAutoShapeType prop = (wppapi::MsoAutoShapeType)0;
            HRESULT hr = sipCpp->get_AutoShapeType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoShapeType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoShapeType(MsoAutoShapeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoShapeType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoShapeType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoShapeType, get=getAutoShapeType, set=setAutoShapeType)

        MsoBlackWhiteMode getBlackWhiteMode();
        %MethodCode
            wppapi::MsoBlackWhiteMode prop = (wppapi::MsoBlackWhiteMode)0;
            HRESULT hr = sipCpp->get_BlackWhiteMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BlackWhiteMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBlackWhiteMode(MsoBlackWhiteMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BlackWhiteMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BlackWhiteMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BlackWhiteMode, get=getBlackWhiteMode, set=setBlackWhiteMode)

        CalloutFormat* getCallout();
        %MethodCode
            wppapi::CalloutFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Callout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Callout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Callout, get=getCallout)

        int getConnectionSiteCount();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_ConnectionSiteCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConnectionSiteCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ConnectionSiteCount, get=getConnectionSiteCount)

        MsoTriState getConnector();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Connector(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Connector()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Connector, get=getConnector)

        ConnectorFormat* getConnectorFormat();
        %MethodCode
            wppapi::ConnectorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ConnectorFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConnectorFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ConnectorFormat, get=getConnectorFormat)

        FillFormat* getFill();
        %MethodCode
            wppapi::FillFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Fill(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fill()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Fill, get=getFill)

        GroupShapes* getGroupItems();
        %MethodCode
            wppapi::GroupShapes *prop = nullptr;
            HRESULT hr = sipCpp->get_GroupItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GroupItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GroupItems, get=getGroupItems)

        single getHeight();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        MsoTriState getHorizontalFlip();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HorizontalFlip(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalFlip()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HorizontalFlip, get=getHorizontalFlip)

        single getLeft();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Left(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Left()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Left, get=getLeft, set=setLeft)

        LineFormat* getLine();
        %MethodCode
            wppapi::LineFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Line(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Line()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Line, get=getLine)

        MsoTriState getLockAspectRatio();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_LockAspectRatio(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LockAspectRatio()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLockAspectRatio(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LockAspectRatio(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LockAspectRatio()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LockAspectRatio, get=getLockAspectRatio, set=setLockAspectRatio)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        ShapeNodes* getNodes();
        %MethodCode
            wppapi::ShapeNodes *prop = nullptr;
            HRESULT hr = sipCpp->get_Nodes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Nodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Nodes, get=getNodes)

        single getRotation();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Rotation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rotation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRotation(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Rotation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Rotation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Rotation, get=getRotation, set=setRotation)

        PictureFormat* getPictureFormat();
        %MethodCode
            wppapi::PictureFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_PictureFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PictureFormat, get=getPictureFormat)

        ShadowFormat* getShadow();
        %MethodCode
            wppapi::ShadowFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Shadow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shadow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shadow, get=getShadow)

        TextEffectFormat* getTextEffect();
        %MethodCode
            wppapi::TextEffectFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_TextEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextEffect, get=getTextEffect)

        TextFrame* getTextFrame();
        %MethodCode
            wppapi::TextFrame *prop = nullptr;
            HRESULT hr = sipCpp->get_TextFrame(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFrame()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextFrame, get=getTextFrame)

        ThreeDFormat* getThreeD();
        %MethodCode
            wppapi::ThreeDFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ThreeD(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThreeD()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThreeD, get=getThreeD)

        single getTop();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Top(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Top()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Top, get=getTop, set=setTop)

        MsoShapeType getType();
        %MethodCode
            wppapi::MsoShapeType prop = (wppapi::MsoShapeType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

        MsoTriState getVerticalFlip();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_VerticalFlip(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalFlip()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VerticalFlip, get=getVerticalFlip)

        VARIANT getVertices();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Vertices(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Vertices()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Vertices, get=getVertices)

        MsoTriState getVisible();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Visible(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

        single getWidth();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)

        int getZOrderPosition();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_ZOrderPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ZOrderPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ZOrderPosition, get=getZOrderPosition)

        OLEFormat* getOLEFormat();
        %MethodCode
            wppapi::OLEFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_OLEFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OLEFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OLEFormat, get=getOLEFormat)

        LinkFormat* getLinkFormat();
        %MethodCode
            wppapi::LinkFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_LinkFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinkFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LinkFormat, get=getLinkFormat)

        PlaceholderFormat* getPlaceholderFormat();
        %MethodCode
            wppapi::PlaceholderFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_PlaceholderFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlaceholderFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PlaceholderFormat, get=getPlaceholderFormat)

        AnimationSettings* getAnimationSettings();
        %MethodCode
            wppapi::AnimationSettings *prop = nullptr;
            HRESULT hr = sipCpp->get_AnimationSettings(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AnimationSettings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AnimationSettings, get=getAnimationSettings)

        ActionSettings* getActionSettings();
        %MethodCode
            wppapi::ActionSettings *prop = nullptr;
            HRESULT hr = sipCpp->get_ActionSettings(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActionSettings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActionSettings, get=getActionSettings)

        Tags* getTags();
        %MethodCode
            wppapi::Tags *prop = nullptr;
            HRESULT hr = sipCpp->get_Tags(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tags, get=getTags)

        PpMediaType getMediaType();
        %MethodCode
            wppapi::PpMediaType prop = (wppapi::PpMediaType)0;
            HRESULT hr = sipCpp->get_MediaType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MediaType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MediaType, get=getMediaType)

        MsoTriState getHasTextFrame();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasTextFrame(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasTextFrame()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasTextFrame, get=getHasTextFrame)

        SoundFormat* getSoundFormat();
        %MethodCode
            wppapi::SoundFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_SoundFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SoundFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SoundFormat, get=getSoundFormat)

        ksoapi::Script* getScript();
        %MethodCode
            ksoapi::Script *prop = nullptr;
            HRESULT hr = sipCpp->get_Script(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Script()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Script, get=getScript)

        BSTR getAlternativeText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AlternativeText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlternativeText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlternativeText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlternativeText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlternativeText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlternativeText, get=getAlternativeText, set=setAlternativeText)

        MsoTriState getHasTable();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasTable, get=getHasTable)

        Table* getTable();
        %MethodCode
            wppapi::Table *prop = nullptr;
            HRESULT hr = sipCpp->get_Table(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Table()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Table, get=getTable)

        MsoTriState getHasDiagram();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasDiagram(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasDiagram()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasDiagram, get=getHasDiagram)

        Diagram* getDiagram();
        %MethodCode
            wppapi::Diagram *prop = nullptr;
            HRESULT hr = sipCpp->get_Diagram(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Diagram()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Diagram, get=getDiagram)

        MsoTriState getHasDiagramNode();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasDiagramNode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasDiagramNode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasDiagramNode, get=getHasDiagramNode)

        DiagramNode* getDiagramNode();
        %MethodCode
            wppapi::DiagramNode *prop = nullptr;
            HRESULT hr = sipCpp->get_DiagramNode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DiagramNode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DiagramNode, get=getDiagramNode)

        MsoTriState getChild();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Child(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Child()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Child, get=getChild)

        Shape* getParentGroup();
        %MethodCode
            wppapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentGroup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentGroup, get=getParentGroup)

        CanvasShapes* getCanvasItems();
        %MethodCode
            wppapi::CanvasShapes *prop = nullptr;
            HRESULT hr = sipCpp->get_CanvasItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanvasItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanvasItems, get=getCanvasItems)

        int getId();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Id(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Id()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Id, get=getId)

        CustomerData* getCustomerData();
        %MethodCode
            wppapi::CustomerData *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomerData(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomerData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomerData, get=getCustomerData)

        TextFrame2* getTextFrame2();
        %MethodCode
            wppapi::TextFrame2 *prop = nullptr;
            HRESULT hr = sipCpp->get_TextFrame2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFrame2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextFrame2, get=getTextFrame2)

        MsoTriState getHasChart();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasChart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasChart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasChart, get=getHasChart)

        MsoShapeStyleIndex getShapeStyle();
        %MethodCode
            wppapi::MsoShapeStyleIndex prop = (wppapi::MsoShapeStyleIndex)0;
            HRESULT hr = sipCpp->get_ShapeStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShapeStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShapeStyle(MsoShapeStyleIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShapeStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShapeStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShapeStyle, get=getShapeStyle, set=setShapeStyle)

        MsoBackgroundStyleIndex getBackgroundStyle();
        %MethodCode
            wppapi::MsoBackgroundStyleIndex prop = (wppapi::MsoBackgroundStyleIndex)0;
            HRESULT hr = sipCpp->get_BackgroundStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackgroundStyle(MsoBackgroundStyleIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackgroundStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackgroundStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackgroundStyle, get=getBackgroundStyle, set=setBackgroundStyle)

        ksoapi::SoftEdgeFormat* getSoftEdge();
        %MethodCode
            ksoapi::SoftEdgeFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_SoftEdge(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SoftEdge()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SoftEdge, get=getSoftEdge)

        ksoapi::GlowFormat* getGlow();
        %MethodCode
            ksoapi::GlowFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Glow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Glow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Glow, get=getGlow)

        ksoapi::ReflectionFormat* getReflection();
        %MethodCode
            ksoapi::ReflectionFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Reflection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reflection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Reflection, get=getReflection)

        Chart* getChart();
        %MethodCode
            wppapi::Chart *prop = nullptr;
            HRESULT hr = sipCpp->get_Chart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Chart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Chart, get=getChart)

        MsoTriState getHasSmartArt();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasSmartArt(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasSmartArt()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasSmartArt, get=getHasSmartArt)

        ksoapi::SmartArt* getSmartArt();
        %MethodCode
            ksoapi::SmartArt *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartArt(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartArt()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartArt, get=getSmartArt)

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Title(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Title()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Title, get=getTitle, set=setTitle)

        MediaFormat* getMediaFormat();
        %MethodCode
            wppapi::MediaFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_MediaFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MediaFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MediaFormat, get=getMediaFormat)
    };
};
