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
    struct TextFrame2 : public ksoapi::_IMsoDispObj /Abstract/
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

        virtual HRESULT get_HorizontalAnchor(
            MsoHorizontalAnchor *HorizontalAnchor /Out/) = 0;

        virtual HRESULT put_HorizontalAnchor(
            MsoHorizontalAnchor HorizontalAnchor) = 0;

        virtual HRESULT get_VerticalAnchor(
            MsoVerticalAnchor *VerticalAnchor /Out/) = 0;

        virtual HRESULT put_VerticalAnchor(
            MsoVerticalAnchor VerticalAnchor) = 0;

        virtual HRESULT get_PathFormat(
            MsoPathFormat *PathFormat /Out/) = 0;

        virtual HRESULT put_PathFormat(
            MsoPathFormat PathFormat) = 0;

        virtual HRESULT get_WarpFormat(
            MsoWarpFormat *WarpFormat /Out/) = 0;

        virtual HRESULT put_WarpFormat(
            MsoWarpFormat WarpFormat) = 0;

        virtual HRESULT get_WordArtformat(
            MsoPresetTextEffect *WordArtformat /Out/) = 0;

        virtual HRESULT put_WordArtformat(
            MsoPresetTextEffect WordArtformat) = 0;

        virtual HRESULT get_WordWrap(
            MsoTriState *WordWrap /Out/) = 0;

        virtual HRESULT put_WordWrap(
            MsoTriState WordWrap) = 0;

        virtual HRESULT get_AutoSize(
            MsoAutoSize *AutoSize /Out/) = 0;

        virtual HRESULT put_AutoSize(
            MsoAutoSize AutoSize) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **ThreeD /Out/) = 0;

        virtual HRESULT get_HasText(
            MsoTriState *pHasText /Out/) = 0;

        virtual HRESULT get_TextRange(
            TextRange2 **Range /Out/) = 0;

        virtual HRESULT get_Column(
            TextColumn2 **Column /Out/) = 0;

        virtual HRESULT get_Ruler(
            Ruler2 **Ruler /Out/) = 0;

        virtual HRESULT DeleteText() = 0;

        virtual HRESULT get_NoTextRotation(
            MsoTriState *NoTextRotation /Out/) = 0;

        virtual HRESULT put_NoTextRotation(
            MsoTriState NoTextRotation) = 0;

        single getMarginBottom();
        %MethodCode
            ksoapi::single prop = 0;
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
            ksoapi::single prop = 0;
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
            ksoapi::single prop = 0;
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
            ksoapi::single prop = 0;
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
            ksoapi::MsoTextOrientation prop = (ksoapi::MsoTextOrientation)0;
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

        MsoHorizontalAnchor getHorizontalAnchor();
        %MethodCode
            ksoapi::MsoHorizontalAnchor prop = (ksoapi::MsoHorizontalAnchor)0;
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
            ksoapi::MsoVerticalAnchor prop = (ksoapi::MsoVerticalAnchor)0;
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

        MsoPathFormat getPathFormat();
        %MethodCode
            ksoapi::MsoPathFormat prop = (ksoapi::MsoPathFormat)0;
            HRESULT hr = sipCpp->get_PathFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PathFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPathFormat(MsoPathFormat prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PathFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PathFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PathFormat, get=getPathFormat, set=setPathFormat)

        MsoWarpFormat getWarpFormat();
        %MethodCode
            ksoapi::MsoWarpFormat prop = (ksoapi::MsoWarpFormat)0;
            HRESULT hr = sipCpp->get_WarpFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WarpFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWarpFormat(MsoWarpFormat prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WarpFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WarpFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WarpFormat, get=getWarpFormat, set=setWarpFormat)

        MsoPresetTextEffect getWordArtformat();
        %MethodCode
            ksoapi::MsoPresetTextEffect prop = (ksoapi::MsoPresetTextEffect)0;
            HRESULT hr = sipCpp->get_WordArtformat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WordArtformat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWordArtformat(MsoPresetTextEffect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WordArtformat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WordArtformat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WordArtformat, get=getWordArtformat, set=setWordArtformat)

        MsoTriState getWordWrap();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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

        MsoAutoSize getAutoSize();
        %MethodCode
            ksoapi::MsoAutoSize prop = (ksoapi::MsoAutoSize)0;
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

        PyObject* setAutoSize(MsoAutoSize prop);
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

        ThreeDFormat* getThreeD();
        %MethodCode
            ksoapi::ThreeDFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ThreeD(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThreeD()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThreeD, get=getThreeD)

        MsoTriState getHasText();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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

        TextRange2* getTextRange();
        %MethodCode
            ksoapi::TextRange2 *prop = nullptr;
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

        TextColumn2* getColumn();
        %MethodCode
            ksoapi::TextColumn2 *prop = nullptr;
            HRESULT hr = sipCpp->get_Column(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Column()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Column, get=getColumn)

        Ruler2* getRuler();
        %MethodCode
            ksoapi::Ruler2 *prop = nullptr;
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

        MsoTriState getNoTextRotation();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_NoTextRotation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoTextRotation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoTextRotation(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoTextRotation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoTextRotation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoTextRotation, get=getNoTextRotation, set=setNoTextRotation)
    };
};
