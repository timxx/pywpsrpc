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
    struct PictureFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Brightness(
            single *prop /Out/) = 0;

        virtual HRESULT put_Brightness(
            single prop) = 0;

        virtual HRESULT get_ColorType(
            MsoPictureColorType *prop /Out/) = 0;

        virtual HRESULT put_ColorType(
            MsoPictureColorType prop) = 0;

        virtual HRESULT get_Contrast(
            single *prop /Out/) = 0;

        virtual HRESULT put_Contrast(
            single prop) = 0;

        virtual HRESULT get_CropBottom(
            single *prop /Out/) = 0;

        virtual HRESULT put_CropBottom(
            single prop) = 0;

        virtual HRESULT get_CropLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_CropLeft(
            single prop) = 0;

        virtual HRESULT get_CropRight(
            single *prop /Out/) = 0;

        virtual HRESULT put_CropRight(
            single prop) = 0;

        virtual HRESULT get_CropTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_CropTop(
            single prop) = 0;

        virtual HRESULT get_TransparencyColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_TransparencyColor(
            long prop) = 0;

        virtual HRESULT get_TransparentBackground(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_TransparentBackground(
            MsoTriState prop) = 0;

        virtual HRESULT IncrementBrightness(
            single Increment) = 0;

        virtual HRESULT IncrementContrast(
            single Increment) = 0;

        virtual HRESULT get_Crop(
            ksoapi::Crop **prop /Out/) = 0;

        virtual HRESULT put_Crop(
            ksoapi::Crop *prop) = 0;

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

        single getBrightness();
        %MethodCode
            wpsapi::single prop = 0;
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
            wpsapi::MsoPictureColorType prop = (wpsapi::MsoPictureColorType)0;
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
            wpsapi::single prop = 0;
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
            wpsapi::single prop = 0;
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
            wpsapi::single prop = 0;
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
            wpsapi::single prop = 0;
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
            wpsapi::single prop = 0;
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

        long getTransparencyColor();
        %MethodCode
            long prop = 0;
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

        PyObject* setTransparencyColor(long prop);
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
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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

        ksoapi::Crop* getCrop();
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

        PyObject* setCrop(ksoapi::Crop *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Crop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Crop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Crop, get=getCrop, set=setCrop)
    };
};
