/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct Font2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Bold(
            MsoTriState *Bold /Out/) = 0;

        virtual HRESULT put_Bold(
            MsoTriState Bold) = 0;

        virtual HRESULT get_Italic(
            MsoTriState *Italic /Out/) = 0;

        virtual HRESULT put_Italic(
            MsoTriState Italic) = 0;

        virtual HRESULT get_Strike(
            MsoTextStrike *Strike /Out/) = 0;

        virtual HRESULT put_Strike(
            MsoTextStrike Strike) = 0;

        virtual HRESULT get_Caps(
            MsoTextCaps *Caps /Out/) = 0;

        virtual HRESULT put_Caps(
            MsoTextCaps Caps) = 0;

        virtual HRESULT get_AutorotateNumbers(
            MsoTriState *RotateNumbers /Out/) = 0;

        virtual HRESULT put_AutorotateNumbers(
            MsoTriState RotateNumbers) = 0;

        virtual HRESULT get_BaselineOffset(
            single *Offset /Out/) = 0;

        virtual HRESULT put_BaselineOffset(
            single Offset) = 0;

        virtual HRESULT get_Kerning(
            single *KerningSize /Out/) = 0;

        virtual HRESULT put_Kerning(
            single KerningSize) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_Spacing(
            single *Spacing /Out/) = 0;

        virtual HRESULT put_Spacing(
            single Spacing) = 0;

        virtual HRESULT get_UnderlineStyle(
            MsoTextUnderlineType *Style /Out/) = 0;

        virtual HRESULT put_UnderlineStyle(
            MsoTextUnderlineType Style) = 0;

        virtual HRESULT get_Allcaps(
            MsoTriState *Allcaps /Out/) = 0;

        virtual HRESULT put_Allcaps(
            MsoTriState Allcaps) = 0;

        virtual HRESULT get_DoubleStrikeThrough(
            MsoTriState *DoubleStrikeThrough /Out/) = 0;

        virtual HRESULT put_DoubleStrikeThrough(
            MsoTriState DoubleStrikeThrough) = 0;

        virtual HRESULT get_Equalize(
            MsoTriState *Equalize /Out/) = 0;

        virtual HRESULT put_Equalize(
            MsoTriState Equalize) = 0;

        virtual HRESULT get_Fill(
            FillFormat **Fill /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **Glow /Out/) = 0;

        virtual HRESULT get_Reflection(
            ReflectionFormat **Reflection /Out/) = 0;

        virtual HRESULT get_Line(
            LineFormat **Line /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **Shadow /Out/) = 0;

        virtual HRESULT get_Highlight(
            ColorFormat **Highlight /Out/) = 0;

        virtual HRESULT get_UnderlineColor(
            ColorFormat **UnderlineColor /Out/) = 0;

        virtual HRESULT get_Smallcaps(
            MsoTriState *Smallcaps /Out/) = 0;

        virtual HRESULT put_Smallcaps(
            MsoTriState Smallcaps) = 0;

        virtual HRESULT get_SoftEdgeFormat(
            MsoSoftEdgeType *SoftEdgeFormat /Out/) = 0;

        virtual HRESULT put_SoftEdgeFormat(
            MsoSoftEdgeType SoftEdgeFormat) = 0;

        virtual HRESULT get_StrikeThrough(
            MsoTriState *StrikeThrough /Out/) = 0;

        virtual HRESULT put_StrikeThrough(
            MsoTriState StrikeThrough) = 0;

        virtual HRESULT get_Subscript(
            MsoTriState *Subscript /Out/) = 0;

        virtual HRESULT put_Subscript(
            MsoTriState Subscript) = 0;

        virtual HRESULT get_Superscript(
            MsoTriState *Superscript /Out/) = 0;

        virtual HRESULT put_Superscript(
            MsoTriState Superscript) = 0;

        virtual HRESULT get_WordArtformat(
            MsoPresetTextEffect *WordArtformat /Out/) = 0;

        virtual HRESULT put_WordArtformat(
            MsoPresetTextEffect WordArtformat) = 0;

        virtual HRESULT get_Embeddable(
            MsoTriState *Embeddable /Out/) = 0;

        virtual HRESULT get_Embedded(
            MsoTriState *Embedded /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT get_NameAscii(
            BSTR *NameAscii /Out/) = 0;

        virtual HRESULT put_NameAscii(
            BSTR NameAscii) = 0;

        virtual HRESULT get_NameComplexScript(
            BSTR *NameComplexScript /Out/) = 0;

        virtual HRESULT put_NameComplexScript(
            BSTR NameComplexScript) = 0;

        virtual HRESULT get_NameFarEast(
            BSTR *NameFarEast /Out/) = 0;

        virtual HRESULT put_NameFarEast(
            BSTR NameFarEast) = 0;

        virtual HRESULT get_NameOther(
            BSTR *NameOther /Out/) = 0;

        virtual HRESULT put_NameOther(
            BSTR NameOther) = 0;

        MsoTriState getBold();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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

        MsoTextStrike getStrike();
        %MethodCode
            ksoapi::MsoTextStrike prop = (ksoapi::MsoTextStrike)0;
            HRESULT hr = sipCpp->get_Strike(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Strike()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrike(MsoTextStrike prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Strike(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Strike()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Strike, get=getStrike, set=setStrike)

        MsoTextCaps getCaps();
        %MethodCode
            ksoapi::MsoTextCaps prop = (ksoapi::MsoTextCaps)0;
            HRESULT hr = sipCpp->get_Caps(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Caps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCaps(MsoTextCaps prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Caps(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Caps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Caps, get=getCaps, set=setCaps)

        MsoTriState getAutorotateNumbers();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AutorotateNumbers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutorotateNumbers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutorotateNumbers(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutorotateNumbers(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutorotateNumbers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutorotateNumbers, get=getAutorotateNumbers, set=setAutorotateNumbers)

        single getBaselineOffset();
        %MethodCode
            ksoapi::single prop = 0;
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

        single getKerning();
        %MethodCode
            ksoapi::single prop = 0;
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

        single getSize();
        %MethodCode
            ksoapi::single prop = 0;
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

        single getSpacing();
        %MethodCode
            ksoapi::single prop = 0;
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

        MsoTextUnderlineType getUnderlineStyle();
        %MethodCode
            ksoapi::MsoTextUnderlineType prop = (ksoapi::MsoTextUnderlineType)0;
            HRESULT hr = sipCpp->get_UnderlineStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UnderlineStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUnderlineStyle(MsoTextUnderlineType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UnderlineStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UnderlineStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UnderlineStyle, get=getUnderlineStyle, set=setUnderlineStyle)

        MsoTriState getAllcaps();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Allcaps(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Allcaps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllcaps(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Allcaps(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Allcaps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Allcaps, get=getAllcaps, set=setAllcaps)

        MsoTriState getDoubleStrikeThrough();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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

        PyObject* setDoubleStrikeThrough(MsoTriState prop);
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

        MsoTriState getEqualize();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Equalize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Equalize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEqualize(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Equalize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Equalize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Equalize, get=getEqualize, set=setEqualize)

        FillFormat* getFill();
        %MethodCode
            ksoapi::FillFormat *prop = nullptr;
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

        %Property(name=Fill, get=getFill)

        GlowFormat* getGlow();
        %MethodCode
            ksoapi::GlowFormat *prop = nullptr;
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

        %Property(name=Glow, get=getGlow)

        ReflectionFormat* getReflection();
        %MethodCode
            ksoapi::ReflectionFormat *prop = nullptr;
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

        %Property(name=Reflection, get=getReflection)

        LineFormat* getLine();
        %MethodCode
            ksoapi::LineFormat *prop = nullptr;
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

        %Property(name=Line, get=getLine)

        ShadowFormat* getShadow();
        %MethodCode
            ksoapi::ShadowFormat *prop = nullptr;
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

        %Property(name=Shadow, get=getShadow)

        ColorFormat* getHighlight();
        %MethodCode
            ksoapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Highlight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Highlight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Highlight, get=getHighlight)

        ColorFormat* getUnderlineColor();
        %MethodCode
            ksoapi::ColorFormat *prop = nullptr;
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

        %Property(name=UnderlineColor, get=getUnderlineColor)

        MsoTriState getSmallcaps();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Smallcaps(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Smallcaps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmallcaps(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Smallcaps(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Smallcaps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Smallcaps, get=getSmallcaps, set=setSmallcaps)

        MsoSoftEdgeType getSoftEdgeFormat();
        %MethodCode
            ksoapi::MsoSoftEdgeType prop = (ksoapi::MsoSoftEdgeType)0;
            HRESULT hr = sipCpp->get_SoftEdgeFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SoftEdgeFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSoftEdgeFormat(MsoSoftEdgeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SoftEdgeFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SoftEdgeFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SoftEdgeFormat, get=getSoftEdgeFormat, set=setSoftEdgeFormat)

        MsoTriState getStrikeThrough();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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

        PyObject* setStrikeThrough(MsoTriState prop);
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

        MsoTriState getSubscript();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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

        MsoPresetTextEffect getWordArtformat();
        %MethodCode
            ksoapi::MsoPresetTextEffect prop = (ksoapi::MsoPresetTextEffect)0;
            HRESULT hr = sipCpp->get_WordArtformat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WordArtformat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWordArtformat(MsoPresetTextEffect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WordArtformat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WordArtformat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WordArtformat, get=getWordArtformat, set=setWordArtformat)

        MsoTriState getEmbeddable();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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

        MsoTriState getEmbedded();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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
    };
};
