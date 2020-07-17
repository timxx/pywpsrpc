/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct ChartFillFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT OneColorGradient(
            int Style,
            int Variant,
            single Degree) = 0;

        virtual HRESULT TwoColorGradient(
            int Style,
            int Variant) = 0;

        virtual HRESULT PresetTextured(
            int PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT Patterned(
            int Pattern) = 0;

        virtual HRESULT UserPicture(
            VARIANT PictureFile,
            VARIANT PictureFormat,
            VARIANT PictureStackUnit,
            VARIANT PicturePlacement) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT PresetGradient(
            int Style,
            int Variant,
            int PresetGradientType) = 0;

        virtual HRESULT get_BackColor(
            ChartColorFormat **pval /Out/) = 0;

        virtual HRESULT get_ForeColor(
            ChartColorFormat **pval /Out/) = 0;

        virtual HRESULT get_GradientColorType(
            int *pval /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *pval /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            int *pval /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            int *pval /Out/) = 0;

        virtual HRESULT get_Pattern(
            int *pval /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            int *pval /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            int *pval /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *pval /Out/) = 0;

        virtual HRESULT get_TextureType(
            int *pval /Out/) = 0;

        virtual HRESULT get_Type(
            int *pval /Out/) = 0;

        virtual HRESULT put_Visible(
            int pval) = 0;

        virtual HRESULT get_Visible(
            int *pval /Out/) = 0;

        ChartColorFormat* getBackColor();
        %MethodCode
            ksoapi::ChartColorFormat *prop = nullptr;
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
            ksoapi::ChartColorFormat *prop = nullptr;
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

        int getGradientColorType();
        %MethodCode
            int prop = 0;
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
            ksoapi::single prop = 0;
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

        int getGradientStyle();
        %MethodCode
            int prop = 0;
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

        int getPattern();
        %MethodCode
            int prop = 0;
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

        int getPresetGradientType();
        %MethodCode
            int prop = 0;
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

        int getPresetTexture();
        %MethodCode
            int prop = 0;
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

        int getTextureType();
        %MethodCode
            int prop = 0;
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

        int getType();
        %MethodCode
            int prop = 0;
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

        int getVisible();
        %MethodCode
            int prop = 0;
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

        PyObject* setVisible(int prop);
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
