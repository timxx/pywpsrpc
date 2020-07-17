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
    struct ITextFrame : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_MarginBottom(
            single *RHS /Out/) = 0;

        virtual HRESULT put_MarginBottom(
            single RHS) = 0;

        virtual HRESULT get_MarginLeft(
            single *RHS /Out/) = 0;

        virtual HRESULT put_MarginLeft(
            single RHS) = 0;

        virtual HRESULT get_MarginRight(
            single *RHS /Out/) = 0;

        virtual HRESULT put_MarginRight(
            single RHS) = 0;

        virtual HRESULT get_MarginTop(
            single *RHS /Out/) = 0;

        virtual HRESULT put_MarginTop(
            single RHS) = 0;

        virtual HRESULT get_Orientation(
            MsoTextOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            MsoTextOrientation RHS) = 0;

        virtual HRESULT Characters(
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            Characters **RHS /Out/ = 0) = 0;

        virtual HRESULT get_HorizontalAlignment(
            XlHAlign *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            XlHAlign RHS) = 0;

        virtual HRESULT get_VerticalAlignment(
            XlVAlign *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            XlVAlign RHS) = 0;

        virtual HRESULT get_AutoSize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoSize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

        virtual HRESULT get_AutoMargins(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoMargins(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_VerticalOverflow(
            XlOartVerticalOverflow *RHS /Out/) = 0;

        virtual HRESULT put_VerticalOverflow(
            XlOartVerticalOverflow RHS) = 0;

        virtual HRESULT get_HorizontalOverflow(
            XlOartHorizontalOverflow *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalOverflow(
            XlOartHorizontalOverflow RHS) = 0;

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

        single getMarginBottom();
        %MethodCode
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::MsoTextOrientation prop = (etapi::MsoTextOrientation)0;
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

        XlHAlign getHorizontalAlignment();
        %MethodCode
            etapi::XlHAlign prop = (etapi::XlHAlign)0;
            HRESULT hr = sipCpp->get_HorizontalAlignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalAlignment(XlHAlign prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalAlignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalAlignment, get=getHorizontalAlignment, set=setHorizontalAlignment)

        XlVAlign getVerticalAlignment();
        %MethodCode
            etapi::XlVAlign prop = (etapi::XlVAlign)0;
            HRESULT hr = sipCpp->get_VerticalAlignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalAlignment(XlVAlign prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalAlignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalAlignment, get=getVerticalAlignment, set=setVerticalAlignment)

        VARIANT_BOOL getAutoSize();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoSize(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoSize(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoSize(*a0);
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

        long getReadingOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ReadingOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingOrder(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingOrder, get=getReadingOrder, set=setReadingOrder)

        VARIANT_BOOL getAutoMargins();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoMargins(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoMargins()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoMargins(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoMargins(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoMargins()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoMargins, get=getAutoMargins, set=setAutoMargins)

        XlOartVerticalOverflow getVerticalOverflow();
        %MethodCode
            etapi::XlOartVerticalOverflow prop = (etapi::XlOartVerticalOverflow)0;
            HRESULT hr = sipCpp->get_VerticalOverflow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalOverflow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalOverflow(XlOartVerticalOverflow prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalOverflow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalOverflow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalOverflow, get=getVerticalOverflow, set=setVerticalOverflow)

        XlOartHorizontalOverflow getHorizontalOverflow();
        %MethodCode
            etapi::XlOartHorizontalOverflow prop = (etapi::XlOartHorizontalOverflow)0;
            HRESULT hr = sipCpp->get_HorizontalOverflow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalOverflow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalOverflow(XlOartHorizontalOverflow prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalOverflow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalOverflow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalOverflow, get=getHorizontalOverflow, set=setHorizontalOverflow)
    };
};
