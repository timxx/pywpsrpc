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
    struct ErrorBars : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Border(
            ChartBorder **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_EndStyle(
            XlEndStyleCap *RHS /Out/) = 0;

        virtual HRESULT put_EndStyle(
            XlEndStyleCap RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Name, get=getName)

        ChartBorder* getBorder();
        %MethodCode
            wppapi::ChartBorder *prop = nullptr;
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

        XlEndStyleCap getEndStyle();
        %MethodCode
            wppapi::XlEndStyleCap prop = (wppapi::XlEndStyleCap)0;
            HRESULT hr = sipCpp->get_EndStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEndStyle(XlEndStyleCap prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EndStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EndStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EndStyle, get=getEndStyle, set=setEndStyle)

        ChartFormat* getFormat();
        %MethodCode
            wppapi::ChartFormat *prop = nullptr;
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

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
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
    };
};
