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
    struct Find : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Forward(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Forward(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Font(
            Font **prop /Out/) = 0;

        virtual HRESULT put_Font(
            Font *prop) = 0;

        virtual HRESULT get_Found(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_MatchAllWordForms(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchAllWordForms(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchCase(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchCase(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchWildcards(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchWildcards(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchSoundsLike(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchSoundsLike(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchWholeWord(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchWholeWord(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzy(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzy(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchByte(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchByte(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ParagraphFormat(
            ParagraphFormat **prop /Out/) = 0;

        virtual HRESULT put_ParagraphFormat(
            ParagraphFormat *prop) = 0;

        virtual HRESULT get_Style(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT *prop) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_Highlight(
            long *prop /Out/) = 0;

        virtual HRESULT put_Highlight(
            long prop) = 0;

        virtual HRESULT get_Replacement(
            Replacement **prop /Out/) = 0;

        virtual HRESULT get_Frame(
            Frame **prop /Out/) = 0;

        virtual HRESULT get_Wrap(
            WdFindWrap *prop /Out/) = 0;

        virtual HRESULT put_Wrap(
            WdFindWrap prop) = 0;

        virtual HRESULT get_Format(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Format(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LanguageIDFarEast(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDFarEast(
            WdLanguageID prop) = 0;

        virtual HRESULT get_LanguageIDOther(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDOther(
            WdLanguageID prop) = 0;

        virtual HRESULT get_CorrectHangulEndings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectHangulEndings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ExecuteOld(
            VARIANT *FindText = argMissing(),
            VARIANT *MatchCase = argMissing(),
            VARIANT *MatchWholeWord = argMissing(),
            VARIANT *MatchWildcards = argMissing(),
            VARIANT *MatchSoundsLike = argMissing(),
            VARIANT *MatchAllWordForms = argMissing(),
            VARIANT *Forward = argMissing(),
            VARIANT *Wrap = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *ReplaceWith = argMissing(),
            VARIANT *Replace = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT ClearFormatting() = 0;

        virtual HRESULT SetAllFuzzyOptions() = 0;

        virtual HRESULT ClearAllFuzzyOptions() = 0;

        virtual HRESULT Execute(
            VARIANT *FindText = argMissing(),
            VARIANT *MatchCase = argMissing(),
            VARIANT *MatchWholeWord = argMissing(),
            VARIANT *MatchWildcards = argMissing(),
            VARIANT *MatchSoundsLike = argMissing(),
            VARIANT *MatchAllWordForms = argMissing(),
            VARIANT *Forward = argMissing(),
            VARIANT *Wrap = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *ReplaceWith = argMissing(),
            VARIANT *Replace = argMissing(),
            VARIANT *MatchKashida = argMissing(),
            VARIANT *MatchDiacritics = argMissing(),
            VARIANT *MatchAlefHamza = argMissing(),
            VARIANT *MatchControl = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT get_NoProofing(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoProofing(
            long prop) = 0;

        virtual HRESULT get_MatchKashida(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchKashida(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchDiacritics(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchDiacritics(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchAlefHamza(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchAlefHamza(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchControl(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchControl(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchPhrase(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchPhrase(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchPrefix(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchPrefix(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchSuffix(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchSuffix(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IgnoreSpace(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IgnoreSpace(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IgnorePunct(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IgnorePunct(
            VARIANT_BOOL prop) = 0;

        virtual PyObject* HitHighlight(
            VARIANT *FindText,
            VARIANT *HighlightColor = argMissing(),
            VARIANT *TextColor = argMissing(),
            VARIANT *MatchCase = argMissing(),
            VARIANT *MatchWholeWord = argMissing(),
            VARIANT *MatchPrefix = argMissing(),
            VARIANT *MatchSuffix = argMissing(),
            VARIANT *MatchPhrase = argMissing(),
            VARIANT *MatchWildcards = argMissing(),
            VARIANT *MatchSoundsLike = argMissing(),
            VARIANT *MatchAllWordForms = argMissing(),
            VARIANT *MatchByte = argMissing(),
            VARIANT *MatchFuzzy = argMissing(),
            VARIANT *MatchKashida = argMissing(),
            VARIANT *MatchDiacritics = argMissing(),
            VARIANT *MatchAlefHamza = argMissing(),
            VARIANT *MatchControl = argMissing(),
            VARIANT *IgnoreSpace = argMissing(),
            VARIANT *IgnorePunct = argMissing(),
            VARIANT *HanjaPhoneticHangul = argMissing()) = 0;
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            *prop = VARIANT_FALSE;

            HRESULT hr = sipCpp->HitHighlight(a0, a1, a2, a3, a4, a5,
                a6, a7, a8, a9, a10,
                a11, a12, a13, a14, a15,
                a16, a17, a18, a19,
                prop);

            sipRes = sipBuildResult(0,
                "(iN)",
                hr, prop,
                sipType_VARIANT_BOOL, SIP_NULLPTR);
        %End

        virtual HRESULT ClearHitHighlight(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual PyObject* Execute2007(
            VARIANT *FindText = argMissing(),
            VARIANT *MatchCase = argMissing(),
            VARIANT *MatchWholeWord = argMissing(),
            VARIANT *MatchWildcards = argMissing(),
            VARIANT *MatchSoundsLike = argMissing(),
            VARIANT *MatchAllWordForms = argMissing(),
            VARIANT *Forward = argMissing(),
            VARIANT *Wrap = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *ReplaceWith = argMissing(),
            VARIANT *Replace = argMissing(),
            VARIANT *MatchKashida = argMissing(),
            VARIANT *MatchDiacritics = argMissing(),
            VARIANT *MatchAlefHamza = argMissing(),
            VARIANT *MatchControl = argMissing(),
            VARIANT *MatchPrefix = argMissing(),
            VARIANT *MatchSuffix = argMissing(),
            VARIANT *MatchPhrase = argMissing(),
            VARIANT *IgnoreSpace = argMissing(),
            VARIANT *IgnorePunct = argMissing()) = 0;
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            *prop = VARIANT_FALSE;

            HRESULT hr = sipCpp->Execute2007(a0, a1, a2, a3, a4, a5,
                a6, a7, a8, a9, a10,
                a11, a12, a13, a14, a15,
                a16, a17, a18, a19,
                prop);

            sipRes = sipBuildResult(0,
                "(iN)",
                hr, prop,
                sipType_VARIANT_BOOL, SIP_NULLPTR);
        %End
        virtual HRESULT get_HanjaPhoneticHangul(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HanjaPhoneticHangul(
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

        VARIANT_BOOL getForward();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Forward(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Forward()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setForward(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Forward(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Forward()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Forward, get=getForward, set=setForward)

        Font* getFont();
        %MethodCode
            wpsapi::Font *prop = nullptr;
            HRESULT hr = sipCpp->get_Font(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Font()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFont(Font *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Font(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Font()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Font, get=getFont, set=setFont)

        VARIANT_BOOL getFound();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Found(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Found()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Found, get=getFound)

        VARIANT_BOOL getMatchAllWordForms();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchAllWordForms(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchAllWordForms()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchAllWordForms(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchAllWordForms(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchAllWordForms()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchAllWordForms, get=getMatchAllWordForms, set=setMatchAllWordForms)

        VARIANT_BOOL getMatchCase();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchCase(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchCase()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchCase(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchCase(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchCase()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchCase, get=getMatchCase, set=setMatchCase)

        VARIANT_BOOL getMatchWildcards();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchWildcards(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchWildcards()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchWildcards(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchWildcards(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchWildcards()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchWildcards, get=getMatchWildcards, set=setMatchWildcards)

        VARIANT_BOOL getMatchSoundsLike();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchSoundsLike(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchSoundsLike()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchSoundsLike(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchSoundsLike(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchSoundsLike()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchSoundsLike, get=getMatchSoundsLike, set=setMatchSoundsLike)

        VARIANT_BOOL getMatchWholeWord();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchWholeWord(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchWholeWord()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchWholeWord(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchWholeWord(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchWholeWord()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchWholeWord, get=getMatchWholeWord, set=setMatchWholeWord)

        VARIANT_BOOL getMatchFuzzy();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzy(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzy(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzy()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzy, get=getMatchFuzzy, set=setMatchFuzzy)

        VARIANT_BOOL getMatchByte();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchByte(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchByte()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchByte(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchByte(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchByte()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchByte, get=getMatchByte, set=setMatchByte)

        ParagraphFormat* getParagraphFormat();
        %MethodCode
            wpsapi::ParagraphFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ParagraphFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParagraphFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setParagraphFormat(ParagraphFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ParagraphFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ParagraphFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ParagraphFormat, get=getParagraphFormat, set=setParagraphFormat)

        VARIANT getStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Style(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyle(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Style()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Style, get=getStyle, set=setStyle)

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

        WdLanguageID getLanguageID();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageID(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageID(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageID, get=getLanguageID, set=setLanguageID)

        long getHighlight();
        %MethodCode
            long prop = 0;
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

        PyObject* setHighlight(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Highlight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Highlight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Highlight, get=getHighlight, set=setHighlight)

        Replacement* getReplacement();
        %MethodCode
            wpsapi::Replacement *prop = nullptr;
            HRESULT hr = sipCpp->get_Replacement(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Replacement()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Replacement, get=getReplacement)

        Frame* getFrame();
        %MethodCode
            wpsapi::Frame *prop = nullptr;
            HRESULT hr = sipCpp->get_Frame(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Frame()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Frame, get=getFrame)

        WdFindWrap getWrap();
        %MethodCode
            wpsapi::WdFindWrap prop = (wpsapi::WdFindWrap)0;
            HRESULT hr = sipCpp->get_Wrap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Wrap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWrap(WdFindWrap prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Wrap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Wrap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Wrap, get=getWrap, set=setWrap)

        VARIANT_BOOL getFormat();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Format(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Format()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormat(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Format(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Format()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Format, get=getFormat, set=setFormat)

        WdLanguageID getLanguageIDFarEast();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageIDFarEast(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageIDFarEast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageIDFarEast(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageIDFarEast(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageIDFarEast()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageIDFarEast, get=getLanguageIDFarEast, set=setLanguageIDFarEast)

        WdLanguageID getLanguageIDOther();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageIDOther(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageIDOther()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageIDOther(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageIDOther(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageIDOther()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageIDOther, get=getLanguageIDOther, set=setLanguageIDOther)

        VARIANT_BOOL getCorrectHangulEndings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectHangulEndings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectHangulEndings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectHangulEndings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectHangulEndings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectHangulEndings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectHangulEndings, get=getCorrectHangulEndings, set=setCorrectHangulEndings)

        long getNoProofing();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NoProofing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoProofing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoProofing(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoProofing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoProofing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoProofing, get=getNoProofing, set=setNoProofing)

        VARIANT_BOOL getMatchKashida();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchKashida(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchKashida()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchKashida(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchKashida(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchKashida()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchKashida, get=getMatchKashida, set=setMatchKashida)

        VARIANT_BOOL getMatchDiacritics();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchDiacritics(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchDiacritics()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchDiacritics(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchDiacritics(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchDiacritics()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchDiacritics, get=getMatchDiacritics, set=setMatchDiacritics)

        VARIANT_BOOL getMatchAlefHamza();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchAlefHamza(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchAlefHamza()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchAlefHamza(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchAlefHamza(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchAlefHamza()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchAlefHamza, get=getMatchAlefHamza, set=setMatchAlefHamza)

        VARIANT_BOOL getMatchControl();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchControl(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchControl(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchControl(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchControl()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchControl, get=getMatchControl, set=setMatchControl)

        VARIANT_BOOL getMatchPhrase();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchPhrase(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchPhrase()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchPhrase(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchPhrase(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchPhrase()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchPhrase, get=getMatchPhrase, set=setMatchPhrase)

        VARIANT_BOOL getMatchPrefix();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchPrefix(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchPrefix()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchPrefix(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchPrefix(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchPrefix()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchPrefix, get=getMatchPrefix, set=setMatchPrefix)

        VARIANT_BOOL getMatchSuffix();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchSuffix(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchSuffix()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchSuffix(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchSuffix(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchSuffix()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchSuffix, get=getMatchSuffix, set=setMatchSuffix)

        VARIANT_BOOL getIgnoreSpace();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreSpace(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreSpace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreSpace(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreSpace(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreSpace()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreSpace, get=getIgnoreSpace, set=setIgnoreSpace)

        VARIANT_BOOL getIgnorePunct();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnorePunct(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnorePunct()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnorePunct(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnorePunct(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnorePunct()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnorePunct, get=getIgnorePunct, set=setIgnorePunct)

        VARIANT_BOOL getHanjaPhoneticHangul();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HanjaPhoneticHangul(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HanjaPhoneticHangul()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHanjaPhoneticHangul(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HanjaPhoneticHangul(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HanjaPhoneticHangul()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HanjaPhoneticHangul, get=getHanjaPhoneticHangul, set=setHanjaPhoneticHangul)
    };
};
