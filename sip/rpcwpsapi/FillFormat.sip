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
    struct FillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_BackColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_GradientColorType(
            MsoGradientColorType *prop /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *prop /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            MsoGradientStyle *prop /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            long *prop /Out/) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *prop /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            MsoPresetGradientType *prop /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            MsoPresetTexture *prop /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_TextureType(
            MsoTextureType *prop /Out/) = 0;

        virtual HRESULT get_Transparency(
            single *prop /Out/) = 0;

        virtual HRESULT put_Transparency(
            single prop) = 0;

        virtual HRESULT get_Type(
            MsoFillType *prop /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT Background() = 0;

        virtual HRESULT OneColorGradient(
            MsoGradientStyle Style,
            long Variant,
            single Degree) = 0;

        virtual HRESULT Patterned(
            MsoPatternType Pattern) = 0;

        virtual HRESULT PresetGradient(
            MsoGradientStyle Style,
            long Variant,
            MsoPresetGradientType PresetGradientType) = 0;

        virtual HRESULT PresetTextured(
            MsoPresetTexture PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT TwoColorGradient(
            MsoGradientStyle Style,
            long Variant) = 0;

        virtual HRESULT UserPicture(
            BSTR PictureFile) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT get_GradientStops(
            ksoapi::GradientStops **prop /Out/) = 0;

        virtual HRESULT get_TextureOffsetX(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextureOffsetX(
            single prop) = 0;

        virtual HRESULT get_TextureOffsetY(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextureOffsetY(
            single prop) = 0;

        virtual HRESULT get_TextureAlignment(
            MsoTextureAlignment *prop /Out/) = 0;

        virtual HRESULT put_TextureAlignment(
            MsoTextureAlignment prop) = 0;

        virtual HRESULT get_TextureHorizontalScale(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextureHorizontalScale(
            single prop) = 0;

        virtual HRESULT get_TextureVerticalScale(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextureVerticalScale(
            single prop) = 0;

        virtual HRESULT get_TextureTile(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_TextureTile(
            MsoTriState prop) = 0;

        virtual HRESULT get_RotateWithObject(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_RotateWithObject(
            MsoTriState prop) = 0;

        virtual HRESULT get_PictureEffects(
            ksoapi::PictureEffects **prop /Out/) = 0;

        virtual HRESULT get_GradientAngle(
            single *prop /Out/) = 0;

        virtual HRESULT put_GradientAngle(
            single prop) = 0;

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

        ColorFormat* getBackColor();
        %MethodCode
            wpsapi::ColorFormat *prop = nullptr;
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

        %Property(name=BackColor, get=getBackColor)

        ColorFormat* getForeColor();
        %MethodCode
            wpsapi::ColorFormat *prop = nullptr;
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

        %Property(name=ForeColor, get=getForeColor)

        MsoGradientColorType getGradientColorType();
        %MethodCode
            wpsapi::MsoGradientColorType prop = (wpsapi::MsoGradientColorType)0;
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
            wpsapi::single prop = 0;
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
            wpsapi::MsoGradientStyle prop = (wpsapi::MsoGradientStyle)0;
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

        long getGradientVariant();
        %MethodCode
            long prop = 0;
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
            wpsapi::MsoPatternType prop = (wpsapi::MsoPatternType)0;
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
            wpsapi::MsoPresetGradientType prop = (wpsapi::MsoPresetGradientType)0;
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
            wpsapi::MsoPresetTexture prop = (wpsapi::MsoPresetTexture)0;
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
            wpsapi::MsoTextureType prop = (wpsapi::MsoTextureType)0;
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
            wpsapi::single prop = 0;
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
            wpsapi::MsoFillType prop = (wpsapi::MsoFillType)0;
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
            wpsapi::single prop = 0;
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
            wpsapi::single prop = 0;
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
            wpsapi::MsoTextureAlignment prop = (wpsapi::MsoTextureAlignment)0;
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
            wpsapi::single prop = 0;
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
            wpsapi::single prop = 0;
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
            wpsapi::single prop = 0;
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
