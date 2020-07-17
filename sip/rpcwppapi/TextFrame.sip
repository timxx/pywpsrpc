/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct TextFrame : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_MarginBottom(
            single *MarginBottom /Out/) = 0;

        virtual HRESULT put_MarginBottom(
            single MarginBottom) = 0;

        virtual HRESULT get_MarginLeft(
            single *MarginLeft /Out/) = 0;

        virtual HRESULT put_MarginLeft(
            single MarginLeft) = 0;

        virtual HRESULT get_MarginRight(
            single *MarginRight /Out/) = 0;

        virtual HRESULT put_MarginRight(
            single MarginRight) = 0;

        virtual HRESULT get_MarginTop(
            single *MarginTop /Out/) = 0;

        virtual HRESULT put_MarginTop(
            single MarginTop) = 0;

        virtual HRESULT get_Orientation(
            MsoTextOrientation *Orientation /Out/) = 0;

        virtual HRESULT put_Orientation(
            MsoTextOrientation Orientation) = 0;

        virtual HRESULT get_HasText(
            MsoTriState *HasText /Out/) = 0;

        virtual HRESULT get_TextRange(
            TextRange **TextRange /Out/) = 0;

        virtual HRESULT get_Ruler(
            Ruler **Ruler /Out/) = 0;

        virtual HRESULT get_HorizontalAnchor(
            MsoHorizontalAnchor *HorizontalAnchor /Out/) = 0;

        virtual HRESULT put_HorizontalAnchor(
            MsoHorizontalAnchor HorizontalAnchor) = 0;

        virtual HRESULT get_VerticalAnchor(
            MsoVerticalAnchor *VerticalAnchor /Out/) = 0;

        virtual HRESULT put_VerticalAnchor(
            MsoVerticalAnchor VerticalAnchor) = 0;

        virtual HRESULT get_AutoSize(
            PpAutoSize *AutoSize /Out/) = 0;

        virtual HRESULT put_AutoSize(
            PpAutoSize AutoSize) = 0;

        virtual HRESULT get_WordWrap(
            MsoTriState *WordWrap /Out/) = 0;

        virtual HRESULT put_WordWrap(
            MsoTriState WordWrap) = 0;

        virtual HRESULT DeleteText() = 0;

        single getMarginBottom();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_MarginBottom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarginBottom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarginBottom(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarginBottom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarginBottom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarginBottom, get=getMarginBottom, set=setMarginBottom)

        single getMarginLeft();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_MarginLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarginLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarginLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarginLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarginLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarginLeft, get=getMarginLeft, set=setMarginLeft)

        single getMarginRight();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_MarginRight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarginRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarginRight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarginRight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarginRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarginRight, get=getMarginRight, set=setMarginRight)

        single getMarginTop();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_MarginTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarginTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarginTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarginTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarginTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarginTop, get=getMarginTop, set=setMarginTop)

        MsoTextOrientation getOrientation();
        %MethodCode
            wppapi::MsoTextOrientation prop = (wppapi::MsoTextOrientation)0;
            HRESULT hr = sipCpp->get_Orientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Orientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrientation(MsoTextOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Orientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Orientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Orientation, get=getOrientation, set=setOrientation)

        MsoTriState getHasText();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasText(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasText, get=getHasText)

        TextRange* getTextRange();
        %MethodCode
            wppapi::TextRange *prop = nullptr;
            HRESULT hr = sipCpp->get_TextRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextRange, get=getTextRange)

        Ruler* getRuler();
        %MethodCode
            wppapi::Ruler *prop = nullptr;
            HRESULT hr = sipCpp->get_Ruler(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Ruler()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Ruler, get=getRuler)

        MsoHorizontalAnchor getHorizontalAnchor();
        %MethodCode
            wppapi::MsoHorizontalAnchor prop = (wppapi::MsoHorizontalAnchor)0;
            HRESULT hr = sipCpp->get_HorizontalAnchor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalAnchor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalAnchor(MsoHorizontalAnchor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalAnchor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalAnchor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalAnchor, get=getHorizontalAnchor, set=setHorizontalAnchor)

        MsoVerticalAnchor getVerticalAnchor();
        %MethodCode
            wppapi::MsoVerticalAnchor prop = (wppapi::MsoVerticalAnchor)0;
            HRESULT hr = sipCpp->get_VerticalAnchor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalAnchor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalAnchor(MsoVerticalAnchor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalAnchor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalAnchor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalAnchor, get=getVerticalAnchor, set=setVerticalAnchor)

        PpAutoSize getAutoSize();
        %MethodCode
            wppapi::PpAutoSize prop = (wppapi::PpAutoSize)0;
            HRESULT hr = sipCpp->get_AutoSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoSize(PpAutoSize prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoSize, get=getAutoSize, set=setAutoSize)

        MsoTriState getWordWrap();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_WordWrap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WordWrap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWordWrap(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WordWrap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WordWrap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WordWrap, get=getWordWrap, set=setWordWrap)
    };
};
