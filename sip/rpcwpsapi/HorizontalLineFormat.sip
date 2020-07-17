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
    struct HorizontalLineFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_PercentWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_PercentWidth(
            single prop) = 0;

        virtual HRESULT get_NoShade(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoShade(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Alignment(
            WdHorizontalLineAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdHorizontalLineAlignment prop) = 0;

        virtual HRESULT get_WidthType(
            WdHorizontalLineWidthType *prop /Out/) = 0;

        virtual HRESULT put_WidthType(
            WdHorizontalLineWidthType prop) = 0;

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

        single getPercentWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_PercentWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PercentWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPercentWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PercentWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PercentWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PercentWidth, get=getPercentWidth, set=setPercentWidth)

        VARIANT_BOOL getNoShade();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NoShade(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoShade()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoShade(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoShade(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoShade()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoShade, get=getNoShade, set=setNoShade)

        WdHorizontalLineAlignment getAlignment();
        %MethodCode
            wpsapi::WdHorizontalLineAlignment prop = (wpsapi::WdHorizontalLineAlignment)0;
            HRESULT hr = sipCpp->get_Alignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Alignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlignment(WdHorizontalLineAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Alignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Alignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Alignment, get=getAlignment, set=setAlignment)

        WdHorizontalLineWidthType getWidthType();
        %MethodCode
            wpsapi::WdHorizontalLineWidthType prop = (wpsapi::WdHorizontalLineWidthType)0;
            HRESULT hr = sipCpp->get_WidthType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WidthType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidthType(WdHorizontalLineWidthType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WidthType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WidthType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WidthType, get=getWidthType, set=setWidthType)
    };
};
