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
    struct OMathDelim : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_BegChar(
            short *prop /Out/) = 0;

        virtual HRESULT put_BegChar(
            short prop) = 0;

        virtual HRESULT get_SepChar(
            short *prop /Out/) = 0;

        virtual HRESULT put_SepChar(
            short prop) = 0;

        virtual HRESULT get_EndChar(
            short *prop /Out/) = 0;

        virtual HRESULT put_EndChar(
            short prop) = 0;

        virtual HRESULT get_Grow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Grow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shape(
            WdOMathShapeType *prop /Out/) = 0;

        virtual HRESULT put_Shape(
            WdOMathShapeType prop) = 0;

        virtual HRESULT get_NoLeftChar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoLeftChar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NoRightChar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoRightChar(
            VARIANT_BOOL prop) = 0;

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

        OMathArgs* getE();
        %MethodCode
            wpsapi::OMathArgs *prop = nullptr;
            HRESULT hr = sipCpp->get_E(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_E()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=E, get=getE)

        short getBegChar();
        %MethodCode
            short prop = 0;
            HRESULT hr = sipCpp->get_BegChar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BegChar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBegChar(short prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BegChar(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BegChar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BegChar, get=getBegChar, set=setBegChar)

        short getSepChar();
        %MethodCode
            short prop = 0;
            HRESULT hr = sipCpp->get_SepChar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SepChar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSepChar(short prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SepChar(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SepChar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SepChar, get=getSepChar, set=setSepChar)

        short getEndChar();
        %MethodCode
            short prop = 0;
            HRESULT hr = sipCpp->get_EndChar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndChar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEndChar(short prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EndChar(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EndChar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EndChar, get=getEndChar, set=setEndChar)

        VARIANT_BOOL getGrow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Grow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Grow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGrow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Grow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Grow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Grow, get=getGrow, set=setGrow)

        WdOMathShapeType getShape();
        %MethodCode
            wpsapi::WdOMathShapeType prop = (wpsapi::WdOMathShapeType)0;
            HRESULT hr = sipCpp->get_Shape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShape(WdOMathShapeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Shape(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Shape()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Shape, get=getShape, set=setShape)

        VARIANT_BOOL getNoLeftChar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NoLeftChar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoLeftChar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoLeftChar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoLeftChar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoLeftChar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoLeftChar, get=getNoLeftChar, set=setNoLeftChar)

        VARIANT_BOOL getNoRightChar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NoRightChar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoRightChar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoRightChar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoRightChar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoRightChar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoRightChar, get=getNoRightChar, set=setNoRightChar)
    };
};
