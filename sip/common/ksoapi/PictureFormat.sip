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
    struct PictureFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT IncrementBrightness(
            single Increment) = 0;

        virtual HRESULT IncrementContrast(
            single Increment) = 0;

        virtual HRESULT get_Brightness(
            single *Brightness /Out/) = 0;

        virtual HRESULT put_Brightness(
            single Brightness) = 0;

        virtual HRESULT get_ColorType(
            MsoPictureColorType *ColorType /Out/) = 0;

        virtual HRESULT put_ColorType(
            MsoPictureColorType ColorType) = 0;

        virtual HRESULT get_Contrast(
            single *Contrast /Out/) = 0;

        virtual HRESULT put_Contrast(
            single Contrast) = 0;

        virtual HRESULT get_CropBottom(
            single *CropBottom /Out/) = 0;

        virtual HRESULT put_CropBottom(
            single CropBottom) = 0;

        virtual HRESULT get_CropLeft(
            single *CropLeft /Out/) = 0;

        virtual HRESULT put_CropLeft(
            single CropLeft) = 0;

        virtual HRESULT get_CropRight(
            single *CropRight /Out/) = 0;

        virtual HRESULT put_CropRight(
            single CropRight) = 0;

        virtual HRESULT get_CropTop(
            single *CropTop /Out/) = 0;

        virtual HRESULT put_CropTop(
            single CropTop) = 0;

        virtual HRESULT get_TransparencyColor(
            MsoRGBType *TransparencyColor /Out/) = 0;

        virtual HRESULT put_TransparencyColor(
            MsoRGBType TransparencyColor) = 0;

        virtual HRESULT get_TransparentBackground(
            MsoTriState *TransparentBackground /Out/) = 0;

        virtual HRESULT put_TransparentBackground(
            MsoTriState TransparentBackground) = 0;

        virtual HRESULT get_Crop(
            Crop **Crop /Out/) = 0;

        single getBrightness();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_Brightness(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Brightness()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBrightness(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Brightness(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Brightness()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Brightness, get=getBrightness, set=setBrightness)

        MsoPictureColorType getColorType();
        %MethodCode
            ksoapi::MsoPictureColorType prop = (ksoapi::MsoPictureColorType)0;
            HRESULT hr = sipCpp->get_ColorType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColorType(MsoPictureColorType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColorType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColorType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColorType, get=getColorType, set=setColorType)

        single getContrast();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_Contrast(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Contrast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setContrast(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Contrast(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Contrast()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Contrast, get=getContrast, set=setContrast)

        single getCropBottom();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_CropBottom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CropBottom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCropBottom(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CropBottom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CropBottom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CropBottom, get=getCropBottom, set=setCropBottom)

        single getCropLeft();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_CropLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CropLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCropLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CropLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CropLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CropLeft, get=getCropLeft, set=setCropLeft)

        single getCropRight();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_CropRight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CropRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCropRight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CropRight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CropRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CropRight, get=getCropRight, set=setCropRight)

        single getCropTop();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_CropTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CropTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCropTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CropTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CropTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CropTop, get=getCropTop, set=setCropTop)

        MsoRGBType getTransparencyColor();
        %MethodCode
            ksoapi::MsoRGBType prop = 0;
            HRESULT hr = sipCpp->get_TransparencyColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TransparencyColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTransparencyColor(MsoRGBType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TransparencyColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TransparencyColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TransparencyColor, get=getTransparencyColor, set=setTransparencyColor)

        MsoTriState getTransparentBackground();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_TransparentBackground(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TransparentBackground()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTransparentBackground(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TransparentBackground(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TransparentBackground()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TransparentBackground, get=getTransparentBackground, set=setTransparentBackground)

        Crop* getCrop();
        %MethodCode
            ksoapi::Crop *prop = nullptr;
            HRESULT hr = sipCpp->get_Crop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Crop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Crop, get=getCrop)
    };
};
