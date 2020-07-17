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
    struct IGraphic : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Brightness(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Brightness(
            single RHS) = 0;

        virtual HRESULT get_ColorType(
            MsoPictureColorType *RHS /Out/) = 0;

        virtual HRESULT put_ColorType(
            MsoPictureColorType RHS) = 0;

        virtual HRESULT get_Contrast(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Contrast(
            single RHS) = 0;

        virtual HRESULT get_CropBottom(
            single *RHS /Out/) = 0;

        virtual HRESULT put_CropBottom(
            single RHS) = 0;

        virtual HRESULT get_CropLeft(
            single *RHS /Out/) = 0;

        virtual HRESULT put_CropLeft(
            single RHS) = 0;

        virtual HRESULT get_CropRight(
            single *RHS /Out/) = 0;

        virtual HRESULT put_CropRight(
            single RHS) = 0;

        virtual HRESULT get_CropTop(
            single *RHS /Out/) = 0;

        virtual HRESULT put_CropTop(
            single RHS) = 0;

        virtual HRESULT get_Filename(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Filename(
            BSTR RHS) = 0;

        virtual HRESULT get_Height(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            single RHS) = 0;

        virtual HRESULT get_LockAspectRatio(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_LockAspectRatio(
            MsoTriState RHS) = 0;

        virtual HRESULT get_Width(
            single *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            single RHS) = 0;

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

        single getBrightness();
        %MethodCode
            etapi::single prop = 0;
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
            etapi::MsoPictureColorType prop = (etapi::MsoPictureColorType)0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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

        BSTR getFilename();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Filename(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Filename()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFilename(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Filename(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Filename()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Filename, get=getFilename, set=setFilename)

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
    };
};
