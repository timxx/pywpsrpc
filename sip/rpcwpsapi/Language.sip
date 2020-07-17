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
    struct Language : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_ID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ActiveGrammarDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT get_ActiveHyphenationDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT get_ActiveSpellingDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT get_ActiveThesaurusDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT get_DefaultWritingStyle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultWritingStyle(
            BSTR prop) = 0;

        virtual HRESULT get_WritingStyleList(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_SpellingDictionaryType(
            WdDictionaryType *prop /Out/) = 0;

        virtual HRESULT put_SpellingDictionaryType(
            WdDictionaryType prop) = 0;

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

        WdLanguageID getID();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_ID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ID, get=getID)

        BSTR getNameLocal();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NameLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NameLocal, get=getNameLocal)

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

        %Property(name=Name, get=getName)

        Dictionary* getActiveGrammarDictionary();
        %MethodCode
            wpsapi::Dictionary *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveGrammarDictionary(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveGrammarDictionary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveGrammarDictionary, get=getActiveGrammarDictionary)

        Dictionary* getActiveHyphenationDictionary();
        %MethodCode
            wpsapi::Dictionary *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveHyphenationDictionary(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveHyphenationDictionary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveHyphenationDictionary, get=getActiveHyphenationDictionary)

        Dictionary* getActiveSpellingDictionary();
        %MethodCode
            wpsapi::Dictionary *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveSpellingDictionary(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveSpellingDictionary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveSpellingDictionary, get=getActiveSpellingDictionary)

        Dictionary* getActiveThesaurusDictionary();
        %MethodCode
            wpsapi::Dictionary *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveThesaurusDictionary(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveThesaurusDictionary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveThesaurusDictionary, get=getActiveThesaurusDictionary)

        BSTR getDefaultWritingStyle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DefaultWritingStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultWritingStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultWritingStyle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultWritingStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultWritingStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultWritingStyle, get=getDefaultWritingStyle, set=setDefaultWritingStyle)

        VARIANT getWritingStyleList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_WritingStyleList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WritingStyleList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WritingStyleList, get=getWritingStyleList)

        WdDictionaryType getSpellingDictionaryType();
        %MethodCode
            wpsapi::WdDictionaryType prop = (wpsapi::WdDictionaryType)0;
            HRESULT hr = sipCpp->get_SpellingDictionaryType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpellingDictionaryType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpellingDictionaryType(WdDictionaryType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpellingDictionaryType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpellingDictionaryType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpellingDictionaryType, get=getSpellingDictionaryType, set=setSpellingDictionaryType)
    };
};
