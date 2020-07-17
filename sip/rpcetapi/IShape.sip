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
    struct IShape : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Apply() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Duplicate(
            Shape **RHS /Out/) = 0;

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
            VARIANT Scale = argMissing2()) = 0;

        virtual HRESULT ScaleWidth(
            single Factor,
            MsoTriState RelativeToOriginalSize,
            VARIANT Scale = argMissing2()) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2()) = 0;

        virtual HRESULT SetShapesDefaultProperties() = 0;

        virtual HRESULT Ungroup(
            ShapeRange **RHS /Out/) = 0;

        virtual HRESULT ZOrder(
            MsoZOrderCmd ZOrderCmd) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **RHS /Out/) = 0;

        virtual HRESULT get_TextFrame(
            TextFrame **RHS /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            etapi::MsoAutoShapeType *RHS /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            etapi::MsoAutoShapeType RHS) = 0;

        virtual HRESULT get_Callout(
            CalloutFormat **RHS /Out/) = 0;

        virtual HRESULT get_ConnectionSiteCount(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Connector(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_ConnectorFormat(
            ConnectorFormat **RHS /Out/) = 0;

        virtual HRESULT get_Fill(
            FillFormat **RHS /Out/) = 0;

        virtual HRESULT get_GroupItems(
            GroupShapes **RHS /Out/) = 0;

        virtual HRESULT get_Height(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            single RHS) = 0;

        virtual HRESULT get_HorizontalFlip(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_Left(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            single RHS) = 0;

        virtual HRESULT get_Line(
            LineFormat **RHS /Out/) = 0;

        virtual HRESULT get_LockAspectRatio(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_LockAspectRatio(
            MsoTriState RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Nodes(
            ShapeNodes **RHS /Out/) = 0;

        virtual HRESULT get_Rotation(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Rotation(
            single RHS) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **RHS /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **RHS /Out/) = 0;

        virtual HRESULT get_TextEffect(
            TextEffectFormat **RHS /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **RHS /Out/) = 0;

        virtual HRESULT get_Top(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            single RHS) = 0;

        virtual HRESULT get_Type(
            MsoShapeType *RHS /Out/) = 0;

        virtual HRESULT get_VerticalFlip(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_Vertices(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState RHS) = 0;

        virtual HRESULT get_Width(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            single RHS) = 0;

        virtual HRESULT get_ZOrderPosition(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Hyperlink(
            Hyperlink **RHS /Out/) = 0;

        virtual HRESULT get_BlackWhiteMode(
            MsoBlackWhiteMode *RHS /Out/) = 0;

        virtual HRESULT put_BlackWhiteMode(
            MsoBlackWhiteMode RHS) = 0;

        virtual HRESULT get_DrawingObject(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_OnAction(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnAction(
            BSTR RHS) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TopLeftCell(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_BottomRightCell(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Placement(
            XlPlacement *RHS /Out/) = 0;

        virtual HRESULT put_Placement(
            XlPlacement RHS) = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT CopyPicture(
            VARIANT Appearance = argMissing2(),
            VARIANT Format = argMissing2()) = 0;

        virtual HRESULT get_ControlFormat(
            ControlFormat **RHS /Out/) = 0;

        virtual HRESULT get_LinkFormat(
            LinkFormat **RHS /Out/) = 0;

        virtual HRESULT get_OLEFormat(
            OLEFormat **RHS /Out/) = 0;

        virtual HRESULT get_FormControlType(
            XlFormControl *RHS /Out/) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR RHS) = 0;

        virtual HRESULT get_Script(
            ksoapi::Script **RHS /Out/) = 0;

        virtual HRESULT get_DiagramNode(
            DiagramNode **RHS /Out/) = 0;

        virtual HRESULT get_HasDiagramNode(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_Diagram(
            Diagram **RHS /Out/) = 0;

        virtual HRESULT get_HasDiagram(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_Child(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_ParentGroup(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_CanvasItems(
            ksoapi::CanvasShapes **RHS /Out/) = 0;

        virtual HRESULT get_ID(
            long *RHS /Out/) = 0;

        virtual HRESULT CanvasCropLeft(
            single Increment) = 0;

        virtual HRESULT CanvasCropTop(
            single Increment) = 0;

        virtual HRESULT CanvasCropRight(
            single Increment) = 0;

        virtual HRESULT CanvasCropBottom(
            single Increment) = 0;

        virtual HRESULT get_Chart(
            Chart **RHS /Out/) = 0;

        virtual HRESULT get_HasChart(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **RHS /Out/) = 0;

        virtual HRESULT get_ShapeStyle(
            MsoShapeStyleIndex *RHS /Out/) = 0;

        virtual HRESULT put_ShapeStyle(
            MsoShapeStyleIndex RHS) = 0;

        virtual HRESULT get_BackgroundStyle(
            MsoBackgroundStyleIndex *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundStyle(
            MsoBackgroundStyleIndex RHS) = 0;

        virtual HRESULT get_SoftEdge(
            ksoapi::SoftEdgeFormat **RHS /Out/) = 0;

        virtual HRESULT get_Glow(
            ksoapi::GlowFormat **RHS /Out/) = 0;

        virtual HRESULT get_Reflection(
            ksoapi::ReflectionFormat **RHS /Out/) = 0;

        virtual HRESULT get_HasSmartArt(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_SmartArt(
            ksoapi::SmartArt **RHS /Out/) = 0;

        virtual HRESULT get_Title(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR RHS) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        Adjustments* getAdjustments();
        %MethodCode
            etapi::Adjustments *prop = nullptr;
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

        TextFrame* getTextFrame();
        %MethodCode
            etapi::TextFrame *prop = nullptr;
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

        etapi::MsoAutoShapeType getAutoShapeType();
        %MethodCode
            etapi::MsoAutoShapeType prop = (etapi::MsoAutoShapeType)0;
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

        PyObject* setAutoShapeType(etapi::MsoAutoShapeType prop);
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
            etapi::CalloutFormat *prop = nullptr;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::ConnectorFormat *prop = nullptr;
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
            etapi::FillFormat *prop = nullptr;
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
            etapi::GroupShapes *prop = nullptr;
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
            etapi::single prop = 0;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::single prop = 0;
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
            etapi::LineFormat *prop = nullptr;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::ShapeNodes *prop = nullptr;
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
            etapi::single prop = 0;
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
            etapi::PictureFormat *prop = nullptr;
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
            etapi::ShadowFormat *prop = nullptr;
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
            etapi::TextEffectFormat *prop = nullptr;
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

        ThreeDFormat* getThreeD();
        %MethodCode
            etapi::ThreeDFormat *prop = nullptr;
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
            etapi::single prop = 0;
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
            etapi::MsoShapeType prop = (etapi::MsoShapeType)0;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::single prop = 0;
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
            etapi::Hyperlink *prop = nullptr;
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

        MsoBlackWhiteMode getBlackWhiteMode();
        %MethodCode
            etapi::MsoBlackWhiteMode prop = (etapi::MsoBlackWhiteMode)0;
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

        IDispatch* getDrawingObject();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_DrawingObject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DrawingObject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DrawingObject, get=getDrawingObject)

        BSTR getOnAction();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnAction(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnAction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnAction(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnAction(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnAction()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnAction, get=getOnAction, set=setOnAction)

        VARIANT_BOOL getLocked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Locked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Locked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Locked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Locked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Locked, get=getLocked, set=setLocked)

        Range* getTopLeftCell();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_TopLeftCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TopLeftCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TopLeftCell, get=getTopLeftCell)

        Range* getBottomRightCell();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_BottomRightCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BottomRightCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BottomRightCell, get=getBottomRightCell)

        XlPlacement getPlacement();
        %MethodCode
            etapi::XlPlacement prop = (etapi::XlPlacement)0;
            HRESULT hr = sipCpp->get_Placement(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Placement()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlacement(XlPlacement prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Placement(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Placement()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Placement, get=getPlacement, set=setPlacement)

        ControlFormat* getControlFormat();
        %MethodCode
            etapi::ControlFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ControlFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ControlFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ControlFormat, get=getControlFormat)

        LinkFormat* getLinkFormat();
        %MethodCode
            etapi::LinkFormat *prop = nullptr;
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

        OLEFormat* getOLEFormat();
        %MethodCode
            etapi::OLEFormat *prop = nullptr;
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

        XlFormControl getFormControlType();
        %MethodCode
            etapi::XlFormControl prop = (etapi::XlFormControl)0;
            HRESULT hr = sipCpp->get_FormControlType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormControlType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FormControlType, get=getFormControlType)

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

        DiagramNode* getDiagramNode();
        %MethodCode
            etapi::DiagramNode *prop = nullptr;
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

        MsoTriState getHasDiagramNode();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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

        Diagram* getDiagram();
        %MethodCode
            etapi::Diagram *prop = nullptr;
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

        MsoTriState getHasDiagram();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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

        MsoTriState getChild();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::Shape *prop = nullptr;
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

        ksoapi::CanvasShapes* getCanvasItems();
        %MethodCode
            ksoapi::CanvasShapes *prop = nullptr;
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

        Chart* getChart();
        %MethodCode
            etapi::Chart *prop = nullptr;
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

        MsoTriState getHasChart();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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

        TextFrame2* getTextFrame2();
        %MethodCode
            etapi::TextFrame2 *prop = nullptr;
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

        MsoShapeStyleIndex getShapeStyle();
        %MethodCode
            etapi::MsoShapeStyleIndex prop = (etapi::MsoShapeStyleIndex)0;
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
            etapi::MsoBackgroundStyleIndex prop = (etapi::MsoBackgroundStyleIndex)0;
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

        MsoTriState getHasSmartArt();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
    };
};
