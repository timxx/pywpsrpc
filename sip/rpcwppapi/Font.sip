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
    struct Font : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Color(
            ColorFormat **Color /Out/) = 0;

        virtual HRESULT get_Bold(
            MsoTriState *Bold /Out/) = 0;

        virtual HRESULT put_Bold(
            MsoTriState Bold) = 0;

        virtual HRESULT get_Italic(
            MsoTriState *Italic /Out/) = 0;

        virtual HRESULT put_Italic(
            MsoTriState Italic) = 0;

        virtual HRESULT get_Shadow(
            MsoTriState *Shadow /Out/) = 0;

        virtual HRESULT put_Shadow(
            MsoTriState Shadow) = 0;

        virtual HRESULT get_Emboss(
            MsoTriState *Emboss /Out/) = 0;

        virtual HRESULT put_Emboss(
            MsoTriState Emboss) = 0;

        virtual HRESULT get_Underline(
            MsoTriState *Underline /Out/) = 0;

        virtual HRESULT put_Underline(
            MsoTriState Underline) = 0;

        virtual HRESULT get_Subscript(
            MsoTriState *Subscript /Out/) = 0;

        virtual HRESULT put_Subscript(
            MsoTriState Subscript) = 0;

        virtual HRESULT get_Superscript(
            MsoTriState *Superscript /Out/) = 0;

        virtual HRESULT put_Superscript(
            MsoTriState Superscript) = 0;

        virtual HRESULT get_BaselineOffset(
            single *BaselineOffset /Out/) = 0;

        virtual HRESULT put_BaselineOffset(
            single BaselineOffset) = 0;

        virtual HRESULT get_Embedded(
            MsoTriState *Embedded /Out/) = 0;

        virtual HRESULT get_Embeddable(
            MsoTriState *Embeddable /Out/) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT get_NameFarEast(
            BSTR *NameFarEast /Out/) = 0;

        virtual HRESULT put_NameFarEast(
            BSTR NameFarEast) = 0;

        virtual HRESULT get_NameAscii(
            BSTR *NameAscii /Out/) = 0;

        virtual HRESULT put_NameAscii(
            BSTR NameAscii) = 0;

        virtual HRESULT get_AutoRotateNumbers(
            MsoTriState *AutoRotateNumbers /Out/) = 0;

        virtual HRESULT put_AutoRotateNumbers(
            MsoTriState AutoRotateNumbers) = 0;

        virtual HRESULT get_NameOther(
            BSTR *NameOther /Out/) = 0;

        virtual HRESULT put_NameOther(
            BSTR NameOther) = 0;

        virtual HRESULT get_NameComplexScript(
            BSTR *NameComplexScript /Out/) = 0;

        virtual HRESULT put_NameComplexScript(
            BSTR NameComplexScript) = 0;

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

        ColorFormat* getColor();
        %MethodCode
            wppapi::ColorFormat *prop = nullptr;
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

        MsoTriState getBold();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Bold(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bold()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBold(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Bold(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Bold()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Bold, get=getBold, set=setBold)

        MsoTriState getItalic();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Italic(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Italic()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setItalic(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Italic(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Italic()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Italic, get=getItalic, set=setItalic)

        MsoTriState getShadow();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Shadow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shadow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShadow(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Shadow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Shadow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Shadow, get=getShadow, set=setShadow)

        MsoTriState getEmboss();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Emboss(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Emboss()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmboss(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Emboss(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Emboss()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Emboss, get=getEmboss, set=setEmboss)

        MsoTriState getUnderline();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Underline(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Underline()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUnderline(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Underline(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Underline()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Underline, get=getUnderline, set=setUnderline)

        MsoTriState getSubscript();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Subscript(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Subscript()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubscript(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Subscript(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Subscript()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Subscript, get=getSubscript, set=setSubscript)

        MsoTriState getSuperscript();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Superscript(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Superscript()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuperscript(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Superscript(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Superscript()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Superscript, get=getSuperscript, set=setSuperscript)

        single getBaselineOffset();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_BaselineOffset(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BaselineOffset()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBaselineOffset(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BaselineOffset(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BaselineOffset()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BaselineOffset, get=getBaselineOffset, set=setBaselineOffset)

        MsoTriState getEmbedded();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Embedded(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Embedded()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Embedded, get=getEmbedded)

        MsoTriState getEmbeddable();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Embeddable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Embeddable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Embeddable, get=getEmbeddable)

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

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        BSTR getNameFarEast();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NameFarEast(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameFarEast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNameFarEast(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NameFarEast(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NameFarEast()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NameFarEast, get=getNameFarEast, set=setNameFarEast)

        BSTR getNameAscii();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NameAscii(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameAscii()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNameAscii(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NameAscii(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NameAscii()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NameAscii, get=getNameAscii, set=setNameAscii)

        MsoTriState getAutoRotateNumbers();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AutoRotateNumbers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoRotateNumbers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoRotateNumbers(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoRotateNumbers(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoRotateNumbers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoRotateNumbers, get=getAutoRotateNumbers, set=setAutoRotateNumbers)

        BSTR getNameOther();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NameOther(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameOther()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNameOther(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NameOther(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NameOther()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NameOther, get=getNameOther, set=setNameOther)

        BSTR getNameComplexScript();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NameComplexScript(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameComplexScript()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNameComplexScript(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NameComplexScript(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NameComplexScript()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NameComplexScript, get=getNameComplexScript, set=setNameComplexScript)
    };
};
