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
    struct Shape : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        Adjustments* getAdjustments();
        %MethodCode
            wpsapi::Adjustments *prop = nullptr;
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
            wpsapi::MsoAutoShapeType prop = (wpsapi::MsoAutoShapeType)0;
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

        CalloutFormat* getCallout();
        %MethodCode
            wpsapi::CalloutFormat *prop = nullptr;
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

        long getConnectionSiteCount();
        %MethodCode
            long prop = 0;
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
            wpsapi::ConnectorFormat *prop = nullptr;
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
            wpsapi::FillFormat *prop = nullptr;
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
            wpsapi::GroupShapes *prop = nullptr;
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
            wpsapi::single prop = 0;
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
            wpsapi::single prop = 0;
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
            wpsapi::LineFormat *prop = nullptr;
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
            wpsapi::ShapeNodes *prop = nullptr;
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
            wpsapi::single prop = 0;
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
            wpsapi::PictureFormat *prop = nullptr;
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
            wpsapi::ShadowFormat *prop = nullptr;
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
            wpsapi::TextEffectFormat *prop = nullptr;
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
            wpsapi::TextFrame *prop = nullptr;
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
            wpsapi::ThreeDFormat *prop = nullptr;
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
            wpsapi::single prop = 0;
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
            wpsapi::MsoShapeType prop = (wpsapi::MsoShapeType)0;
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
            wpsapi::single prop = 0;
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

        long getZOrderPosition();
        %MethodCode
            long prop = 0;
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

        Hyperlink* getHyperlink();
        %MethodCode
            wpsapi::Hyperlink *prop = nullptr;
            HRESULT hr = sipCpp->get_Hyperlink(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hyperlink()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hyperlink, get=getHyperlink)

        WdRelativeHorizontalPosition getRelativeHorizontalPosition();
        %MethodCode
            wpsapi::WdRelativeHorizontalPosition prop = (wpsapi::WdRelativeHorizontalPosition)0;
            HRESULT hr = sipCpp->get_RelativeHorizontalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelativeHorizontalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelativeHorizontalPosition(WdRelativeHorizontalPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelativeHorizontalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelativeHorizontalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelativeHorizontalPosition, get=getRelativeHorizontalPosition, set=setRelativeHorizontalPosition)

        WdRelativeVerticalPosition getRelativeVerticalPosition();
        %MethodCode
            wpsapi::WdRelativeVerticalPosition prop = (wpsapi::WdRelativeVerticalPosition)0;
            HRESULT hr = sipCpp->get_RelativeVerticalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelativeVerticalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelativeVerticalPosition(WdRelativeVerticalPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelativeVerticalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelativeVerticalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelativeVerticalPosition, get=getRelativeVerticalPosition, set=setRelativeVerticalPosition)

        long getLockAnchor();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_LockAnchor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LockAnchor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLockAnchor(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LockAnchor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LockAnchor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LockAnchor, get=getLockAnchor, set=setLockAnchor)

        WrapFormat* getWrapFormat();
        %MethodCode
            wpsapi::WrapFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_WrapFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WrapFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WrapFormat, get=getWrapFormat)

        OLEFormat* getOLEFormat();
        %MethodCode
            wpsapi::OLEFormat *prop = nullptr;
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

        Range* getAnchor();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Anchor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Anchor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Anchor, get=getAnchor)

        LinkFormat* getLinkFormat();
        %MethodCode
            wpsapi::LinkFormat *prop = nullptr;
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

        MsoTriState getHasDiagram();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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

        ksoapi::IMsoDiagram* getDiagram();
        %MethodCode
            ksoapi::IMsoDiagram *prop = nullptr;
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
            wpsapi::DiagramNode *prop = nullptr;
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
            wpsapi::Shape *prop = nullptr;
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
            wpsapi::CanvasShapes *prop = nullptr;
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

        long getID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ID, get=getID)

        long getLayoutInCell();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_LayoutInCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LayoutInCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayoutInCell(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LayoutInCell(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LayoutInCell()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LayoutInCell, get=getLayoutInCell, set=setLayoutInCell)

        MsoTriState getHasChart();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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

        Chart* getChart();
        %MethodCode
            wpsapi::Chart *prop = nullptr;
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

        single getLeftRelative();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftRelative(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftRelative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftRelative(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftRelative(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftRelative()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftRelative, get=getLeftRelative, set=setLeftRelative)

        single getTopRelative();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_TopRelative(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TopRelative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTopRelative(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TopRelative(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TopRelative()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TopRelative, get=getTopRelative, set=setTopRelative)

        single getWidthRelative();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_WidthRelative(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WidthRelative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidthRelative(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WidthRelative(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WidthRelative()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WidthRelative, get=getWidthRelative, set=setWidthRelative)

        single getHeightRelative();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_HeightRelative(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeightRelative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeightRelative(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeightRelative(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeightRelative()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeightRelative, get=getHeightRelative, set=setHeightRelative)

        WdRelativeHorizontalSize getRelativeHorizontalSize();
        %MethodCode
            wpsapi::WdRelativeHorizontalSize prop = (wpsapi::WdRelativeHorizontalSize)0;
            HRESULT hr = sipCpp->get_RelativeHorizontalSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelativeHorizontalSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelativeHorizontalSize(WdRelativeHorizontalSize prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelativeHorizontalSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelativeHorizontalSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelativeHorizontalSize, get=getRelativeHorizontalSize, set=setRelativeHorizontalSize)

        WdRelativeVerticalSize getRelativeVerticalSize();
        %MethodCode
            wpsapi::WdRelativeVerticalSize prop = (wpsapi::WdRelativeVerticalSize)0;
            HRESULT hr = sipCpp->get_RelativeVerticalSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelativeVerticalSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelativeVerticalSize(WdRelativeVerticalSize prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelativeVerticalSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelativeVerticalSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelativeVerticalSize, get=getRelativeVerticalSize, set=setRelativeVerticalSize)

        SoftEdgeFormat* getSoftEdge();
        %MethodCode
            wpsapi::SoftEdgeFormat *prop = nullptr;
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

        GlowFormat* getGlow();
        %MethodCode
            wpsapi::GlowFormat *prop = nullptr;
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

        ReflectionFormat* getReflection();
        %MethodCode
            wpsapi::ReflectionFormat *prop = nullptr;
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

        ksoapi::TextFrame2* getTextFrame2();
        %MethodCode
            ksoapi::TextFrame2 *prop = nullptr;
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

        MsoTriState getHasSmartArt();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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

        MsoShapeStyleIndex getShapeStyle();
        %MethodCode
            wpsapi::MsoShapeStyleIndex prop = (wpsapi::MsoShapeStyleIndex)0;
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
            wpsapi::MsoBackgroundStyleIndex prop = (wpsapi::MsoBackgroundStyleIndex)0;
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

        long getAnchorID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AnchorID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AnchorID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AnchorID, get=getAnchorID)

        long getEditID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_EditID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EditID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EditID, get=getEditID)
    };
};
