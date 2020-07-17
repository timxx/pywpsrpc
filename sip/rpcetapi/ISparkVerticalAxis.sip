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
    struct ISparkVerticalAxis : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_MinScaleType(
            XlSparkScale *RHS /Out/) = 0;

        virtual HRESULT put_MinScaleType(
            XlSparkScale RHS) = 0;

        virtual HRESULT get_CustomMinScaleValue(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CustomMinScaleValue(
            VARIANT RHS) = 0;

        virtual HRESULT get_MaxScaleType(
            XlSparkScale *RHS /Out/) = 0;

        virtual HRESULT put_MaxScaleType(
            XlSparkScale RHS) = 0;

        virtual HRESULT get_CustomMaxScaleValue(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CustomMaxScaleValue(
            VARIANT RHS) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        XlSparkScale getMinScaleType();
        %MethodCode
            etapi::XlSparkScale prop = (etapi::XlSparkScale)0;
            HRESULT hr = sipCpp->get_MinScaleType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinScaleType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMinScaleType(XlSparkScale prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MinScaleType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MinScaleType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MinScaleType, get=getMinScaleType, set=setMinScaleType)

        VARIANT getCustomMinScaleValue();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CustomMinScaleValue(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomMinScaleValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCustomMinScaleValue(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CustomMinScaleValue(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CustomMinScaleValue()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CustomMinScaleValue, get=getCustomMinScaleValue, set=setCustomMinScaleValue)

        XlSparkScale getMaxScaleType();
        %MethodCode
            etapi::XlSparkScale prop = (etapi::XlSparkScale)0;
            HRESULT hr = sipCpp->get_MaxScaleType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MaxScaleType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMaxScaleType(XlSparkScale prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MaxScaleType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MaxScaleType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MaxScaleType, get=getMaxScaleType, set=setMaxScaleType)

        VARIANT getCustomMaxScaleValue();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CustomMaxScaleValue(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomMaxScaleValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCustomMaxScaleValue(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CustomMaxScaleValue(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CustomMaxScaleValue()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CustomMaxScaleValue, get=getCustomMaxScaleValue, set=setCustomMaxScaleValue)
    };
};
