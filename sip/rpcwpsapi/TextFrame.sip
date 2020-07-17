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
    struct TextFrame : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_MarginBottom(
            single *prop /Out/) = 0;

        virtual HRESULT put_MarginBottom(
            single prop) = 0;

        virtual HRESULT get_MarginLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_MarginLeft(
            single prop) = 0;

        virtual HRESULT get_MarginRight(
            single *prop /Out/) = 0;

        virtual HRESULT put_MarginRight(
            single prop) = 0;

        virtual HRESULT get_MarginTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_MarginTop(
            single prop) = 0;

        virtual HRESULT get_Orientation(
            MsoTextOrientation *prop /Out/) = 0;

        virtual HRESULT put_Orientation(
            MsoTextOrientation prop) = 0;

        virtual HRESULT get_TextRange(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ContainingRange(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Next(
            TextFrame **prop /Out/) = 0;

        virtual HRESULT put_Next(
            TextFrame *prop) = 0;

        virtual HRESULT get_Previous(
            TextFrame **prop /Out/) = 0;

        virtual HRESULT put_Previous(
            TextFrame *prop) = 0;

        virtual HRESULT get_Overflowing(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_HasText(
            long *prop /Out/) = 0;

        virtual HRESULT BreakForwardLink() = 0;

        virtual HRESULT ValidLinkTarget(
            TextFrame *TargetTextFrame,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_AutoSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_AutoSize(
            long prop) = 0;

        virtual HRESULT get_WordWrap(
            long *prop /Out/) = 0;

        virtual HRESULT put_WordWrap(
            long prop) = 0;

        virtual HRESULT get_VerticalAnchor(
            MsoVerticalAnchor *prop /Out/) = 0;

        virtual HRESULT put_VerticalAnchor(
            MsoVerticalAnchor prop) = 0;

        virtual HRESULT get_HorizontalAnchor(
            MsoHorizontalAnchor *prop /Out/) = 0;

        virtual HRESULT put_HorizontalAnchor(
            MsoHorizontalAnchor prop) = 0;

        virtual HRESULT get_PathFormat(
            MsoPathFormat *prop /Out/) = 0;

        virtual HRESULT put_PathFormat(
            MsoPathFormat prop) = 0;

        virtual HRESULT get_WarpFormat(
            MsoWarpFormat *prop /Out/) = 0;

        virtual HRESULT put_WarpFormat(
            MsoWarpFormat prop) = 0;

        virtual HRESULT get_Column(
            ksoapi::TextColumn2 **prop /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **prop /Out/) = 0;

        virtual HRESULT get_NoTextRotation(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_NoTextRotation(
            MsoTriState prop) = 0;

        virtual HRESULT DeleteText() = 0;

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

        Shape* getParent();
        %MethodCode
            wpsapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_Parent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Parent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        single getMarginBottom();
        %MethodCode
            wpsapi::single prop = 0;
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
            wpsapi::single prop = 0;
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
            wpsapi::single prop = 0;
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
            wpsapi::single prop = 0;
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
            wpsapi::MsoTextOrientation prop = (wpsapi::MsoTextOrientation)0;
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

        Range* getTextRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
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

        Range* getContainingRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_ContainingRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContainingRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContainingRange, get=getContainingRange)

        TextFrame* getNext();
        %MethodCode
            wpsapi::TextFrame *prop = nullptr;
            HRESULT hr = sipCpp->get_Next(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Next()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNext(TextFrame *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Next(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Next()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Next, get=getNext, set=setNext)

        TextFrame* getPrevious();
        %MethodCode
            wpsapi::TextFrame *prop = nullptr;
            HRESULT hr = sipCpp->get_Previous(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Previous()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrevious(TextFrame *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Previous(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Previous()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Previous, get=getPrevious, set=setPrevious)

        VARIANT_BOOL getOverflowing();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Overflowing(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Overflowing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Overflowing, get=getOverflowing)

        long getHasText();
        %MethodCode
            long prop = 0;
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

        long getAutoSize();
        %MethodCode
            long prop = 0;
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

        PyObject* setAutoSize(long prop);
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

        long getWordWrap();
        %MethodCode
            long prop = 0;
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

        PyObject* setWordWrap(long prop);
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

        MsoVerticalAnchor getVerticalAnchor();
        %MethodCode
            wpsapi::MsoVerticalAnchor prop = (wpsapi::MsoVerticalAnchor)0;
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

        MsoHorizontalAnchor getHorizontalAnchor();
        %MethodCode
            wpsapi::MsoHorizontalAnchor prop = (wpsapi::MsoHorizontalAnchor)0;
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

        MsoPathFormat getPathFormat();
        %MethodCode
            wpsapi::MsoPathFormat prop = (wpsapi::MsoPathFormat)0;
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
            wpsapi::MsoWarpFormat prop = (wpsapi::MsoWarpFormat)0;
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

        ksoapi::TextColumn2* getColumn();
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

        ThreeDFormat* getThreeD();
        %MethodCode
            wpsapi::ThreeDFormat *prop = nullptr;
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

        MsoTriState getNoTextRotation();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
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
