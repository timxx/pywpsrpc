/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct ISpeech : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Speak(
            BSTR Text,
            VARIANT SpeakAsync = argMissing2(),
            VARIANT SpeakXML = argMissing2(),
            VARIANT Purge = argMissing2()) = 0;

        virtual HRESULT get_Direction(
            XlSpeakDirection *RHS /Out/) = 0;

        virtual HRESULT put_Direction(
            XlSpeakDirection RHS) = 0;

        virtual HRESULT get_SpeakCellOnEnter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SpeakCellOnEnter(
            VARIANT_BOOL RHS) = 0;

        XlSpeakDirection getDirection();
        %MethodCode
            etapi::XlSpeakDirection prop = (etapi::XlSpeakDirection)0;
            HRESULT hr = sipCpp->get_Direction(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Direction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDirection(XlSpeakDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Direction(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Direction()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Direction, get=getDirection, set=setDirection)

        VARIANT_BOOL getSpeakCellOnEnter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SpeakCellOnEnter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpeakCellOnEnter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpeakCellOnEnter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpeakCellOnEnter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpeakCellOnEnter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpeakCellOnEnter, get=getSpeakCellOnEnter, set=setSpeakCellOnEnter)
    };
};
