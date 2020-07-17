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
    struct Shading : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_ForegroundPatternColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ForegroundPatternColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_BackgroundPatternColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_BackgroundPatternColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_Texture(
            WdTextureIndex *prop /Out/) = 0;

        virtual HRESULT put_Texture(
            WdTextureIndex prop) = 0;

        virtual HRESULT get_ForegroundPatternColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_ForegroundPatternColor(
            WdColor prop) = 0;

        virtual HRESULT get_BackgroundPatternColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_BackgroundPatternColor(
            WdColor prop) = 0;

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

        WdColorIndex getForegroundPatternColorIndex();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_ForegroundPatternColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ForegroundPatternColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setForegroundPatternColorIndex(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ForegroundPatternColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ForegroundPatternColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ForegroundPatternColorIndex, get=getForegroundPatternColorIndex, set=setForegroundPatternColorIndex)

        WdColorIndex getBackgroundPatternColorIndex();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_BackgroundPatternColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundPatternColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackgroundPatternColorIndex(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackgroundPatternColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackgroundPatternColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackgroundPatternColorIndex, get=getBackgroundPatternColorIndex, set=setBackgroundPatternColorIndex)

        WdTextureIndex getTexture();
        %MethodCode
            wpsapi::WdTextureIndex prop = (wpsapi::WdTextureIndex)0;
            HRESULT hr = sipCpp->get_Texture(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Texture()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTexture(WdTextureIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Texture(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Texture()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Texture, get=getTexture, set=setTexture)

        WdColor getForegroundPatternColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_ForegroundPatternColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ForegroundPatternColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setForegroundPatternColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ForegroundPatternColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ForegroundPatternColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ForegroundPatternColor, get=getForegroundPatternColor, set=setForegroundPatternColor)

        WdColor getBackgroundPatternColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_BackgroundPatternColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundPatternColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackgroundPatternColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackgroundPatternColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackgroundPatternColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackgroundPatternColor, get=getBackgroundPatternColor, set=setBackgroundPatternColor)
    };
};
