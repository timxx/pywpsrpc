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
    struct GlowFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Radius(
            single *prop /Out/) = 0;

        virtual HRESULT put_Radius(
            single prop) = 0;

        virtual HRESULT get_Color(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Transparency(
            single *prop /Out/) = 0;

        virtual HRESULT put_Transparency(
            single prop) = 0;

        single getRadius();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Radius(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Radius()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRadius(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Radius(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Radius()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Radius, get=getRadius, set=setRadius)

        ColorFormat* getColor();
        %MethodCode
            wpsapi::ColorFormat *prop = nullptr;
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

        %Property(name=Color, get=getColor)

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

        single getTransparency();
        %MethodCode
            wpsapi::single prop = 0;
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
    };
};
