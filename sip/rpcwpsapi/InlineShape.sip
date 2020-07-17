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
    struct InlineShape : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_LinkFormat(
            LinkFormat **prop /Out/) = 0;

        virtual HRESULT get_Field(
            Field **prop /Out/) = 0;

        virtual HRESULT get_OLEFormat(
            OLEFormat **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdInlineShapeType *prop /Out/) = 0;

        virtual HRESULT get_Hyperlink(
            Hyperlink **prop /Out/) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_ScaleHeight(
            single *prop /Out/) = 0;

        virtual HRESULT put_ScaleHeight(
            single prop) = 0;

        virtual HRESULT get_ScaleWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_ScaleWidth(
            single prop) = 0;

        virtual HRESULT get_LockAspectRatio(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_LockAspectRatio(
            MsoTriState prop) = 0;

        virtual HRESULT get_Line(
            LineFormat **prop /Out/) = 0;

        virtual HRESULT get_Fill(
            FillFormat **prop /Out/) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **prop /Out/) = 0;

        virtual HRESULT put_PictureFormat(
            PictureFormat *prop) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT ConvertToShape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_HorizontalLineFormat(
            HorizontalLineFormat **prop /Out/) = 0;

        virtual HRESULT get_Script(
            ksoapi::Script **prop /Out/) = 0;

        virtual HRESULT get_OWSAnchor(
            long *prop /Out/) = 0;

        virtual HRESULT get_TextEffect(
            TextEffectFormat **prop /Out/) = 0;

        virtual HRESULT put_TextEffect(
            TextEffectFormat *prop) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR prop) = 0;

        virtual HRESULT get_IsPictureBullet(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_GroupItems(
            GroupShapes **prop /Out/) = 0;

        virtual HRESULT get_HasChart(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_Chart(
            Chart **prop /Out/) = 0;

        virtual HRESULT get_SoftEdge(
            SoftEdgeFormat **prop /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **prop /Out/) = 0;

        virtual HRESULT get_Reflection(
            ReflectionFormat **prop /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **prop /Out/) = 0;

        virtual HRESULT get_HasSmartArt(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_SmartArt(
            ksoapi::SmartArt **prop /Out/) = 0;

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

        Borders* getBorders();
        %MethodCode
            wpsapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorders(Borders *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Borders(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Borders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Borders, get=getBorders, set=setBorders)

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

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

        Field* getField();
        %MethodCode
            wpsapi::Field *prop = nullptr;
            HRESULT hr = sipCpp->get_Field(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Field()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Field, get=getField)

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

        WdInlineShapeType getType();
        %MethodCode
            wpsapi::WdInlineShapeType prop = (wpsapi::WdInlineShapeType)0;
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

        single getScaleHeight();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_ScaleHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScaleHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScaleHeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScaleHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScaleHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScaleHeight, get=getScaleHeight, set=setScaleHeight)

        single getScaleWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_ScaleWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScaleWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScaleWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScaleWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScaleWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScaleWidth, get=getScaleWidth, set=setScaleWidth)

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

        PyObject* setPictureFormat(PictureFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureFormat, get=getPictureFormat, set=setPictureFormat)

        HorizontalLineFormat* getHorizontalLineFormat();
        %MethodCode
            wpsapi::HorizontalLineFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_HorizontalLineFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalLineFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HorizontalLineFormat, get=getHorizontalLineFormat)

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

        long getOWSAnchor();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_OWSAnchor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OWSAnchor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OWSAnchor, get=getOWSAnchor)

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

        PyObject* setTextEffect(TextEffectFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextEffect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextEffect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextEffect, get=getTextEffect, set=setTextEffect)

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

        VARIANT_BOOL getIsPictureBullet();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsPictureBullet(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsPictureBullet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsPictureBullet, get=getIsPictureBullet)

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
