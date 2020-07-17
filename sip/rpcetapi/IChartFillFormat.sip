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
    struct IChartFillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT OneColorGradient(
            MsoGradientStyle Style,
            long Variant,
            single Degree) = 0;

        virtual HRESULT TwoColorGradient(
            MsoGradientStyle Style,
            long Variant) = 0;

        virtual HRESULT PresetTextured(
            MsoPresetTexture PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT Patterned(
            MsoPatternType Pattern) = 0;

        virtual HRESULT UserPicture(
            VARIANT PictureFile = argMissing2(),
            VARIANT PictureFormat = argMissing2(),
            VARIANT PictureStackUnit = argMissing2(),
            VARIANT PicturePlacement = argMissing2()) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT PresetGradient(
            MsoGradientStyle Style,
            long Variant,
            MsoPresetGradientType PresetGradientType) = 0;

        virtual HRESULT get_BackColor(
            ChartColorFormat **RHS /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ChartColorFormat **RHS /Out/) = 0;

        virtual HRESULT get_GradientColorType(
            MsoGradientColorType *RHS /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *RHS /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            MsoGradientStyle *RHS /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *RHS /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            MsoPresetGradientType *RHS /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            MsoPresetTexture *RHS /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_TextureType(
            MsoTextureType *RHS /Out/) = 0;

        virtual HRESULT get_Type(
            MsoFillType *RHS /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState RHS) = 0;

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

        ChartColorFormat* getBackColor();
        %MethodCode
            etapi::ChartColorFormat *prop = nullptr;
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

        ChartColorFormat* getForeColor();
        %MethodCode
            etapi::ChartColorFormat *prop = nullptr;
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
    };
};
