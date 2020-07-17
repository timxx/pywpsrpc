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
    struct RulerLevel2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_FirstMargin(
            single *FirstMargin /Out/) = 0;

        virtual HRESULT put_FirstMargin(
            single FirstMargin) = 0;

        virtual HRESULT get_LeftMargin(
            single *LeftMargin /Out/) = 0;

        virtual HRESULT put_LeftMargin(
            single LeftMargin) = 0;

        single getFirstMargin();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_FirstMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstMargin(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstMargin, get=getFirstMargin, set=setFirstMargin)

        single getLeftMargin();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftMargin(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftMargin, get=getLeftMargin, set=setLeftMargin)
    };
};
