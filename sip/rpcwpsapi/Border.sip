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
    struct Border : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_Inside(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_LineStyle(
            WdLineStyle *prop /Out/) = 0;

        virtual HRESULT put_LineStyle(
            WdLineStyle prop) = 0;

        virtual HRESULT get_LineWidth(
            WdLineWidth *prop /Out/) = 0;

        virtual HRESULT put_LineWidth(
            WdLineWidth prop) = 0;

        virtual HRESULT get_ArtStyle(
            WdPageBorderArt *prop /Out/) = 0;

        virtual HRESULT put_ArtStyle(
            WdPageBorderArt prop) = 0;

        virtual HRESULT get_ArtWidth(
            long *prop /Out/) = 0;

        virtual HRESULT put_ArtWidth(
            long prop) = 0;

        virtual HRESULT get_Color(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_Color(
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

        VARIANT_BOOL getVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(*a0);
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

        WdColorIndex getColorIndex();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_ColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColorIndex(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColorIndex, get=getColorIndex, set=setColorIndex)

        VARIANT_BOOL getInside();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Inside(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Inside()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Inside, get=getInside)

        WdLineStyle getLineStyle();
        %MethodCode
            wpsapi::WdLineStyle prop = (wpsapi::WdLineStyle)0;
            HRESULT hr = sipCpp->get_LineStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineStyle(WdLineStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineStyle, get=getLineStyle, set=setLineStyle)

        WdLineWidth getLineWidth();
        %MethodCode
            wpsapi::WdLineWidth prop = (wpsapi::WdLineWidth)0;
            HRESULT hr = sipCpp->get_LineWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineWidth(WdLineWidth prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineWidth, get=getLineWidth, set=setLineWidth)

        WdPageBorderArt getArtStyle();
        %MethodCode
            wpsapi::WdPageBorderArt prop = (wpsapi::WdPageBorderArt)0;
            HRESULT hr = sipCpp->get_ArtStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArtStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArtStyle(WdPageBorderArt prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArtStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArtStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArtStyle, get=getArtStyle, set=setArtStyle)

        long getArtWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ArtWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArtWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArtWidth(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArtWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArtWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArtWidth, get=getArtWidth, set=setArtWidth)

        WdColor getColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_Color(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Color()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Color(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Color()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Color, get=getColor, set=setColor)
    };
};
