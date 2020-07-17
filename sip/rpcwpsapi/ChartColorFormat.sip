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
    struct ChartColorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_SchemeColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_SchemeColor(
            long prop) = 0;

        virtual HRESULT get_RGB(
            long *prop /Out/) = 0;

        virtual HRESULT get__Default(
            long *prop /Out/) = 0;

        virtual HRESULT get_Type(
            long *prop /Out/) = 0;

        long getSchemeColor();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SchemeColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SchemeColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSchemeColor(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SchemeColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SchemeColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SchemeColor, get=getSchemeColor, set=setSchemeColor)

        long getRGB();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RGB(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RGB()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RGB, get=getRGB)

        long get_Default();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get__Default(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Default()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Default, get=get_Default)

        long getType();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)
    };
};
