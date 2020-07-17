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
    struct FillFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Background() = 0;

        virtual HRESULT OneColorGradient(
            MsoGradientStyle Style,
            int Variant,
            single Degree) = 0;

        virtual HRESULT Patterned(
            MsoPatternType Pattern) = 0;

        virtual HRESULT PresetGradient(
            MsoGradientStyle Style,
            int Variant,
            MsoPresetGradientType PresetGradientType) = 0;

        virtual HRESULT PresetTextured(
            MsoPresetTexture PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT TwoColorGradient(
            MsoGradientStyle Style,
            int Variant) = 0;

        virtual HRESULT UserPicture(
            BSTR PictureFile) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT get_BackColor(
            ColorFormat **BackColor /Out/) = 0;

        virtual HRESULT put_BackColor(
            ColorFormat *BackColor) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **ForeColor /Out/) = 0;

        virtual HRESULT put_ForeColor(
            ColorFormat *ForeColor) = 0;

        virtual HRESULT get_GradientColorType(
            MsoGradientColorType *GradientColorType /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *GradientDegree /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            MsoGradientStyle *GradientStyle /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            int *GradientVariant /Out/) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *Pattern /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            MsoPresetGradientType *PresetGradientType /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            MsoPresetTexture *PresetTexture /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *TextureName /Out/) = 0;

        virtual HRESULT get_TextureType(
            MsoTextureType *TextureType /Out/) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Type(
            MsoFillType *Type /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_GradientStops(
            ksoapi::GradientStops **GradientStops /Out/) = 0;

        virtual HRESULT get_TextureOffsetX(
            single *TextureOffsetX /Out/) = 0;

        virtual HRESULT put_TextureOffsetX(
            single TextureOffsetX) = 0;

        virtual HRESULT get_TextureOffsetY(
            single *TextureOffsetY /Out/) = 0;

        virtual HRESULT put_TextureOffsetY(
            single TextureOffsetY) = 0;

        virtual HRESULT get_TextureAlignment(
            MsoTextureAlignment *TextureAlignment /Out/) = 0;

        virtual HRESULT put_TextureAlignment(
            MsoTextureAlignment TextureAlignment) = 0;

        virtual HRESULT get_TextureHorizontalScale(
            single *HorizontalScale /Out/) = 0;

        virtual HRESULT put_TextureHorizontalScale(
            single HorizontalScale) = 0;

        virtual HRESULT get_TextureVerticalScale(
            single *VerticalScale /Out/) = 0;

        virtual HRESULT put_TextureVerticalScale(
            single VerticalScale) = 0;

        virtual HRESULT get_TextureTile(
            MsoTriState *TextureTile /Out/) = 0;

        virtual HRESULT put_TextureTile(
            MsoTriState TextureTile) = 0;

        virtual HRESULT get_RotateWithObject(
            MsoTriState *RotateWithObject /Out/) = 0;

        virtual HRESULT put_RotateWithObject(
            MsoTriState RotateWithObject) = 0;

        virtual HRESULT get_PictureEffects(
            ksoapi::PictureEffects **PictureEffects /Out/) = 0;

        virtual HRESULT get_GradientAngle(
            single *GradientAngle /Out/) = 0;

        virtual HRESULT put_GradientAngle(
            single GradientAngle) = 0;

        ColorFormat* getBackColor();
        %MethodCode
            etapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_BackColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackColor(ColorFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackColor, get=getBackColor, set=setBackColor)

        ColorFormat* getForeColor();
        %MethodCode
            etapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ForeColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ForeColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setForeColor(ColorFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ForeColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ForeColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ForeColor, get=getForeColor, set=setForeColor)

        MsoGradientColorType getGradientColorType();
        %MethodCode
            etapi::MsoGradientColorType prop = (etapi::MsoGradientColorType)0;
            HRESULT hr = sipCpp->get_GradientColorType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GradientColorType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GradientColorType, get=getGradientColorType)

        single getGradientDegree();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_GradientDegree(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GradientDegree()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GradientDegree, get=getGradientDegree)

        MsoGradientStyle getGradientStyle();
        %MethodCode
            etapi::MsoGradientStyle prop = (etapi::MsoGradientStyle)0;
            HRESULT hr = sipCpp->get_GradientStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GradientStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GradientStyle, get=getGradientStyle)

        int getGradientVariant();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_GradientVariant(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GradientVariant()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GradientVariant, get=getGradientVariant)

        MsoPatternType getPattern();
        %MethodCode
            etapi::MsoPatternType prop = (etapi::MsoPatternType)0;
            HRESULT hr = sipCpp->get_Pattern(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Pattern()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Pattern, get=getPattern)

        MsoPresetGradientType getPresetGradientType();
        %MethodCode
            etapi::MsoPresetGradientType prop = (etapi::MsoPresetGradientType)0;
            HRESULT hr = sipCpp->get_PresetGradientType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetGradientType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PresetGradientType, get=getPresetGradientType)

        MsoPresetTexture getPresetTexture();
        %MethodCode
            etapi::MsoPresetTexture prop = (etapi::MsoPresetTexture)0;
            HRESULT hr = sipCpp->get_PresetTexture(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetTexture()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PresetTexture, get=getPresetTexture)

        BSTR getTextureName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextureName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextureName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextureName, get=getTextureName)

        MsoTextureType getTextureType();
        %MethodCode
            etapi::MsoTextureType prop = (etapi::MsoTextureType)0;
            HRESULT hr = sipCpp->get_TextureType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextureType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextureType, get=getTextureType)

        single getTransparency();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_Transparency(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Transparency()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTransparency(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Transparency(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Transparency()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Transparency, get=getTransparency, set=setTransparency)

        MsoFillType getType();
        %MethodCode
            etapi::MsoFillType prop = (etapi::MsoFillType)0;
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

        ksoapi::GradientStops* getGradientStops();
        %MethodCode
            ksoapi::GradientStops *prop = nullptr;
            HRESULT hr = sipCpp->get_GradientStops(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GradientStops()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GradientStops, get=getGradientStops)

        single getTextureOffsetX();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_TextureOffsetX(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextureOffsetX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextureOffsetX(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextureOffsetX(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextureOffsetX()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextureOffsetX, get=getTextureOffsetX, set=setTextureOffsetX)

        single getTextureOffsetY();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_TextureOffsetY(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextureOffsetY()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextureOffsetY(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextureOffsetY(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextureOffsetY()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextureOffsetY, get=getTextureOffsetY, set=setTextureOffsetY)

        MsoTextureAlignment getTextureAlignment();
        %MethodCode
            etapi::MsoTextureAlignment prop = (etapi::MsoTextureAlignment)0;
            HRESULT hr = sipCpp->get_TextureAlignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextureAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextureAlignment(MsoTextureAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextureAlignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextureAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextureAlignment, get=getTextureAlignment, set=setTextureAlignment)

        single getTextureHorizontalScale();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_TextureHorizontalScale(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextureHorizontalScale()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextureHorizontalScale(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextureHorizontalScale(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextureHorizontalScale()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextureHorizontalScale, get=getTextureHorizontalScale, set=setTextureHorizontalScale)

        single getTextureVerticalScale();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_TextureVerticalScale(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextureVerticalScale()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextureVerticalScale(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextureVerticalScale(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextureVerticalScale()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextureVerticalScale, get=getTextureVerticalScale, set=setTextureVerticalScale)

        MsoTriState getTextureTile();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_TextureTile(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextureTile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextureTile(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextureTile(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextureTile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextureTile, get=getTextureTile, set=setTextureTile)

        MsoTriState getRotateWithObject();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_RotateWithObject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RotateWithObject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRotateWithObject(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RotateWithObject(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RotateWithObject()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RotateWithObject, get=getRotateWithObject, set=setRotateWithObject)

        ksoapi::PictureEffects* getPictureEffects();
        %MethodCode
            ksoapi::PictureEffects *prop = nullptr;
            HRESULT hr = sipCpp->get_PictureEffects(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureEffects()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PictureEffects, get=getPictureEffects)

        single getGradientAngle();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_GradientAngle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GradientAngle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGradientAngle(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GradientAngle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GradientAngle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GradientAngle, get=getGradientAngle, set=setGradientAngle)
    };
};
