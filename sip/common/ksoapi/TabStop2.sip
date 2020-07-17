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
    struct TabStop2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Clear() = 0;

        virtual HRESULT get_Position(
            single *Position /Out/) = 0;

        virtual HRESULT put_Position(
            single Position) = 0;

        virtual HRESULT get_Type(
            MsoTabStopType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoTabStopType Type) = 0;

        single getPosition();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_Position(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Position()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPosition(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Position(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Position()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Position, get=getPosition, set=setPosition)

        MsoTabStopType getType();
        %MethodCode
            ksoapi::MsoTabStopType prop = (ksoapi::MsoTabStopType)0;
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

        PyObject* setType(MsoTabStopType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)
    };
};
