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
    struct LineFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_BackColor(
            ColorFormat **BackColor /Out/) = 0;

        virtual HRESULT put_BackColor(
            ColorFormat *BackColor) = 0;

        virtual HRESULT get_BeginArrowheadLength(
            MsoArrowheadLength *BeginArrowheadLength /Out/) = 0;

        virtual HRESULT put_BeginArrowheadLength(
            MsoArrowheadLength BeginArrowheadLength) = 0;

        virtual HRESULT get_BeginArrowheadStyle(
            MsoArrowheadStyle *BeginArrowheadStyle /Out/) = 0;

        virtual HRESULT put_BeginArrowheadStyle(
            MsoArrowheadStyle BeginArrowheadStyle) = 0;

        virtual HRESULT get_BeginArrowheadWidth(
            MsoArrowheadWidth *BeginArrowheadWidth /Out/) = 0;

        virtual HRESULT put_BeginArrowheadWidth(
            MsoArrowheadWidth BeginArrowheadWidth) = 0;

        virtual HRESULT get_DashStyle(
            MsoLineDashStyle *DashStyle /Out/) = 0;

        virtual HRESULT put_DashStyle(
            MsoLineDashStyle DashStyle) = 0;

        virtual HRESULT get_EndArrowheadLength(
            MsoArrowheadLength *EndArrowheadLength /Out/) = 0;

        virtual HRESULT put_EndArrowheadLength(
            MsoArrowheadLength EndArrowheadLength) = 0;

        virtual HRESULT get_EndArrowheadStyle(
            MsoArrowheadStyle *EndArrowheadStyle /Out/) = 0;

        virtual HRESULT put_EndArrowheadStyle(
            MsoArrowheadStyle EndArrowheadStyle) = 0;

        virtual HRESULT get_EndArrowheadWidth(
            MsoArrowheadWidth *EndArrowheadWidth /Out/) = 0;

        virtual HRESULT put_EndArrowheadWidth(
            MsoArrowheadWidth EndArrowheadWidth) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **ForeColor /Out/) = 0;

        virtual HRESULT put_ForeColor(
            ColorFormat *ForeColor) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *Pattern /Out/) = 0;

        virtual HRESULT put_Pattern(
            MsoPatternType Pattern) = 0;

        virtual HRESULT get_Style(
            MsoLineStyle *Style /Out/) = 0;

        virtual HRESULT put_Style(
            MsoLineStyle Style) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Weight(
            single *Weight /Out/) = 0;

        virtual HRESULT put_Weight(
            single Weight) = 0;

        virtual HRESULT get_InsetPen(
            MsoTriState *InsetPen /Out/) = 0;

        virtual HRESULT put_InsetPen(
            MsoTriState InsetPen) = 0;

        ColorFormat* getBackColor();
        %MethodCode
            etapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_BackColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackColor(ColorFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackColor, get=getBackColor, set=setBackColor)

        MsoArrowheadLength getBeginArrowheadLength();
        %MethodCode
            etapi::MsoArrowheadLength prop = (etapi::MsoArrowheadLength)0;
            HRESULT hr = sipCpp->get_BeginArrowheadLength(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BeginArrowheadLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBeginArrowheadLength(MsoArrowheadLength prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BeginArrowheadLength(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BeginArrowheadLength()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BeginArrowheadLength, get=getBeginArrowheadLength, set=setBeginArrowheadLength)

        MsoArrowheadStyle getBeginArrowheadStyle();
        %MethodCode
            etapi::MsoArrowheadStyle prop = (etapi::MsoArrowheadStyle)0;
            HRESULT hr = sipCpp->get_BeginArrowheadStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BeginArrowheadStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBeginArrowheadStyle(MsoArrowheadStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BeginArrowheadStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BeginArrowheadStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BeginArrowheadStyle, get=getBeginArrowheadStyle, set=setBeginArrowheadStyle)

        MsoArrowheadWidth getBeginArrowheadWidth();
        %MethodCode
            etapi::MsoArrowheadWidth prop = (etapi::MsoArrowheadWidth)0;
            HRESULT hr = sipCpp->get_BeginArrowheadWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BeginArrowheadWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBeginArrowheadWidth(MsoArrowheadWidth prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BeginArrowheadWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BeginArrowheadWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BeginArrowheadWidth, get=getBeginArrowheadWidth, set=setBeginArrowheadWidth)

        MsoLineDashStyle getDashStyle();
        %MethodCode
            etapi::MsoLineDashStyle prop = (etapi::MsoLineDashStyle)0;
            HRESULT hr = sipCpp->get_DashStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DashStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDashStyle(MsoLineDashStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DashStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DashStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DashStyle, get=getDashStyle, set=setDashStyle)

        MsoArrowheadLength getEndArrowheadLength();
        %MethodCode
            etapi::MsoArrowheadLength prop = (etapi::MsoArrowheadLength)0;
            HRESULT hr = sipCpp->get_EndArrowheadLength(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndArrowheadLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEndArrowheadLength(MsoArrowheadLength prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EndArrowheadLength(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EndArrowheadLength()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EndArrowheadLength, get=getEndArrowheadLength, set=setEndArrowheadLength)

        MsoArrowheadStyle getEndArrowheadStyle();
        %MethodCode
            etapi::MsoArrowheadStyle prop = (etapi::MsoArrowheadStyle)0;
            HRESULT hr = sipCpp->get_EndArrowheadStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndArrowheadStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEndArrowheadStyle(MsoArrowheadStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EndArrowheadStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EndArrowheadStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EndArrowheadStyle, get=getEndArrowheadStyle, set=setEndArrowheadStyle)

        MsoArrowheadWidth getEndArrowheadWidth();
        %MethodCode
            etapi::MsoArrowheadWidth prop = (etapi::MsoArrowheadWidth)0;
            HRESULT hr = sipCpp->get_EndArrowheadWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndArrowheadWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEndArrowheadWidth(MsoArrowheadWidth prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EndArrowheadWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EndArrowheadWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EndArrowheadWidth, get=getEndArrowheadWidth, set=setEndArrowheadWidth)

        ColorFormat* getForeColor();
        %MethodCode
            etapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ForeColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ForeColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setForeColor(ColorFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ForeColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ForeColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ForeColor, get=getForeColor, set=setForeColor)

        MsoPatternType getPattern();
        %MethodCode
            etapi::MsoPatternType prop = (etapi::MsoPatternType)0;
            HRESULT hr = sipCpp->get_Pattern(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Pattern()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPattern(MsoPatternType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Pattern(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Pattern()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Pattern, get=getPattern, set=setPattern)

        MsoLineStyle getStyle();
        %MethodCode
            etapi::MsoLineStyle prop = (etapi::MsoLineStyle)0;
            HRESULT hr = sipCpp->get_Style(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyle(MsoLineStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Style()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Style, get=getStyle, set=setStyle)

        single getTransparency();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_Transparency(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Transparency()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTransparency(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Transparency(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Transparency()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Transparency, get=getTransparency, set=setTransparency)

        MsoTriState getVisible();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Visible(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(a0);
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

        single getWeight();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_Weight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Weight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Weight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Weight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Weight, get=getWeight, set=setWeight)

        MsoTriState getInsetPen();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_InsetPen(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsetPen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsetPen(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsetPen(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsetPen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsetPen, get=getInsetPen, set=setInsetPen)
    };
};
