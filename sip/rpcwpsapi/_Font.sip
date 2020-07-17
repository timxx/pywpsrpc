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
    struct _Font : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Duplicate(
            Font **prop /Out/) = 0;

        virtual HRESULT get_Bold(
            long *prop /Out/) = 0;

        virtual HRESULT put_Bold(
            long prop) = 0;

        virtual HRESULT get_Italic(
            long *prop /Out/) = 0;

        virtual HRESULT put_Italic(
            long prop) = 0;

        virtual HRESULT get_Hidden(
            long *prop /Out/) = 0;

        virtual HRESULT put_Hidden(
            long prop) = 0;

        virtual HRESULT get_SmallCaps(
            long *prop /Out/) = 0;

        virtual HRESULT put_SmallCaps(
            long prop) = 0;

        virtual HRESULT get_AllCaps(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllCaps(
            long prop) = 0;

        virtual HRESULT get_StrikeThrough(
            long *prop /Out/) = 0;

        virtual HRESULT put_StrikeThrough(
            long prop) = 0;

        virtual HRESULT get_DoubleStrikeThrough(
            long *prop /Out/) = 0;

        virtual HRESULT put_DoubleStrikeThrough(
            long prop) = 0;

        virtual HRESULT get_ColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_Subscript(
            long *prop /Out/) = 0;

        virtual HRESULT put_Subscript(
            long prop) = 0;

        virtual HRESULT get_Superscript(
            long *prop /Out/) = 0;

        virtual HRESULT put_Superscript(
            long prop) = 0;

        virtual HRESULT get_Underline(
            WdUnderline *prop /Out/) = 0;

        virtual HRESULT put_Underline(
            WdUnderline prop) = 0;

        virtual HRESULT get_Size(
            single *prop /Out/) = 0;

        virtual HRESULT put_Size(
            single prop) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_Position(
            long *prop /Out/) = 0;

        virtual HRESULT put_Position(
            long prop) = 0;

        virtual HRESULT get_Spacing(
            single *prop /Out/) = 0;

        virtual HRESULT put_Spacing(
            single prop) = 0;

        virtual HRESULT get_Scaling(
            long *prop /Out/) = 0;

        virtual HRESULT put_Scaling(
            long prop) = 0;

        virtual HRESULT get_Shadow(
            long *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            long prop) = 0;

        virtual HRESULT get_Outline(
            long *prop /Out/) = 0;

        virtual HRESULT put_Outline(
            long prop) = 0;

        virtual HRESULT get_Emboss(
            long *prop /Out/) = 0;

        virtual HRESULT put_Emboss(
            long prop) = 0;

        virtual HRESULT get_Kerning(
            single *prop /Out/) = 0;

        virtual HRESULT put_Kerning(
            single prop) = 0;

        virtual HRESULT get_Engrave(
            long *prop /Out/) = 0;

        virtual HRESULT put_Engrave(
            long prop) = 0;

        virtual HRESULT get_Animation(
            WdAnimation *prop /Out/) = 0;

        virtual HRESULT put_Animation(
            WdAnimation prop) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_EmphasisMark(
            WdEmphasisMark *prop /Out/) = 0;

        virtual HRESULT put_EmphasisMark(
            WdEmphasisMark prop) = 0;

        virtual HRESULT get_DisableCharacterSpaceGrid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisableCharacterSpaceGrid(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NameFarEast(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameFarEast(
            BSTR prop) = 0;

        virtual HRESULT get_NameAscii(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameAscii(
            BSTR prop) = 0;

        virtual HRESULT get_NameOther(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameOther(
            BSTR prop) = 0;

        virtual HRESULT Grow() = 0;

        virtual HRESULT Shrink() = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT SetAsTemplateDefault() = 0;

        virtual HRESULT get_Color(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_Color(
            WdColor prop) = 0;

        virtual HRESULT get_BoldBi(
            long *prop /Out/) = 0;

        virtual HRESULT put_BoldBi(
            long prop) = 0;

        virtual HRESULT get_ItalicBi(
            long *prop /Out/) = 0;

        virtual HRESULT put_ItalicBi(
            long prop) = 0;

        virtual HRESULT get_SizeBi(
            single *prop /Out/) = 0;

        virtual HRESULT put_SizeBi(
            single prop) = 0;

        virtual HRESULT get_NameBi(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameBi(
            BSTR prop) = 0;

        virtual HRESULT get_ColorIndexBi(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ColorIndexBi(
            WdColorIndex prop) = 0;

        virtual HRESULT get_DiacriticColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_DiacriticColor(
            WdColor prop) = 0;

        virtual HRESULT get_UnderlineColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_UnderlineColor(
            WdColor prop) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **prop /Out/) = 0;

        virtual HRESULT put_Glow(
            GlowFormat *prop) = 0;

        virtual HRESULT get_Reflection(
            ReflectionFormat **prop /Out/) = 0;

        virtual HRESULT put_Reflection(
            ReflectionFormat *prop) = 0;

        virtual HRESULT get_TextShadow(
            ShadowFormat **prop /Out/) = 0;

        virtual HRESULT put_TextShadow(
            ShadowFormat *prop) = 0;

        virtual HRESULT get_Fill(
            FillFormat **prop /Out/) = 0;

        virtual HRESULT put_Fill(
            FillFormat *prop) = 0;

        virtual HRESULT get_Line(
            LineFormat **prop /Out/) = 0;

        virtual HRESULT put_Line(
            LineFormat *prop) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **prop /Out/) = 0;

        virtual HRESULT put_ThreeD(
            ThreeDFormat *prop) = 0;

        virtual HRESULT get_TextColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_Ligatures(
            WdLigatures *prop /Out/) = 0;

        virtual HRESULT put_Ligatures(
            WdLigatures prop) = 0;

        virtual HRESULT get_NumberForm(
            WdNumberForm *prop /Out/) = 0;

        virtual HRESULT put_NumberForm(
            WdNumberForm prop) = 0;

        virtual HRESULT get_NumberSpacing(
            WdNumberSpacing *prop /Out/) = 0;

        virtual HRESULT put_NumberSpacing(
            WdNumberSpacing prop) = 0;

        virtual HRESULT get_ContextualAlternates(
            long *prop /Out/) = 0;

        virtual HRESULT put_ContextualAlternates(
            long prop) = 0;

        virtual HRESULT get_StylisticSet(
            WdStylisticSet *prop /Out/) = 0;

        virtual HRESULT put_StylisticSet(
            WdStylisticSet prop) = 0;

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

        Font* getDuplicate();
        %MethodCode
            wpsapi::Font *prop = nullptr;
            HRESULT hr = sipCpp->get_Duplicate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Duplicate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Duplicate, get=getDuplicate)

        long getBold();
        %MethodCode
            long prop = 0;
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

        PyObject* setBold(long prop);
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

        long getItalic();
        %MethodCode
            long prop = 0;
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

        PyObject* setItalic(long prop);
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

        long getHidden();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Hidden(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHidden(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Hidden(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Hidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Hidden, get=getHidden, set=setHidden)

        long getSmallCaps();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SmallCaps(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmallCaps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmallCaps(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SmallCaps(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SmallCaps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SmallCaps, get=getSmallCaps, set=setSmallCaps)

        long getAllCaps();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AllCaps(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllCaps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllCaps(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllCaps(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllCaps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllCaps, get=getAllCaps, set=setAllCaps)

        long getStrikeThrough();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_StrikeThrough(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrikeThrough()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrikeThrough(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrikeThrough(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrikeThrough()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrikeThrough, get=getStrikeThrough, set=setStrikeThrough)

        long getDoubleStrikeThrough();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DoubleStrikeThrough(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DoubleStrikeThrough()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDoubleStrikeThrough(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DoubleStrikeThrough(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DoubleStrikeThrough()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DoubleStrikeThrough, get=getDoubleStrikeThrough, set=setDoubleStrikeThrough)

        WdColorIndex getColorIndex();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_ColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColorIndex(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColorIndex, get=getColorIndex, set=setColorIndex)

        long getSubscript();
        %MethodCode
            long prop = 0;
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

        PyObject* setSubscript(long prop);
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

        long getSuperscript();
        %MethodCode
            long prop = 0;
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

        PyObject* setSuperscript(long prop);
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

        WdUnderline getUnderline();
        %MethodCode
            wpsapi::WdUnderline prop = (wpsapi::WdUnderline)0;
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

        PyObject* setUnderline(WdUnderline prop);
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

        single getSize();
        %MethodCode
            wpsapi::single prop = 0;
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

        long getPosition();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Position(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Position()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPosition(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Position(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Position()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Position, get=getPosition, set=setPosition)

        single getSpacing();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Spacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Spacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpacing(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Spacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Spacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Spacing, get=getSpacing, set=setSpacing)

        long getScaling();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Scaling(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Scaling()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScaling(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Scaling(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Scaling()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Scaling, get=getScaling, set=setScaling)

        long getShadow();
        %MethodCode
            long prop = 0;
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

        PyObject* setShadow(long prop);
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

        long getOutline();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Outline(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Outline()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutline(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Outline(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Outline()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Outline, get=getOutline, set=setOutline)

        long getEmboss();
        %MethodCode
            long prop = 0;
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

        PyObject* setEmboss(long prop);
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

        single getKerning();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Kerning(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Kerning()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKerning(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Kerning(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Kerning()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Kerning, get=getKerning, set=setKerning)

        long getEngrave();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Engrave(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Engrave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEngrave(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Engrave(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Engrave()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Engrave, get=getEngrave, set=setEngrave)

        WdAnimation getAnimation();
        %MethodCode
            wpsapi::WdAnimation prop = (wpsapi::WdAnimation)0;
            HRESULT hr = sipCpp->get_Animation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Animation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAnimation(WdAnimation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Animation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Animation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Animation, get=getAnimation, set=setAnimation)

        Borders* getBorders();
        %MethodCode
            wpsapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorders(Borders *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Borders(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Borders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Borders, get=getBorders, set=setBorders)

        Shading* getShading();
        %MethodCode
            wpsapi::Shading *prop = nullptr;
            HRESULT hr = sipCpp->get_Shading(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shading, get=getShading)

        WdEmphasisMark getEmphasisMark();
        %MethodCode
            wpsapi::WdEmphasisMark prop = (wpsapi::WdEmphasisMark)0;
            HRESULT hr = sipCpp->get_EmphasisMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmphasisMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmphasisMark(WdEmphasisMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmphasisMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmphasisMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmphasisMark, get=getEmphasisMark, set=setEmphasisMark)

        VARIANT_BOOL getDisableCharacterSpaceGrid();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisableCharacterSpaceGrid(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableCharacterSpaceGrid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableCharacterSpaceGrid(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableCharacterSpaceGrid(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableCharacterSpaceGrid()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableCharacterSpaceGrid, get=getDisableCharacterSpaceGrid, set=setDisableCharacterSpaceGrid)

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

        WdColor getColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
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

        PyObject* setColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Color(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Color()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Color, get=getColor, set=setColor)

        long getBoldBi();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BoldBi(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BoldBi()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBoldBi(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BoldBi(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BoldBi()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BoldBi, get=getBoldBi, set=setBoldBi)

        long getItalicBi();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ItalicBi(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ItalicBi()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setItalicBi(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ItalicBi(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ItalicBi()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ItalicBi, get=getItalicBi, set=setItalicBi)

        single getSizeBi();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SizeBi(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SizeBi()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSizeBi(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SizeBi(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SizeBi()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SizeBi, get=getSizeBi, set=setSizeBi)

        BSTR getNameBi();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NameBi(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameBi()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNameBi(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NameBi(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NameBi()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NameBi, get=getNameBi, set=setNameBi)

        WdColorIndex getColorIndexBi();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_ColorIndexBi(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorIndexBi()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColorIndexBi(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColorIndexBi(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColorIndexBi()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColorIndexBi, get=getColorIndexBi, set=setColorIndexBi)

        WdColor getDiacriticColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_DiacriticColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DiacriticColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDiacriticColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DiacriticColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DiacriticColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DiacriticColor, get=getDiacriticColor, set=setDiacriticColor)

        WdColor getUnderlineColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_UnderlineColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UnderlineColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUnderlineColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UnderlineColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UnderlineColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UnderlineColor, get=getUnderlineColor, set=setUnderlineColor)

        GlowFormat* getGlow();
        %MethodCode
            wpsapi::GlowFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Glow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Glow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGlow(GlowFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Glow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Glow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Glow, get=getGlow, set=setGlow)

        ReflectionFormat* getReflection();
        %MethodCode
            wpsapi::ReflectionFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Reflection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reflection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReflection(ReflectionFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Reflection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Reflection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Reflection, get=getReflection, set=setReflection)

        ShadowFormat* getTextShadow();
        %MethodCode
            wpsapi::ShadowFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_TextShadow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextShadow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextShadow(ShadowFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextShadow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextShadow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextShadow, get=getTextShadow, set=setTextShadow)

        FillFormat* getFill();
        %MethodCode
            wpsapi::FillFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Fill(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fill()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFill(FillFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Fill(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Fill()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Fill, get=getFill, set=setFill)

        LineFormat* getLine();
        %MethodCode
            wpsapi::LineFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Line(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Line()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLine(LineFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Line(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Line()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Line, get=getLine, set=setLine)

        ThreeDFormat* getThreeD();
        %MethodCode
            wpsapi::ThreeDFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ThreeD(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThreeD()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setThreeD(ThreeDFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ThreeD(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ThreeD()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ThreeD, get=getThreeD, set=setThreeD)

        ColorFormat* getTextColor();
        %MethodCode
            wpsapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_TextColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextColor, get=getTextColor)

        WdLigatures getLigatures();
        %MethodCode
            wpsapi::WdLigatures prop = (wpsapi::WdLigatures)0;
            HRESULT hr = sipCpp->get_Ligatures(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Ligatures()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLigatures(WdLigatures prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Ligatures(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Ligatures()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Ligatures, get=getLigatures, set=setLigatures)

        WdNumberForm getNumberForm();
        %MethodCode
            wpsapi::WdNumberForm prop = (wpsapi::WdNumberForm)0;
            HRESULT hr = sipCpp->get_NumberForm(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberForm()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberForm(WdNumberForm prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberForm(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberForm()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberForm, get=getNumberForm, set=setNumberForm)

        WdNumberSpacing getNumberSpacing();
        %MethodCode
            wpsapi::WdNumberSpacing prop = (wpsapi::WdNumberSpacing)0;
            HRESULT hr = sipCpp->get_NumberSpacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberSpacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberSpacing(WdNumberSpacing prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberSpacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberSpacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberSpacing, get=getNumberSpacing, set=setNumberSpacing)

        long getContextualAlternates();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ContextualAlternates(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContextualAlternates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setContextualAlternates(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ContextualAlternates(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ContextualAlternates()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ContextualAlternates, get=getContextualAlternates, set=setContextualAlternates)

        WdStylisticSet getStylisticSet();
        %MethodCode
            wpsapi::WdStylisticSet prop = (wpsapi::WdStylisticSet)0;
            HRESULT hr = sipCpp->get_StylisticSet(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StylisticSet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStylisticSet(WdStylisticSet prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StylisticSet(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StylisticSet()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StylisticSet, get=getStylisticSet, set=setStylisticSet)
    };
};
