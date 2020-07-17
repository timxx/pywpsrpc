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
    struct FilterEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Type(
            MsoAnimFilterEffectType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoAnimFilterEffectType Type) = 0;

        virtual HRESULT get_Subtype(
            MsoAnimFilterEffectSubtype *Subtype /Out/) = 0;

        virtual HRESULT put_Subtype(
            MsoAnimFilterEffectSubtype Subtype) = 0;

        virtual HRESULT get_Reveal(
            MsoTriState *Reveal /Out/) = 0;

        virtual HRESULT put_Reveal(
            MsoTriState Reveal) = 0;

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

        MsoAnimFilterEffectType getType();
        %MethodCode
            wppapi::MsoAnimFilterEffectType prop = (wppapi::MsoAnimFilterEffectType)0;
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

        PyObject* setType(MsoAnimFilterEffectType prop);
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

        MsoAnimFilterEffectSubtype getSubtype();
        %MethodCode
            wppapi::MsoAnimFilterEffectSubtype prop = (wppapi::MsoAnimFilterEffectSubtype)0;
            HRESULT hr = sipCpp->get_Subtype(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Subtype()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubtype(MsoAnimFilterEffectSubtype prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Subtype(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Subtype()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Subtype, get=getSubtype, set=setSubtype)

        MsoTriState getReveal();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Reveal(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reveal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReveal(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Reveal(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Reveal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Reveal, get=getReveal, set=setReveal)
    };
};
