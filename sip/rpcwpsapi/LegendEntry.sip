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
    struct LegendEntry : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Font(
            ChartFont **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_LegendKey(
            LegendKey **prop /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT prop) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        ChartFont* getFont();
        %MethodCode
            wpsapi::ChartFont *prop = nullptr;
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

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        LegendKey* getLegendKey();
        %MethodCode
            wpsapi::LegendKey *prop = nullptr;
            HRESULT hr = sipCpp->get_LegendKey(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LegendKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LegendKey, get=getLegendKey)

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

        double getLeft();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Left, get=getLeft)

        double getTop();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Top, get=getTop)

        double getWidth();
        %MethodCode
            double prop = 0;
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

        %Property(name=Width, get=getWidth)

        double getHeight();
        %MethodCode
            double prop = 0;
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

        %Property(name=Height, get=getHeight)

        ChartFormat* getFormat();
        %MethodCode
            wpsapi::ChartFormat *prop = nullptr;
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
