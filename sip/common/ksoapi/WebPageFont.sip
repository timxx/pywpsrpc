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
    struct WebPageFont : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_ProportionalFont(
            BSTR *pstr /Out/) = 0;

        virtual HRESULT put_ProportionalFont(
            BSTR pstr) = 0;

        virtual HRESULT get_ProportionalFontSize(
            single *pf /Out/) = 0;

        virtual HRESULT put_ProportionalFontSize(
            single pf) = 0;

        virtual HRESULT get_FixedWidthFont(
            BSTR *pstr /Out/) = 0;

        virtual HRESULT put_FixedWidthFont(
            BSTR pstr) = 0;

        virtual HRESULT get_FixedWidthFontSize(
            single *pf /Out/) = 0;

        virtual HRESULT put_FixedWidthFontSize(
            single pf) = 0;

        BSTR getProportionalFont();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ProportionalFont(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProportionalFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProportionalFont(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProportionalFont(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProportionalFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProportionalFont, get=getProportionalFont, set=setProportionalFont)

        single getProportionalFontSize();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_ProportionalFontSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProportionalFontSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProportionalFontSize(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProportionalFontSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProportionalFontSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProportionalFontSize, get=getProportionalFontSize, set=setProportionalFontSize)

        BSTR getFixedWidthFont();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FixedWidthFont(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FixedWidthFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFixedWidthFont(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FixedWidthFont(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FixedWidthFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FixedWidthFont, get=getFixedWidthFont, set=setFixedWidthFont)

        single getFixedWidthFontSize();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_FixedWidthFontSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FixedWidthFontSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFixedWidthFontSize(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FixedWidthFontSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FixedWidthFontSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FixedWidthFontSize, get=getFixedWidthFontSize, set=setFixedWidthFontSize)
    };
};
