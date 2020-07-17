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
    struct EmailOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_UseThemeStyle(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseThemeStyle(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MarkCommentsWith(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_MarkCommentsWith(
            BSTR prop) = 0;

        virtual HRESULT get_MarkComments(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MarkComments(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EmailSignature(
            EmailSignature **prop /Out/) = 0;

        virtual HRESULT get_ComposeStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_ReplyStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_ThemeName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ThemeName(
            BSTR prop) = 0;

        virtual HRESULT get_Dummy1(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Dummy2(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Dummy3() = 0;

        virtual HRESULT get_NewColorOnReply(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NewColorOnReply(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PlainTextStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_UseThemeStyleOnReply(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseThemeStyleOnReply(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyHeadings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyHeadings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyBorders(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyBorders(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyBulletedLists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyBulletedLists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyNumberedLists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyNumberedLists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceQuotes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceQuotes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceSymbols(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceSymbols(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceOrdinals(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceOrdinals(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceFractions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceFractions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplacePlainTextEmphasis(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplacePlainTextEmphasis(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeFormatListItemBeginning(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeFormatListItemBeginning(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeDefineStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeDefineStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceHyperlinks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceHyperlinks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyTables(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyTables(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyFirstIndents(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyFirstIndents(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyDates(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyDates(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyClosings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyClosings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeMatchParentheses(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeMatchParentheses(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceFarEastDashes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceFarEastDashes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeDeleteAutoSpaces(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeDeleteAutoSpaces(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeInsertClosings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeInsertClosings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeAutoLetterWizard(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeAutoLetterWizard(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeInsertOvers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeInsertOvers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RelyOnCSS(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RelyOnCSS(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HTMLFidelity(
            WdEmailHTMLFidelity *prop /Out/) = 0;

        virtual HRESULT put_HTMLFidelity(
            WdEmailHTMLFidelity prop) = 0;

        virtual HRESULT get_EmbedSmartTag(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EmbedSmartTag(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TabIndentKey(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TabIndentKey(
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

        VARIANT_BOOL getUseThemeStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseThemeStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseThemeStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseThemeStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseThemeStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseThemeStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseThemeStyle, get=getUseThemeStyle, set=setUseThemeStyle)

        BSTR getMarkCommentsWith();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MarkCommentsWith(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkCommentsWith()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkCommentsWith(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkCommentsWith(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkCommentsWith()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkCommentsWith, get=getMarkCommentsWith, set=setMarkCommentsWith)

        VARIANT_BOOL getMarkComments();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MarkComments(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkComments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkComments(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkComments(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkComments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkComments, get=getMarkComments, set=setMarkComments)

        EmailSignature* getEmailSignature();
        %MethodCode
            wpsapi::EmailSignature *prop = nullptr;
            HRESULT hr = sipCpp->get_EmailSignature(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmailSignature()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EmailSignature, get=getEmailSignature)

        Style* getComposeStyle();
        %MethodCode
            wpsapi::Style *prop = nullptr;
            HRESULT hr = sipCpp->get_ComposeStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ComposeStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ComposeStyle, get=getComposeStyle)

        Style* getReplyStyle();
        %MethodCode
            wpsapi::Style *prop = nullptr;
            HRESULT hr = sipCpp->get_ReplyStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReplyStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReplyStyle, get=getReplyStyle)

        BSTR getThemeName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ThemeName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThemeName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setThemeName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ThemeName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ThemeName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ThemeName, get=getThemeName, set=setThemeName)

        VARIANT_BOOL getDummy1();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Dummy1(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dummy1()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Dummy1, get=getDummy1)

        VARIANT_BOOL getDummy2();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Dummy2(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dummy2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Dummy2, get=getDummy2)

        VARIANT_BOOL getNewColorOnReply();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NewColorOnReply(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NewColorOnReply()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNewColorOnReply(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NewColorOnReply(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NewColorOnReply()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NewColorOnReply, get=getNewColorOnReply, set=setNewColorOnReply)

        Style* getPlainTextStyle();
        %MethodCode
            wpsapi::Style *prop = nullptr;
            HRESULT hr = sipCpp->get_PlainTextStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlainTextStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PlainTextStyle, get=getPlainTextStyle)

        VARIANT_BOOL getUseThemeStyleOnReply();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseThemeStyleOnReply(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseThemeStyleOnReply()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseThemeStyleOnReply(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseThemeStyleOnReply(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseThemeStyleOnReply()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseThemeStyleOnReply, get=getUseThemeStyleOnReply, set=setUseThemeStyleOnReply)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyHeadings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyHeadings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyHeadings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyHeadings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyHeadings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyHeadings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyHeadings, get=getAutoFormatAsYouTypeApplyHeadings, set=setAutoFormatAsYouTypeApplyHeadings)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyBorders();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyBorders(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyBorders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyBorders(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyBorders(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyBorders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyBorders, get=getAutoFormatAsYouTypeApplyBorders, set=setAutoFormatAsYouTypeApplyBorders)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyBulletedLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyBulletedLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyBulletedLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyBulletedLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyBulletedLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyBulletedLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyBulletedLists, get=getAutoFormatAsYouTypeApplyBulletedLists, set=setAutoFormatAsYouTypeApplyBulletedLists)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyNumberedLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyNumberedLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyNumberedLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyNumberedLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyNumberedLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyNumberedLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyNumberedLists, get=getAutoFormatAsYouTypeApplyNumberedLists, set=setAutoFormatAsYouTypeApplyNumberedLists)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceQuotes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceQuotes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceQuotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceQuotes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceQuotes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceQuotes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceQuotes, get=getAutoFormatAsYouTypeReplaceQuotes, set=setAutoFormatAsYouTypeReplaceQuotes)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceSymbols();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceSymbols(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceSymbols()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceSymbols(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceSymbols(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceSymbols()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceSymbols, get=getAutoFormatAsYouTypeReplaceSymbols, set=setAutoFormatAsYouTypeReplaceSymbols)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceOrdinals();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceOrdinals(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceOrdinals()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceOrdinals(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceOrdinals(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceOrdinals()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceOrdinals, get=getAutoFormatAsYouTypeReplaceOrdinals, set=setAutoFormatAsYouTypeReplaceOrdinals)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceFractions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceFractions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceFractions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceFractions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceFractions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceFractions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceFractions, get=getAutoFormatAsYouTypeReplaceFractions, set=setAutoFormatAsYouTypeReplaceFractions)

        VARIANT_BOOL getAutoFormatAsYouTypeReplacePlainTextEmphasis();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplacePlainTextEmphasis(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplacePlainTextEmphasis()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplacePlainTextEmphasis(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplacePlainTextEmphasis(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplacePlainTextEmphasis()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplacePlainTextEmphasis, get=getAutoFormatAsYouTypeReplacePlainTextEmphasis, set=setAutoFormatAsYouTypeReplacePlainTextEmphasis)

        VARIANT_BOOL getAutoFormatAsYouTypeFormatListItemBeginning();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeFormatListItemBeginning(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeFormatListItemBeginning()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeFormatListItemBeginning(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeFormatListItemBeginning(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeFormatListItemBeginning()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeFormatListItemBeginning, get=getAutoFormatAsYouTypeFormatListItemBeginning, set=setAutoFormatAsYouTypeFormatListItemBeginning)

        VARIANT_BOOL getAutoFormatAsYouTypeDefineStyles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeDefineStyles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeDefineStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeDefineStyles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeDefineStyles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeDefineStyles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeDefineStyles, get=getAutoFormatAsYouTypeDefineStyles, set=setAutoFormatAsYouTypeDefineStyles)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceHyperlinks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceHyperlinks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceHyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceHyperlinks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceHyperlinks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceHyperlinks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceHyperlinks, get=getAutoFormatAsYouTypeReplaceHyperlinks, set=setAutoFormatAsYouTypeReplaceHyperlinks)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyTables();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyTables(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyTables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyTables(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyTables(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyTables()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyTables, get=getAutoFormatAsYouTypeApplyTables, set=setAutoFormatAsYouTypeApplyTables)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyFirstIndents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyFirstIndents(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyFirstIndents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyFirstIndents(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyFirstIndents(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyFirstIndents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyFirstIndents, get=getAutoFormatAsYouTypeApplyFirstIndents, set=setAutoFormatAsYouTypeApplyFirstIndents)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyDates();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyDates(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyDates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyDates(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyDates(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyDates()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyDates, get=getAutoFormatAsYouTypeApplyDates, set=setAutoFormatAsYouTypeApplyDates)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyClosings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyClosings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyClosings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyClosings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyClosings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyClosings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyClosings, get=getAutoFormatAsYouTypeApplyClosings, set=setAutoFormatAsYouTypeApplyClosings)

        VARIANT_BOOL getAutoFormatAsYouTypeMatchParentheses();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeMatchParentheses(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeMatchParentheses()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeMatchParentheses(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeMatchParentheses(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeMatchParentheses()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeMatchParentheses, get=getAutoFormatAsYouTypeMatchParentheses, set=setAutoFormatAsYouTypeMatchParentheses)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceFarEastDashes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceFarEastDashes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceFarEastDashes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceFarEastDashes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceFarEastDashes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceFarEastDashes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceFarEastDashes, get=getAutoFormatAsYouTypeReplaceFarEastDashes, set=setAutoFormatAsYouTypeReplaceFarEastDashes)

        VARIANT_BOOL getAutoFormatAsYouTypeDeleteAutoSpaces();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeDeleteAutoSpaces(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeDeleteAutoSpaces()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeDeleteAutoSpaces(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeDeleteAutoSpaces(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeDeleteAutoSpaces()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeDeleteAutoSpaces, get=getAutoFormatAsYouTypeDeleteAutoSpaces, set=setAutoFormatAsYouTypeDeleteAutoSpaces)

        VARIANT_BOOL getAutoFormatAsYouTypeInsertClosings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeInsertClosings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeInsertClosings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeInsertClosings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeInsertClosings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeInsertClosings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeInsertClosings, get=getAutoFormatAsYouTypeInsertClosings, set=setAutoFormatAsYouTypeInsertClosings)

        VARIANT_BOOL getAutoFormatAsYouTypeAutoLetterWizard();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeAutoLetterWizard(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeAutoLetterWizard()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeAutoLetterWizard(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeAutoLetterWizard(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeAutoLetterWizard()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeAutoLetterWizard, get=getAutoFormatAsYouTypeAutoLetterWizard, set=setAutoFormatAsYouTypeAutoLetterWizard)

        VARIANT_BOOL getAutoFormatAsYouTypeInsertOvers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeInsertOvers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeInsertOvers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeInsertOvers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeInsertOvers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeInsertOvers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeInsertOvers, get=getAutoFormatAsYouTypeInsertOvers, set=setAutoFormatAsYouTypeInsertOvers)

        VARIANT_BOOL getRelyOnCSS();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RelyOnCSS(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelyOnCSS()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelyOnCSS(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelyOnCSS(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelyOnCSS()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelyOnCSS, get=getRelyOnCSS, set=setRelyOnCSS)

        WdEmailHTMLFidelity getHTMLFidelity();
        %MethodCode
            wpsapi::WdEmailHTMLFidelity prop = (wpsapi::WdEmailHTMLFidelity)0;
            HRESULT hr = sipCpp->get_HTMLFidelity(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTMLFidelity()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHTMLFidelity(WdEmailHTMLFidelity prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HTMLFidelity(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HTMLFidelity()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HTMLFidelity, get=getHTMLFidelity, set=setHTMLFidelity)

        VARIANT_BOOL getEmbedSmartTag();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EmbedSmartTag(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmbedSmartTag()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmbedSmartTag(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmbedSmartTag(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmbedSmartTag()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmbedSmartTag, get=getEmbedSmartTag, set=setEmbedSmartTag)

        VARIANT_BOOL getTabIndentKey();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TabIndentKey(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TabIndentKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTabIndentKey(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TabIndentKey(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TabIndentKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TabIndentKey, get=getTabIndentKey, set=setTabIndentKey)
    };
};
