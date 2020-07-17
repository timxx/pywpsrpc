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
    struct IWorksheetView : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Sheet(
            _Worksheet **RHS /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Sheet((IDispatch**)&a0);
        %End

        virtual HRESULT get_DisplayGridlines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayGridlines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayFormulas(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayFormulas(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayHeadings(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHeadings(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayOutline(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayOutline(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayZeros(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayZeros(
            VARIANT_BOOL RHS) = 0;

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

        _Worksheet* getSheet();
        %MethodCode
            etapi::_Worksheet *prop = nullptr;
            HRESULT hr = sipCpp->get_Sheet((IDispatch**)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sheet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sheet, get=getSheet)

        VARIANT_BOOL getDisplayGridlines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayGridlines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayGridlines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayGridlines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayGridlines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayGridlines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayGridlines, get=getDisplayGridlines, set=setDisplayGridlines)

        VARIANT_BOOL getDisplayFormulas();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayFormulas(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFormulas()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayFormulas(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayFormulas(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayFormulas()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayFormulas, get=getDisplayFormulas, set=setDisplayFormulas)

        VARIANT_BOOL getDisplayHeadings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayHeadings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayHeadings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayHeadings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayHeadings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayHeadings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayHeadings, get=getDisplayHeadings, set=setDisplayHeadings)

        VARIANT_BOOL getDisplayOutline();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayOutline(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayOutline()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayOutline(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayOutline(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayOutline()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayOutline, get=getDisplayOutline, set=setDisplayOutline)

        VARIANT_BOOL getDisplayZeros();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayZeros(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayZeros()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayZeros(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayZeros(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayZeros()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayZeros, get=getDisplayZeros, set=setDisplayZeros)
    };
};
