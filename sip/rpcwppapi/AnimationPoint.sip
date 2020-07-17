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
    struct AnimationPoint : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Time(
            single *Time /Out/) = 0;

        virtual HRESULT put_Time(
            single Time) = 0;

        virtual HRESULT get_Value(
            VARIANT *Value /Out/) = 0;

        virtual HRESULT put_Value(
            VARIANT Value) = 0;

        virtual HRESULT get_Formula(
            BSTR *Formula /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR Formula) = 0;

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

        single getTime();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Time(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Time()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTime(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Time(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Time()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Time, get=getTime, set=setTime)

        VARIANT getValue();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Value(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setValue(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Value(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Value()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Value, get=getValue, set=setValue)

        BSTR getFormula();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Formula(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Formula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormula(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Formula(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Formula()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Formula, get=getFormula, set=setFormula)
    };
};
