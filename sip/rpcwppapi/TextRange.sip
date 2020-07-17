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
    struct TextRange : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_ActionSettings(
            ActionSettings **ActionSettings /Out/) = 0;

        virtual HRESULT get_Start(
            long *Start /Out/) = 0;

        virtual HRESULT get_Length(
            long *Length /Out/) = 0;

        virtual HRESULT get_BoundLeft(
            single *BoundLeft /Out/) = 0;

        virtual HRESULT get_BoundTop(
            single *BoundTop /Out/) = 0;

        virtual HRESULT get_BoundWidth(
            single *BoundWidth /Out/) = 0;

        virtual HRESULT get_BoundHeight(
            single *BoundHeight /Out/) = 0;

        virtual HRESULT Paragraphs(
            int Start = 0,
            int Length = 0,
            TextRange **Paragraphs /Out/ = 0) = 0;

        virtual HRESULT Sentences(
            int Start = 0,
            int Length = 0,
            TextRange **Sentences /Out/ = 0) = 0;

        virtual HRESULT Words(
            int Start = 0,
            int Length = 0,
            TextRange **Words /Out/ = 0) = 0;

        virtual HRESULT Characters(
            int Start = 0,
            int Length = 0,
            TextRange **Characters /Out/ = 0) = 0;

        virtual HRESULT Lines(
            int Start = 0,
            int Length = 0,
            TextRange **Lines /Out/ = 0) = 0;

        virtual HRESULT Runs(
            int Start = 0,
            int Length = 0,
            TextRange **Runs /Out/ = 0) = 0;

        virtual HRESULT TrimText(
            TextRange **TrimText /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR Text) = 0;

        virtual HRESULT InsertAfter(
            BSTR NewText = 0,
            TextRange **After /Out/ = 0) = 0;

        virtual HRESULT InsertBefore(
            BSTR NewText = 0,
            TextRange **Before /Out/ = 0) = 0;

        virtual HRESULT InsertDateTime(
            PpDateTimeFormat DateTimeFormat,
            MsoTriState InsertAsField = wppapi::msoFalse,
            TextRange **DateTime /Out/ = 0) = 0;

        virtual HRESULT InsertSlideNumber(
            TextRange **SlideNumber /Out/) = 0;

        virtual HRESULT InsertSymbol(
            BSTR FontName,
            int CharNumber,
            MsoTriState Unicode = wppapi::msoFalse,
            TextRange **Symbol /Out/ = 0) = 0;

        virtual HRESULT get_Font(
            Font **Font /Out/) = 0;

        virtual HRESULT get_ParagraphFormat(
            ParagraphFormat **ParagraphFormat /Out/) = 0;

        virtual HRESULT get_IndentLevel(
            int *IndentLevel /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            int IndentLevel) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Paste(
            TextRange **Paste /Out/) = 0;

        virtual HRESULT ChangeCase(
            PpChangeCase Type) = 0;

        virtual HRESULT AddPeriods() = 0;

        virtual HRESULT RemovePeriods() = 0;

        virtual HRESULT Find(
            BSTR FindWhat,
            int After = 0,
            MsoTriState MatchCase = wppapi::msoTrue,
            MsoTriState WholeWords = wppapi::msoTrue,
            TextRange **Find /Out/ = 0) = 0;

        virtual HRESULT Replace(
            BSTR FindWhat,
            BSTR ReplaceWhat,
            int After = 0,
            MsoTriState MatchCase = wppapi::msoTrue,
            MsoTriState WholeWords = wppapi::msoTrue,
            TextRange **Replace /Out/ = 0) = 0;

        virtual HRESULT RotatedBounds(
            single *X1 /Out/,
            single *Y1 /Out/,
            single *X2 /Out/,
            single *Y2 /Out/,
            single *X3 /Out/,
            single *Y3 /Out/,
            single *x4 /Out/,
            single *y4 /Out/) = 0;

        virtual HRESULT get_LanguageID(
            MsoLanguageID *LanguageID /Out/) = 0;

        virtual HRESULT put_LanguageID(
            MsoLanguageID LanguageID) = 0;

        virtual HRESULT RtlRun() = 0;

        virtual HRESULT LtrRun() = 0;

        virtual HRESULT PasteSpecial(
            PpPasteDataType DataType = wppapi::ppPasteDefault,
            MsoTriState DisplayAsIcon = wppapi::msoFalse,
            BSTR IconFileName = 0,
            int IconIndex = 0,
            BSTR IconLabel = 0,
            MsoTriState Link = wppapi::msoFalse,
            TextRange **PasteSpecial /Out/ = 0) = 0;

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

        ActionSettings* getActionSettings();
        %MethodCode
            wppapi::ActionSettings *prop = nullptr;
            HRESULT hr = sipCpp->get_ActionSettings(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActionSettings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActionSettings, get=getActionSettings)

        long getStart();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Start(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Start()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Start, get=getStart)

        long getLength();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Length(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Length()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Length, get=getLength)

        single getBoundLeft();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_BoundLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BoundLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BoundLeft, get=getBoundLeft)

        single getBoundTop();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_BoundTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BoundTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BoundTop, get=getBoundTop)

        single getBoundWidth();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_BoundWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BoundWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BoundWidth, get=getBoundWidth)

        single getBoundHeight();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_BoundHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BoundHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BoundHeight, get=getBoundHeight)

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

        Font* getFont();
        %MethodCode
            wppapi::Font *prop = nullptr;
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

        %Property(name=Font, get=getFont)

        ParagraphFormat* getParagraphFormat();
        %MethodCode
            wppapi::ParagraphFormat *prop = nullptr;
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

        %Property(name=ParagraphFormat, get=getParagraphFormat)

        int getIndentLevel();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_IndentLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IndentLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIndentLevel(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IndentLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IndentLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IndentLevel, get=getIndentLevel, set=setIndentLevel)

        MsoLanguageID getLanguageID();
        %MethodCode
            wppapi::MsoLanguageID prop = (wppapi::MsoLanguageID)0;
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

        PyObject* setLanguageID(MsoLanguageID prop);
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
    };
};
