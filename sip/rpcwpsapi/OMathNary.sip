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
    struct OMathNary : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Sub(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Sup(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Char(
            short *prop /Out/) = 0;

        virtual HRESULT put_Char(
            short prop) = 0;

        virtual HRESULT get_Grow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Grow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SubSupLim(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SubSupLim(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideSub(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideSub(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideSup(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideSup(
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

        OMath* getSub();
        %MethodCode
            wpsapi::OMath *prop = nullptr;
            HRESULT hr = sipCpp->get_Sub(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sub()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sub, get=getSub)

        OMath* getSup();
        %MethodCode
            wpsapi::OMath *prop = nullptr;
            HRESULT hr = sipCpp->get_Sup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sup, get=getSup)

        OMath* getE();
        %MethodCode
            wpsapi::OMath *prop = nullptr;
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

        short getChar();
        %MethodCode
            short prop = 0;
            HRESULT hr = sipCpp->get_Char(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Char()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChar(short prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Char(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Char()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Char, get=getChar, set=setChar)

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

        VARIANT_BOOL getSubSupLim();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SubSupLim(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SubSupLim()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubSupLim(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SubSupLim(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SubSupLim()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SubSupLim, get=getSubSupLim, set=setSubSupLim)

        VARIANT_BOOL getHideSub();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HideSub(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HideSub()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHideSub(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HideSub(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HideSub()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HideSub, get=getHideSub, set=setHideSub)

        VARIANT_BOOL getHideSup();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HideSup(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HideSup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHideSup(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HideSup(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HideSup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HideSup, get=getHideSup, set=setHideSup)
    };
};
