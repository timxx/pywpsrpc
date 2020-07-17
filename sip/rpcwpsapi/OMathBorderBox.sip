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
    struct OMathBorderBox : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_HideTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideTop(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideBot(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideBot(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideLeft(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideLeft(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideRight(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideRight(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeH(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeH(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeV(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeV(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeBLTR(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeBLTR(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeTLBR(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeTLBR(
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

        VARIANT_BOOL getHideTop();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HideTop(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HideTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHideTop(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HideTop(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HideTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HideTop, get=getHideTop, set=setHideTop)

        VARIANT_BOOL getHideBot();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HideBot(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HideBot()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHideBot(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HideBot(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HideBot()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HideBot, get=getHideBot, set=setHideBot)

        VARIANT_BOOL getHideLeft();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HideLeft(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HideLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHideLeft(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HideLeft(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HideLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HideLeft, get=getHideLeft, set=setHideLeft)

        VARIANT_BOOL getHideRight();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HideRight(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HideRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHideRight(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HideRight(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HideRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HideRight, get=getHideRight, set=setHideRight)

        VARIANT_BOOL getStrikeH();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StrikeH(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrikeH()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrikeH(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrikeH(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrikeH()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrikeH, get=getStrikeH, set=setStrikeH)

        VARIANT_BOOL getStrikeV();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StrikeV(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrikeV()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrikeV(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrikeV(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrikeV()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrikeV, get=getStrikeV, set=setStrikeV)

        VARIANT_BOOL getStrikeBLTR();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StrikeBLTR(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrikeBLTR()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrikeBLTR(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrikeBLTR(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrikeBLTR()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrikeBLTR, get=getStrikeBLTR, set=setStrikeBLTR)

        VARIANT_BOOL getStrikeTLBR();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StrikeTLBR(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrikeTLBR()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrikeTLBR(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrikeTLBR(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrikeTLBR()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrikeTLBR, get=getStrikeTLBR, set=setStrikeTLBR)
    };
};
