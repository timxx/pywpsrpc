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
    struct SmartArt : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_AllNodes(
            SmartArtNodes **Nodes /Out/) = 0;

        virtual HRESULT get_Nodes(
            SmartArtNodes **Nodes /Out/) = 0;

        virtual HRESULT get_Layout(
            SmartArtLayout **Layout /Out/) = 0;

        virtual HRESULT put_Layout(
            SmartArtLayout *Layout) = 0;

        virtual HRESULT get_QuickStyle(
            SmartArtQuickStyle **Style /Out/) = 0;

        virtual HRESULT put_QuickStyle(
            SmartArtQuickStyle *Style) = 0;

        virtual HRESULT get_Color(
            SmartArtColor **ColorStyle /Out/) = 0;

        virtual HRESULT put_Color(
            SmartArtColor *ColorStyle) = 0;

        virtual HRESULT get_Reverse(
            MsoTriState *Reverse /Out/) = 0;

        virtual HRESULT put_Reverse(
            MsoTriState Reverse) = 0;

        virtual HRESULT Reset() = 0;

        SmartArtNodes* getAllNodes();
        %MethodCode
            ksoapi::SmartArtNodes *prop = nullptr;
            HRESULT hr = sipCpp->get_AllNodes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllNodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllNodes, get=getAllNodes)

        SmartArtNodes* getNodes();
        %MethodCode
            ksoapi::SmartArtNodes *prop = nullptr;
            HRESULT hr = sipCpp->get_Nodes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Nodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Nodes, get=getNodes)

        SmartArtLayout* getLayout();
        %MethodCode
            ksoapi::SmartArtLayout *prop = nullptr;
            HRESULT hr = sipCpp->get_Layout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Layout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayout(SmartArtLayout *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Layout(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Layout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Layout, get=getLayout, set=setLayout)

        SmartArtQuickStyle* getQuickStyle();
        %MethodCode
            ksoapi::SmartArtQuickStyle *prop = nullptr;
            HRESULT hr = sipCpp->get_QuickStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_QuickStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setQuickStyle(SmartArtQuickStyle *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_QuickStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_QuickStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=QuickStyle, get=getQuickStyle, set=setQuickStyle)

        SmartArtColor* getColor();
        %MethodCode
            ksoapi::SmartArtColor *prop = nullptr;
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

        PyObject* setColor(SmartArtColor *prop);
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

        MsoTriState getReverse();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Reverse(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reverse()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReverse(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Reverse(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Reverse()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Reverse, get=getReverse, set=setReverse)
    };
};
