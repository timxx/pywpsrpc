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
    struct EffectParameters : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Direction(
            MsoAnimDirection *Direction /Out/) = 0;

        virtual HRESULT put_Direction(
            MsoAnimDirection Direction) = 0;

        virtual HRESULT get_Amount(
            single *Amount /Out/) = 0;

        virtual HRESULT put_Amount(
            single Amount) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_Color2(
            ColorFormat **Color2 /Out/) = 0;

        virtual HRESULT get_Relative(
            MsoTriState *Relative /Out/) = 0;

        virtual HRESULT put_Relative(
            MsoTriState Relative) = 0;

        virtual HRESULT get_FontName(
            BSTR *FontName /Out/) = 0;

        virtual HRESULT put_FontName(
            BSTR FontName) = 0;

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

        MsoAnimDirection getDirection();
        %MethodCode
            wppapi::MsoAnimDirection prop = (wppapi::MsoAnimDirection)0;
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

        PyObject* setDirection(MsoAnimDirection prop);
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

        single getAmount();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Amount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Amount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAmount(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Amount(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Amount()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Amount, get=getAmount, set=setAmount)

        single getSize();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Size(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Size()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSize(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Size(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Size()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Size, get=getSize, set=setSize)

        ColorFormat* getColor2();
        %MethodCode
            wppapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Color2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Color2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Color2, get=getColor2)

        MsoTriState getRelative();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Relative(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Relative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelative(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Relative(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Relative()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Relative, get=getRelative, set=setRelative)

        BSTR getFontName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FontName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FontName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFontName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FontName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FontName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FontName, get=getFontName, set=setFontName)
    };
};
