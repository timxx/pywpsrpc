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
    struct AutoCorrect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_CorrectDays(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectDays(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectInitialCaps(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectInitialCaps(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectSentenceCaps(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectSentenceCaps(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReplaceText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReplaceText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Entries(
            AutoCorrectEntries **prop /Out/) = 0;

        virtual HRESULT get_FirstLetterExceptions(
            FirstLetterExceptions **prop /Out/) = 0;

        virtual HRESULT get_FirstLetterAutoAdd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FirstLetterAutoAdd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TwoInitialCapsExceptions(
            TwoInitialCapsExceptions **prop /Out/) = 0;

        virtual HRESULT get_TwoInitialCapsAutoAdd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TwoInitialCapsAutoAdd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectCapsLock(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectCapsLock(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectHangulAndAlphabet(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectHangulAndAlphabet(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HangulAndAlphabetExceptions(
            HangulAndAlphabetExceptions **prop /Out/) = 0;

        virtual HRESULT get_HangulAndAlphabetAutoAdd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HangulAndAlphabetAutoAdd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReplaceTextFromSpellingChecker(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReplaceTextFromSpellingChecker(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OtherCorrectionsAutoAdd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OtherCorrectionsAutoAdd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OtherCorrectionsExceptions(
            OtherCorrectionsExceptions **prop /Out/) = 0;

        virtual HRESULT get_CorrectKeyboardSetting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectKeyboardSetting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CorrectTableCells(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CorrectTableCells(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayAutoCorrectOptions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayAutoCorrectOptions(
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

        VARIANT_BOOL getCorrectDays();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectDays(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectDays()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectDays(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectDays(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectDays()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectDays, get=getCorrectDays, set=setCorrectDays)

        VARIANT_BOOL getCorrectInitialCaps();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectInitialCaps(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectInitialCaps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectInitialCaps(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectInitialCaps(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectInitialCaps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectInitialCaps, get=getCorrectInitialCaps, set=setCorrectInitialCaps)

        VARIANT_BOOL getCorrectSentenceCaps();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectSentenceCaps(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectSentenceCaps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectSentenceCaps(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectSentenceCaps(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectSentenceCaps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectSentenceCaps, get=getCorrectSentenceCaps, set=setCorrectSentenceCaps)

        VARIANT_BOOL getReplaceText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReplaceText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReplaceText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReplaceText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReplaceText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReplaceText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReplaceText, get=getReplaceText, set=setReplaceText)

        AutoCorrectEntries* getEntries();
        %MethodCode
            wpsapi::AutoCorrectEntries *prop = nullptr;
            HRESULT hr = sipCpp->get_Entries(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Entries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Entries, get=getEntries)

        FirstLetterExceptions* getFirstLetterExceptions();
        %MethodCode
            wpsapi::FirstLetterExceptions *prop = nullptr;
            HRESULT hr = sipCpp->get_FirstLetterExceptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstLetterExceptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FirstLetterExceptions, get=getFirstLetterExceptions)

        VARIANT_BOOL getFirstLetterAutoAdd();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FirstLetterAutoAdd(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstLetterAutoAdd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstLetterAutoAdd(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstLetterAutoAdd(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstLetterAutoAdd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstLetterAutoAdd, get=getFirstLetterAutoAdd, set=setFirstLetterAutoAdd)

        TwoInitialCapsExceptions* getTwoInitialCapsExceptions();
        %MethodCode
            wpsapi::TwoInitialCapsExceptions *prop = nullptr;
            HRESULT hr = sipCpp->get_TwoInitialCapsExceptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TwoInitialCapsExceptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TwoInitialCapsExceptions, get=getTwoInitialCapsExceptions)

        VARIANT_BOOL getTwoInitialCapsAutoAdd();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TwoInitialCapsAutoAdd(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TwoInitialCapsAutoAdd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTwoInitialCapsAutoAdd(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TwoInitialCapsAutoAdd(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TwoInitialCapsAutoAdd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TwoInitialCapsAutoAdd, get=getTwoInitialCapsAutoAdd, set=setTwoInitialCapsAutoAdd)

        VARIANT_BOOL getCorrectCapsLock();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectCapsLock(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectCapsLock()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectCapsLock(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectCapsLock(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectCapsLock()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectCapsLock, get=getCorrectCapsLock, set=setCorrectCapsLock)

        VARIANT_BOOL getCorrectHangulAndAlphabet();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectHangulAndAlphabet(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectHangulAndAlphabet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectHangulAndAlphabet(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectHangulAndAlphabet(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectHangulAndAlphabet()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectHangulAndAlphabet, get=getCorrectHangulAndAlphabet, set=setCorrectHangulAndAlphabet)

        HangulAndAlphabetExceptions* getHangulAndAlphabetExceptions();
        %MethodCode
            wpsapi::HangulAndAlphabetExceptions *prop = nullptr;
            HRESULT hr = sipCpp->get_HangulAndAlphabetExceptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HangulAndAlphabetExceptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HangulAndAlphabetExceptions, get=getHangulAndAlphabetExceptions)

        VARIANT_BOOL getHangulAndAlphabetAutoAdd();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HangulAndAlphabetAutoAdd(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HangulAndAlphabetAutoAdd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHangulAndAlphabetAutoAdd(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HangulAndAlphabetAutoAdd(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HangulAndAlphabetAutoAdd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HangulAndAlphabetAutoAdd, get=getHangulAndAlphabetAutoAdd, set=setHangulAndAlphabetAutoAdd)

        VARIANT_BOOL getReplaceTextFromSpellingChecker();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReplaceTextFromSpellingChecker(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReplaceTextFromSpellingChecker()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReplaceTextFromSpellingChecker(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReplaceTextFromSpellingChecker(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReplaceTextFromSpellingChecker()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReplaceTextFromSpellingChecker, get=getReplaceTextFromSpellingChecker, set=setReplaceTextFromSpellingChecker)

        VARIANT_BOOL getOtherCorrectionsAutoAdd();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OtherCorrectionsAutoAdd(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OtherCorrectionsAutoAdd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOtherCorrectionsAutoAdd(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OtherCorrectionsAutoAdd(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OtherCorrectionsAutoAdd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OtherCorrectionsAutoAdd, get=getOtherCorrectionsAutoAdd, set=setOtherCorrectionsAutoAdd)

        OtherCorrectionsExceptions* getOtherCorrectionsExceptions();
        %MethodCode
            wpsapi::OtherCorrectionsExceptions *prop = nullptr;
            HRESULT hr = sipCpp->get_OtherCorrectionsExceptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OtherCorrectionsExceptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OtherCorrectionsExceptions, get=getOtherCorrectionsExceptions)

        VARIANT_BOOL getCorrectKeyboardSetting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectKeyboardSetting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectKeyboardSetting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectKeyboardSetting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectKeyboardSetting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectKeyboardSetting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectKeyboardSetting, get=getCorrectKeyboardSetting, set=setCorrectKeyboardSetting)

        VARIANT_BOOL getCorrectTableCells();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CorrectTableCells(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CorrectTableCells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCorrectTableCells(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CorrectTableCells(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CorrectTableCells()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CorrectTableCells, get=getCorrectTableCells, set=setCorrectTableCells)

        VARIANT_BOOL getDisplayAutoCorrectOptions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAutoCorrectOptions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAutoCorrectOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAutoCorrectOptions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAutoCorrectOptions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAutoCorrectOptions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAutoCorrectOptions, get=getDisplayAutoCorrectOptions, set=setDisplayAutoCorrectOptions)
    };
};
