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
    struct OMathPhantom : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Show(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Show(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ZeroWid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ZeroWid(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ZeroAsc(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ZeroAsc(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ZeroDesc(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ZeroDesc(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Transp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Transp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Smash(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Smash(
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

        VARIANT_BOOL getShow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Show(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Show()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Show(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Show()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Show, get=getShow, set=setShow)

        VARIANT_BOOL getZeroWid();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ZeroWid(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ZeroWid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setZeroWid(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ZeroWid(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ZeroWid()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ZeroWid, get=getZeroWid, set=setZeroWid)

        VARIANT_BOOL getZeroAsc();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ZeroAsc(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ZeroAsc()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setZeroAsc(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ZeroAsc(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ZeroAsc()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ZeroAsc, get=getZeroAsc, set=setZeroAsc)

        VARIANT_BOOL getZeroDesc();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ZeroDesc(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ZeroDesc()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setZeroDesc(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ZeroDesc(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ZeroDesc()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ZeroDesc, get=getZeroDesc, set=setZeroDesc)

        VARIANT_BOOL getTransp();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Transp(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Transp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTransp(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Transp(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Transp()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Transp, get=getTransp, set=setTransp)

        VARIANT_BOOL getSmash();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Smash(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Smash()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmash(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Smash(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Smash()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Smash, get=getSmash, set=setSmash)
    };
};
