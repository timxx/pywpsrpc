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
    struct TextColumn2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Number(
            int *Number /Out/) = 0;

        virtual HRESULT put_Number(
            int Number) = 0;

        virtual HRESULT get_Spacing(
            single *Spacing /Out/) = 0;

        virtual HRESULT put_Spacing(
            single Spacing) = 0;

        virtual HRESULT get_TextDirection(
            MsoTextDirection *Direction /Out/) = 0;

        virtual HRESULT put_TextDirection(
            MsoTextDirection Direction) = 0;

        int getNumber();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Number(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Number()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumber(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Number(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Number()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Number, get=getNumber, set=setNumber)

        single getSpacing();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_Spacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Spacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpacing(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Spacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Spacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Spacing, get=getSpacing, set=setSpacing)

        MsoTextDirection getTextDirection();
        %MethodCode
            ksoapi::MsoTextDirection prop = (ksoapi::MsoTextDirection)0;
            HRESULT hr = sipCpp->get_TextDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextDirection(MsoTextDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextDirection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextDirection, get=getTextDirection, set=setTextDirection)
    };
};
