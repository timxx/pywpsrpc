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
    struct INegativeBarFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ColorType(
            XlDataBarNegativeColorType *RHS /Out/) = 0;

        virtual HRESULT put_ColorType(
            XlDataBarNegativeColorType RHS) = 0;

        virtual HRESULT get_BorderColorType(
            XlDataBarNegativeColorType *RHS /Out/) = 0;

        virtual HRESULT put_BorderColorType(
            XlDataBarNegativeColorType RHS) = 0;

        virtual HRESULT get_Color(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BorderColor(
            IDispatch **RHS /Out/) = 0;

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

        XlDataBarNegativeColorType getColorType();
        %MethodCode
            etapi::XlDataBarNegativeColorType prop = (etapi::XlDataBarNegativeColorType)0;
            HRESULT hr = sipCpp->get_ColorType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColorType(XlDataBarNegativeColorType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColorType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColorType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColorType, get=getColorType, set=setColorType)

        XlDataBarNegativeColorType getBorderColorType();
        %MethodCode
            etapi::XlDataBarNegativeColorType prop = (etapi::XlDataBarNegativeColorType)0;
            HRESULT hr = sipCpp->get_BorderColorType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BorderColorType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorderColorType(XlDataBarNegativeColorType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BorderColorType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BorderColorType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BorderColorType, get=getBorderColorType, set=setBorderColorType)

        IDispatch* getColor();
        %MethodCode
            IDispatch *prop = nullptr;
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

        IDispatch* getBorderColor();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_BorderColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BorderColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BorderColor, get=getBorderColor)
    };
};
