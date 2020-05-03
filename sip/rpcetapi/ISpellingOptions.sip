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
    struct ISpellingOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_DictLang(
            long *RHS /Out/) = 0;

        virtual HRESULT put_DictLang(
            long RHS) = 0;

        virtual HRESULT get_UserDict(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_UserDict(
            BSTR RHS) = 0;

        virtual HRESULT get_IgnoreCaps(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IgnoreCaps(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SuggestMainOnly(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SuggestMainOnly(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IgnoreMixedDigits(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IgnoreMixedDigits(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IgnoreFileNames(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IgnoreFileNames(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_GermanPostReform(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_GermanPostReform(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_KoreanCombineAux(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_KoreanCombineAux(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_KoreanUseAutoChangeList(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_KoreanUseAutoChangeList(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_KoreanProcessCompound(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_KoreanProcessCompound(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HebrewModes(
            XlHebrewModes *RHS /Out/) = 0;

        virtual HRESULT put_HebrewModes(
            XlHebrewModes RHS) = 0;

        virtual HRESULT get_ArabicModes(
            XlArabicModes *RHS /Out/) = 0;

        virtual HRESULT put_ArabicModes(
            XlArabicModes RHS) = 0;

        virtual HRESULT get_ArabicStrictAlefHamza(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ArabicStrictAlefHamza(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ArabicStrictFinalYaa(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ArabicStrictFinalYaa(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ArabicStrictTaaMarboota(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ArabicStrictTaaMarboota(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RussianStrictE(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RussianStrictE(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SpanishModes(
            XlSpanishModes *RHS /Out/) = 0;

        virtual HRESULT put_SpanishModes(
            XlSpanishModes RHS) = 0;

        virtual HRESULT get_PortugalReform(
            XlPortugueseReform *RHS /Out/) = 0;

        virtual HRESULT put_PortugalReform(
            XlPortugueseReform RHS) = 0;

        virtual HRESULT get_BrazilReform(
            XlPortugueseReform *RHS /Out/) = 0;

        virtual HRESULT put_BrazilReform(
            XlPortugueseReform RHS) = 0;

        long getDictLang();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DictLang(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DictLang()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDictLang(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DictLang(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DictLang()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DictLang, get=getDictLang, set=setDictLang)

        BSTR getUserDict();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_UserDict(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserDict()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUserDict(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UserDict(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UserDict()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UserDict, get=getUserDict, set=setUserDict)

        VARIANT_BOOL getIgnoreCaps();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreCaps(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreCaps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreCaps(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreCaps(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreCaps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreCaps, get=getIgnoreCaps, set=setIgnoreCaps)

        VARIANT_BOOL getSuggestMainOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SuggestMainOnly(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SuggestMainOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuggestMainOnly(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SuggestMainOnly(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SuggestMainOnly()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SuggestMainOnly, get=getSuggestMainOnly, set=setSuggestMainOnly)

        VARIANT_BOOL getIgnoreMixedDigits();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreMixedDigits(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreMixedDigits()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreMixedDigits(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreMixedDigits(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreMixedDigits()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreMixedDigits, get=getIgnoreMixedDigits, set=setIgnoreMixedDigits)

        VARIANT_BOOL getIgnoreFileNames();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreFileNames(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreFileNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreFileNames(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreFileNames(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreFileNames()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreFileNames, get=getIgnoreFileNames, set=setIgnoreFileNames)

        VARIANT_BOOL getGermanPostReform();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_GermanPostReform(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GermanPostReform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGermanPostReform(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GermanPostReform(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GermanPostReform()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GermanPostReform, get=getGermanPostReform, set=setGermanPostReform)

        VARIANT_BOOL getKoreanCombineAux();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_KoreanCombineAux(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KoreanCombineAux()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKoreanCombineAux(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KoreanCombineAux(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KoreanCombineAux()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KoreanCombineAux, get=getKoreanCombineAux, set=setKoreanCombineAux)

        VARIANT_BOOL getKoreanUseAutoChangeList();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_KoreanUseAutoChangeList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KoreanUseAutoChangeList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKoreanUseAutoChangeList(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KoreanUseAutoChangeList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KoreanUseAutoChangeList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KoreanUseAutoChangeList, get=getKoreanUseAutoChangeList, set=setKoreanUseAutoChangeList)

        VARIANT_BOOL getKoreanProcessCompound();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_KoreanProcessCompound(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KoreanProcessCompound()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKoreanProcessCompound(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KoreanProcessCompound(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KoreanProcessCompound()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KoreanProcessCompound, get=getKoreanProcessCompound, set=setKoreanProcessCompound)

        XlHebrewModes getHebrewModes();
        %MethodCode
            etapi::XlHebrewModes prop = (etapi::XlHebrewModes)0;
            HRESULT hr = sipCpp->get_HebrewModes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HebrewModes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHebrewModes(XlHebrewModes prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HebrewModes(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HebrewModes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HebrewModes, get=getHebrewModes, set=setHebrewModes)

        XlArabicModes getArabicModes();
        %MethodCode
            etapi::XlArabicModes prop = (etapi::XlArabicModes)0;
            HRESULT hr = sipCpp->get_ArabicModes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArabicModes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArabicModes(XlArabicModes prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArabicModes(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArabicModes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArabicModes, get=getArabicModes, set=setArabicModes)

        VARIANT_BOOL getArabicStrictAlefHamza();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ArabicStrictAlefHamza(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArabicStrictAlefHamza()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArabicStrictAlefHamza(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArabicStrictAlefHamza(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArabicStrictAlefHamza()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArabicStrictAlefHamza, get=getArabicStrictAlefHamza, set=setArabicStrictAlefHamza)

        VARIANT_BOOL getArabicStrictFinalYaa();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ArabicStrictFinalYaa(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArabicStrictFinalYaa()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArabicStrictFinalYaa(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArabicStrictFinalYaa(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArabicStrictFinalYaa()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArabicStrictFinalYaa, get=getArabicStrictFinalYaa, set=setArabicStrictFinalYaa)

        VARIANT_BOOL getArabicStrictTaaMarboota();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ArabicStrictTaaMarboota(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArabicStrictTaaMarboota()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArabicStrictTaaMarboota(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArabicStrictTaaMarboota(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArabicStrictTaaMarboota()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArabicStrictTaaMarboota, get=getArabicStrictTaaMarboota, set=setArabicStrictTaaMarboota)

        VARIANT_BOOL getRussianStrictE();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RussianStrictE(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RussianStrictE()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRussianStrictE(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RussianStrictE(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RussianStrictE()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RussianStrictE, get=getRussianStrictE, set=setRussianStrictE)

        XlSpanishModes getSpanishModes();
        %MethodCode
            etapi::XlSpanishModes prop = (etapi::XlSpanishModes)0;
            HRESULT hr = sipCpp->get_SpanishModes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpanishModes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpanishModes(XlSpanishModes prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpanishModes(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpanishModes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpanishModes, get=getSpanishModes, set=setSpanishModes)

        XlPortugueseReform getPortugalReform();
        %MethodCode
            etapi::XlPortugueseReform prop = (etapi::XlPortugueseReform)0;
            HRESULT hr = sipCpp->get_PortugalReform(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PortugalReform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPortugalReform(XlPortugueseReform prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PortugalReform(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PortugalReform()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PortugalReform, get=getPortugalReform, set=setPortugalReform)

        XlPortugueseReform getBrazilReform();
        %MethodCode
            etapi::XlPortugueseReform prop = (etapi::XlPortugueseReform)0;
            HRESULT hr = sipCpp->get_BrazilReform(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BrazilReform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBrazilReform(XlPortugueseReform prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BrazilReform(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BrazilReform()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BrazilReform, get=getBrazilReform, set=setBrazilReform)
    };
};
