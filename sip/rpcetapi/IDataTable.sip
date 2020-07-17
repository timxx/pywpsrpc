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
    struct IDataTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasBorderHorizontal(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasBorderHorizontal(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasBorderVertical(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasBorderVertical(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasBorderOutline(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasBorderOutline(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Border(
            Border **RHS /Out/) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **RHS /Out/) = 0;

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

        VARIANT_BOOL getShowLegendKey();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowLegendKey(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowLegendKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowLegendKey(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowLegendKey(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowLegendKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowLegendKey, get=getShowLegendKey, set=setShowLegendKey)

        VARIANT_BOOL getHasBorderHorizontal();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasBorderHorizontal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasBorderHorizontal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasBorderHorizontal(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasBorderHorizontal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasBorderHorizontal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasBorderHorizontal, get=getHasBorderHorizontal, set=setHasBorderHorizontal)

        VARIANT_BOOL getHasBorderVertical();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasBorderVertical(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasBorderVertical()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasBorderVertical(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasBorderVertical(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasBorderVertical()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasBorderVertical, get=getHasBorderVertical, set=setHasBorderVertical)

        VARIANT_BOOL getHasBorderOutline();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasBorderOutline(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasBorderOutline()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasBorderOutline(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasBorderOutline(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasBorderOutline()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasBorderOutline, get=getHasBorderOutline, set=setHasBorderOutline)

        Border* getBorder();
        %MethodCode
            etapi::Border *prop = nullptr;
            HRESULT hr = sipCpp->get_Border(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Border()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Border, get=getBorder)

        Font* getFont();
        %MethodCode
            etapi::Font *prop = nullptr;
            HRESULT hr = sipCpp->get_Font(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Font()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Font, get=getFont)

        VARIANT getAutoScaleFont();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_AutoScaleFont(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoScaleFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoScaleFont(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoScaleFont(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoScaleFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoScaleFont, get=getAutoScaleFont, set=setAutoScaleFont)

        ChartFormat* getFormat();
        %MethodCode
            etapi::ChartFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Format(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Format()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Format, get=getFormat)
    };
};
