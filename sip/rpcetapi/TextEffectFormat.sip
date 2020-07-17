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
    struct TextEffectFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT ToggleVerticalText() = 0;

        virtual HRESULT get_Alignment(
            MsoTextEffectAlignment *Alignment /Out/) = 0;

        virtual HRESULT put_Alignment(
            MsoTextEffectAlignment Alignment) = 0;

        virtual HRESULT get_FontBold(
            MsoTriState *FontBold /Out/) = 0;

        virtual HRESULT put_FontBold(
            MsoTriState FontBold) = 0;

        virtual HRESULT get_FontItalic(
            MsoTriState *FontItalic /Out/) = 0;

        virtual HRESULT put_FontItalic(
            MsoTriState FontItalic) = 0;

        virtual HRESULT get_FontName(
            BSTR *FontName /Out/) = 0;

        virtual HRESULT put_FontName(
            BSTR FontName) = 0;

        virtual HRESULT get_FontSize(
            single *FontSize /Out/) = 0;

        virtual HRESULT put_FontSize(
            single FontSize) = 0;

        virtual HRESULT get_KernedPairs(
            MsoTriState *KernedPairs /Out/) = 0;

        virtual HRESULT put_KernedPairs(
            MsoTriState KernedPairs) = 0;

        virtual HRESULT get_NormalizedHeight(
            MsoTriState *NormalizedHeight /Out/) = 0;

        virtual HRESULT put_NormalizedHeight(
            MsoTriState NormalizedHeight) = 0;

        virtual HRESULT get_PresetShape(
            MsoPresetTextEffectShape *PresetShape /Out/) = 0;

        virtual HRESULT put_PresetShape(
            MsoPresetTextEffectShape PresetShape) = 0;

        virtual HRESULT get_PresetTextEffect(
            MsoPresetTextEffect *Preset /Out/) = 0;

        virtual HRESULT put_PresetTextEffect(
            MsoPresetTextEffect Preset) = 0;

        virtual HRESULT get_RotatedChars(
            MsoTriState *RotatedChars /Out/) = 0;

        virtual HRESULT put_RotatedChars(
            MsoTriState RotatedChars) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR Text) = 0;

        virtual HRESULT get_Tracking(
            single *Tracking /Out/) = 0;

        virtual HRESULT put_Tracking(
            single Tracking) = 0;

        MsoTextEffectAlignment getAlignment();
        %MethodCode
            etapi::MsoTextEffectAlignment prop = (etapi::MsoTextEffectAlignment)0;
            HRESULT hr = sipCpp->get_Alignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Alignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlignment(MsoTextEffectAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Alignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Alignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Alignment, get=getAlignment, set=setAlignment)

        MsoTriState getFontBold();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_FontBold(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FontBold()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFontBold(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FontBold(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FontBold()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FontBold, get=getFontBold, set=setFontBold)

        MsoTriState getFontItalic();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_FontItalic(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FontItalic()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFontItalic(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FontItalic(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FontItalic()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FontItalic, get=getFontItalic, set=setFontItalic)

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

        single getFontSize();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_FontSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FontSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFontSize(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FontSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FontSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FontSize, get=getFontSize, set=setFontSize)

        MsoTriState getKernedPairs();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_KernedPairs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KernedPairs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKernedPairs(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KernedPairs(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KernedPairs()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KernedPairs, get=getKernedPairs, set=setKernedPairs)

        MsoTriState getNormalizedHeight();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_NormalizedHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NormalizedHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNormalizedHeight(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NormalizedHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NormalizedHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NormalizedHeight, get=getNormalizedHeight, set=setNormalizedHeight)

        MsoPresetTextEffectShape getPresetShape();
        %MethodCode
            etapi::MsoPresetTextEffectShape prop = (etapi::MsoPresetTextEffectShape)0;
            HRESULT hr = sipCpp->get_PresetShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPresetShape(MsoPresetTextEffectShape prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PresetShape(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PresetShape()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PresetShape, get=getPresetShape, set=setPresetShape)

        MsoPresetTextEffect getPresetTextEffect();
        %MethodCode
            etapi::MsoPresetTextEffect prop = (etapi::MsoPresetTextEffect)0;
            HRESULT hr = sipCpp->get_PresetTextEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetTextEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPresetTextEffect(MsoPresetTextEffect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PresetTextEffect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PresetTextEffect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PresetTextEffect, get=getPresetTextEffect, set=setPresetTextEffect)

        MsoTriState getRotatedChars();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_RotatedChars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RotatedChars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRotatedChars(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RotatedChars(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RotatedChars()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RotatedChars, get=getRotatedChars, set=setRotatedChars)

        BSTR getText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Text(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Text()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Text(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Text()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Text, get=getText, set=setText)

        single getTracking();
        %MethodCode
            etapi::single prop = 0;
            HRESULT hr = sipCpp->get_Tracking(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tracking()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTracking(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Tracking(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Tracking()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Tracking, get=getTracking, set=setTracking)
    };
};
