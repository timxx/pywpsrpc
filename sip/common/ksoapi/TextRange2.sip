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
    struct TextRange2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Text(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR pbstrText) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            VARIANT Index,
            TextRange2 **Item /Out/) = 0;

        TextRange2* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::TextRange2 *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Paragraphs(
            int Start = 0,
            int Length = 0,
            TextRange2 **Range /Out/ = 0) = 0;

        virtual HRESULT get_Sentences(
            int Start = 0,
            int Length = 0,
            TextRange2 **Range /Out/ = 0) = 0;

        virtual HRESULT get_Words(
            int Start = 0,
            int Length = 0,
            TextRange2 **Range /Out/ = 0) = 0;

        virtual HRESULT get_Characters(
            int Start = 0,
            int Length = 0,
            TextRange2 **Range /Out/ = 0) = 0;

        virtual HRESULT get_Lines(
            int Start = 0,
            int Length = 0,
            TextRange2 **Range /Out/ = 0) = 0;

        virtual HRESULT get_Runs(
            int Start = 0,
            int Length = 0,
            TextRange2 **Range /Out/ = 0) = 0;

        virtual HRESULT get_ParagraphFormat(
            ParagraphFormat2 **Format /Out/) = 0;

        virtual HRESULT get_Font(
            Font2 **Font /Out/) = 0;

        virtual HRESULT get_Length(
            int *Length /Out/) = 0;

        virtual HRESULT get_Start(
            int *Start /Out/) = 0;

        virtual HRESULT get_BoundLeft(
            single *BoundLeft /Out/) = 0;

        virtual HRESULT get_BoundTop(
            single *BoundTop /Out/) = 0;

        virtual HRESULT get_BoundWidth(
            single *BoundWidth /Out/) = 0;

        virtual HRESULT get_BoundHeight(
            single *BoundHeight /Out/) = 0;

        virtual HRESULT TrimText(
            TextRange2 **TrimText /Out/) = 0;

        virtual HRESULT InsertAfter(
            BSTR NewText = 0,
            TextRange2 **TextRange /Out/ = 0) = 0;

        virtual HRESULT InsertBefore(
            BSTR NewText = 0,
            TextRange2 **TextRange /Out/ = 0) = 0;

        virtual HRESULT InsertSymbol(
            BSTR FontName,
            int CharNumber,
            MsoTriState Unicode = ksoapi::msoTrue,
            TextRange2 **TextRange /Out/ = 0) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Paste(
            TextRange2 **TextRange /Out/) = 0;

        virtual HRESULT PasteSpecial(
            MsoClipboardFormat Format,
            TextRange2 **TextRange /Out/) = 0;

        virtual HRESULT ChangeCase(
            MsoTextChangeCase Type) = 0;

        virtual HRESULT AddPeriods() = 0;

        virtual HRESULT RemovePeriods() = 0;

        virtual HRESULT Find(
            BSTR FindWhat,
            int After = 0,
            MsoTriState MatchCase = ksoapi::msoTrue,
            MsoTriState WholeWords = ksoapi::msoTrue,
            TextRange2 **TextRange /Out/ = 0) = 0;

        virtual HRESULT Replace(
            BSTR FindWhat,
            BSTR ReplaceWhat,
            int After = 0,
            MsoTriState MatchCase = ksoapi::msoTrue,
            MsoTriState WholeWords = ksoapi::msoTrue,
            TextRange2 **TextRange /Out/ = 0) = 0;

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

        virtual HRESULT get_MathZones(
            int Start = 0,
            int Length = 0,
            TextRange2 **Range /Out/ = 0) = 0;

        virtual HRESULT InsertChartField(
            MsoChartFieldType ChartFieldType,
            BSTR Formula = 0,
            int Position = 0,
            TextRange2 **Range /Out/ = 0) = 0;

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

        int getCount();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        ParagraphFormat2* getParagraphFormat();
        %MethodCode
            ksoapi::ParagraphFormat2 *prop = nullptr;
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

        Font2* getFont();
        %MethodCode
            ksoapi::Font2 *prop = nullptr;
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

        int getLength();
        %MethodCode
            int prop = 0;
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

        int getStart();
        %MethodCode
            int prop = 0;
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

        single getBoundLeft();
        %MethodCode
            ksoapi::single prop = 0;
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
            ksoapi::single prop = 0;
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
            ksoapi::single prop = 0;
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
            ksoapi::single prop = 0;
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

        MsoLanguageID getLanguageID();
        %MethodCode
            ksoapi::MsoLanguageID prop = (ksoapi::MsoLanguageID)0;
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
