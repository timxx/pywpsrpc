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
    struct _ParagraphFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Duplicate(
            ParagraphFormat **prop /Out/) = 0;

        virtual HRESULT get_Style(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT *prop) = 0;

        virtual HRESULT get_Alignment(
            WdParagraphAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdParagraphAlignment prop) = 0;

        virtual HRESULT get_KeepTogether(
            long *prop /Out/) = 0;

        virtual HRESULT put_KeepTogether(
            long prop) = 0;

        virtual HRESULT get_KeepWithNext(
            long *prop /Out/) = 0;

        virtual HRESULT put_KeepWithNext(
            long prop) = 0;

        virtual HRESULT get_PageBreakBefore(
            long *prop /Out/) = 0;

        virtual HRESULT put_PageBreakBefore(
            long prop) = 0;

        virtual HRESULT get_NoLineNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoLineNumber(
            long prop) = 0;

        virtual HRESULT get_RightIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightIndent(
            single prop) = 0;

        virtual HRESULT get_LeftIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single prop) = 0;

        virtual HRESULT get_FirstLineIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_FirstLineIndent(
            single prop) = 0;

        virtual HRESULT get_LineSpacing(
            single *prop /Out/) = 0;

        virtual HRESULT put_LineSpacing(
            single prop) = 0;

        virtual HRESULT get_LineSpacingRule(
            WdLineSpacing *prop /Out/) = 0;

        virtual HRESULT put_LineSpacingRule(
            WdLineSpacing prop) = 0;

        virtual HRESULT get_SpaceBefore(
            single *prop /Out/) = 0;

        virtual HRESULT put_SpaceBefore(
            single prop) = 0;

        virtual HRESULT get_SpaceAfter(
            single *prop /Out/) = 0;

        virtual HRESULT put_SpaceAfter(
            single prop) = 0;

        virtual HRESULT get_Hyphenation(
            long *prop /Out/) = 0;

        virtual HRESULT put_Hyphenation(
            long prop) = 0;

        virtual HRESULT get_WidowControl(
            long *prop /Out/) = 0;

        virtual HRESULT put_WidowControl(
            long prop) = 0;

        virtual HRESULT get_FarEastLineBreakControl(
            long *prop /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakControl(
            long prop) = 0;

        virtual HRESULT get_WordWrap(
            long *prop /Out/) = 0;

        virtual HRESULT put_WordWrap(
            long prop) = 0;

        virtual HRESULT get_HangingPunctuation(
            long *prop /Out/) = 0;

        virtual HRESULT put_HangingPunctuation(
            long prop) = 0;

        virtual HRESULT get_HalfWidthPunctuationOnTopOfLine(
            long *prop /Out/) = 0;

        virtual HRESULT put_HalfWidthPunctuationOnTopOfLine(
            long prop) = 0;

        virtual HRESULT get_AddSpaceBetweenFarEastAndAlpha(
            long *prop /Out/) = 0;

        virtual HRESULT put_AddSpaceBetweenFarEastAndAlpha(
            long prop) = 0;

        virtual HRESULT get_AddSpaceBetweenFarEastAndDigit(
            long *prop /Out/) = 0;

        virtual HRESULT put_AddSpaceBetweenFarEastAndDigit(
            long prop) = 0;

        virtual HRESULT get_BaseLineAlignment(
            WdBaselineAlignment *prop /Out/) = 0;

        virtual HRESULT put_BaseLineAlignment(
            WdBaselineAlignment prop) = 0;

        virtual HRESULT get_AutoAdjustRightIndent(
            long *prop /Out/) = 0;

        virtual HRESULT put_AutoAdjustRightIndent(
            long prop) = 0;

        virtual HRESULT get_DisableLineHeightGrid(
            long *prop /Out/) = 0;

        virtual HRESULT put_DisableLineHeightGrid(
            long prop) = 0;

        virtual HRESULT get_TabStops(
            TabStops **prop /Out/) = 0;

        virtual HRESULT put_TabStops(
            TabStops *prop) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_OutlineLevel(
            WdOutlineLevel *prop /Out/) = 0;

        virtual HRESULT put_OutlineLevel(
            WdOutlineLevel prop) = 0;

        virtual HRESULT CloseUp() = 0;

        virtual HRESULT OpenUp() = 0;

        virtual HRESULT OpenOrCloseUp() = 0;

        virtual HRESULT TabHangingIndent(
            short Count) = 0;

        virtual HRESULT TabIndent(
            short Count) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT Space1() = 0;

        virtual HRESULT Space15() = 0;

        virtual HRESULT Space2() = 0;

        virtual HRESULT IndentCharWidth(
            short Count) = 0;

        virtual HRESULT IndentFirstLineCharWidth(
            short Count) = 0;

        virtual HRESULT get_CharacterUnitRightIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_CharacterUnitRightIndent(
            single prop) = 0;

        virtual HRESULT get_CharacterUnitLeftIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_CharacterUnitLeftIndent(
            single prop) = 0;

        virtual HRESULT get_CharacterUnitFirstLineIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_CharacterUnitFirstLineIndent(
            single prop) = 0;

        virtual HRESULT get_LineUnitBefore(
            single *prop /Out/) = 0;

        virtual HRESULT put_LineUnitBefore(
            single prop) = 0;

        virtual HRESULT get_LineUnitAfter(
            single *prop /Out/) = 0;

        virtual HRESULT put_LineUnitAfter(
            single prop) = 0;

        virtual HRESULT get_ReadingOrder(
            WdReadingOrder *prop /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            WdReadingOrder prop) = 0;

        virtual HRESULT get_SpaceBeforeAuto(
            long *prop /Out/) = 0;

        virtual HRESULT put_SpaceBeforeAuto(
            long prop) = 0;

        virtual HRESULT get_SpaceAfterAuto(
            long *prop /Out/) = 0;

        virtual HRESULT put_SpaceAfterAuto(
            long prop) = 0;

        virtual HRESULT get_MirrorIndents(
            long *prop /Out/) = 0;

        virtual HRESULT put_MirrorIndents(
            long prop) = 0;

        virtual HRESULT get_TextboxTightWrap(
            WdTextboxTightWrap *prop /Out/) = 0;

        virtual HRESULT put_TextboxTightWrap(
            WdTextboxTightWrap prop) = 0;

        virtual HRESULT get_CollapsedByDefault(
            long *prop /Out/) = 0;

        virtual HRESULT put_CollapsedByDefault(
            long prop) = 0;

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

        ParagraphFormat* getDuplicate();
        %MethodCode
            wpsapi::ParagraphFormat *prop = nullptr;
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

        WdParagraphAlignment getAlignment();
        %MethodCode
            wpsapi::WdParagraphAlignment prop = (wpsapi::WdParagraphAlignment)0;
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

        PyObject* setAlignment(WdParagraphAlignment prop);
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

        long getKeepTogether();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_KeepTogether(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeepTogether()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKeepTogether(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KeepTogether(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KeepTogether()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KeepTogether, get=getKeepTogether, set=setKeepTogether)

        long getKeepWithNext();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_KeepWithNext(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeepWithNext()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKeepWithNext(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KeepWithNext(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KeepWithNext()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KeepWithNext, get=getKeepWithNext, set=setKeepWithNext)

        long getPageBreakBefore();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PageBreakBefore(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageBreakBefore()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageBreakBefore(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageBreakBefore(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageBreakBefore()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageBreakBefore, get=getPageBreakBefore, set=setPageBreakBefore)

        long getNoLineNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NoLineNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoLineNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoLineNumber(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoLineNumber(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoLineNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoLineNumber, get=getNoLineNumber, set=setNoLineNumber)

        single getRightIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RightIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightIndent, get=getRightIndent, set=setRightIndent)

        single getLeftIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftIndent, get=getLeftIndent, set=setLeftIndent)

        single getFirstLineIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_FirstLineIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstLineIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstLineIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstLineIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstLineIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstLineIndent, get=getFirstLineIndent, set=setFirstLineIndent)

        single getLineSpacing();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LineSpacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineSpacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineSpacing(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineSpacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineSpacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineSpacing, get=getLineSpacing, set=setLineSpacing)

        WdLineSpacing getLineSpacingRule();
        %MethodCode
            wpsapi::WdLineSpacing prop = (wpsapi::WdLineSpacing)0;
            HRESULT hr = sipCpp->get_LineSpacingRule(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineSpacingRule()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineSpacingRule(WdLineSpacing prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineSpacingRule(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineSpacingRule()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineSpacingRule, get=getLineSpacingRule, set=setLineSpacingRule)

        single getSpaceBefore();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SpaceBefore(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpaceBefore()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpaceBefore(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpaceBefore(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpaceBefore()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpaceBefore, get=getSpaceBefore, set=setSpaceBefore)

        single getSpaceAfter();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SpaceAfter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpaceAfter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpaceAfter(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpaceAfter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpaceAfter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpaceAfter, get=getSpaceAfter, set=setSpaceAfter)

        long getHyphenation();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Hyphenation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hyphenation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHyphenation(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Hyphenation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Hyphenation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Hyphenation, get=getHyphenation, set=setHyphenation)

        long getWidowControl();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_WidowControl(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WidowControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidowControl(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WidowControl(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WidowControl()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WidowControl, get=getWidowControl, set=setWidowControl)

        long getFarEastLineBreakControl();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FarEastLineBreakControl(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FarEastLineBreakControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFarEastLineBreakControl(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FarEastLineBreakControl(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FarEastLineBreakControl()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FarEastLineBreakControl, get=getFarEastLineBreakControl, set=setFarEastLineBreakControl)

        long getWordWrap();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_WordWrap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WordWrap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWordWrap(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WordWrap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WordWrap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WordWrap, get=getWordWrap, set=setWordWrap)

        long getHangingPunctuation();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HangingPunctuation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HangingPunctuation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHangingPunctuation(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HangingPunctuation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HangingPunctuation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HangingPunctuation, get=getHangingPunctuation, set=setHangingPunctuation)

        long getHalfWidthPunctuationOnTopOfLine();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HalfWidthPunctuationOnTopOfLine(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HalfWidthPunctuationOnTopOfLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHalfWidthPunctuationOnTopOfLine(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HalfWidthPunctuationOnTopOfLine(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HalfWidthPunctuationOnTopOfLine()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HalfWidthPunctuationOnTopOfLine, get=getHalfWidthPunctuationOnTopOfLine, set=setHalfWidthPunctuationOnTopOfLine)

        long getAddSpaceBetweenFarEastAndAlpha();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AddSpaceBetweenFarEastAndAlpha(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddSpaceBetweenFarEastAndAlpha()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddSpaceBetweenFarEastAndAlpha(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AddSpaceBetweenFarEastAndAlpha(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AddSpaceBetweenFarEastAndAlpha()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AddSpaceBetweenFarEastAndAlpha, get=getAddSpaceBetweenFarEastAndAlpha, set=setAddSpaceBetweenFarEastAndAlpha)

        long getAddSpaceBetweenFarEastAndDigit();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AddSpaceBetweenFarEastAndDigit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddSpaceBetweenFarEastAndDigit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddSpaceBetweenFarEastAndDigit(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AddSpaceBetweenFarEastAndDigit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AddSpaceBetweenFarEastAndDigit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AddSpaceBetweenFarEastAndDigit, get=getAddSpaceBetweenFarEastAndDigit, set=setAddSpaceBetweenFarEastAndDigit)

        WdBaselineAlignment getBaseLineAlignment();
        %MethodCode
            wpsapi::WdBaselineAlignment prop = (wpsapi::WdBaselineAlignment)0;
            HRESULT hr = sipCpp->get_BaseLineAlignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BaseLineAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBaseLineAlignment(WdBaselineAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BaseLineAlignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BaseLineAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BaseLineAlignment, get=getBaseLineAlignment, set=setBaseLineAlignment)

        long getAutoAdjustRightIndent();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AutoAdjustRightIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoAdjustRightIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoAdjustRightIndent(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoAdjustRightIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoAdjustRightIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoAdjustRightIndent, get=getAutoAdjustRightIndent, set=setAutoAdjustRightIndent)

        long getDisableLineHeightGrid();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DisableLineHeightGrid(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableLineHeightGrid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableLineHeightGrid(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableLineHeightGrid(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableLineHeightGrid()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableLineHeightGrid, get=getDisableLineHeightGrid, set=setDisableLineHeightGrid)

        TabStops* getTabStops();
        %MethodCode
            wpsapi::TabStops *prop = nullptr;
            HRESULT hr = sipCpp->get_TabStops(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TabStops()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTabStops(TabStops *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TabStops(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TabStops()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TabStops, get=getTabStops, set=setTabStops)

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

        WdOutlineLevel getOutlineLevel();
        %MethodCode
            wpsapi::WdOutlineLevel prop = (wpsapi::WdOutlineLevel)0;
            HRESULT hr = sipCpp->get_OutlineLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutlineLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutlineLevel(WdOutlineLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutlineLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutlineLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutlineLevel, get=getOutlineLevel, set=setOutlineLevel)

        single getCharacterUnitRightIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_CharacterUnitRightIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CharacterUnitRightIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCharacterUnitRightIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CharacterUnitRightIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CharacterUnitRightIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CharacterUnitRightIndent, get=getCharacterUnitRightIndent, set=setCharacterUnitRightIndent)

        single getCharacterUnitLeftIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_CharacterUnitLeftIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CharacterUnitLeftIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCharacterUnitLeftIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CharacterUnitLeftIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CharacterUnitLeftIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CharacterUnitLeftIndent, get=getCharacterUnitLeftIndent, set=setCharacterUnitLeftIndent)

        single getCharacterUnitFirstLineIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_CharacterUnitFirstLineIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CharacterUnitFirstLineIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCharacterUnitFirstLineIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CharacterUnitFirstLineIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CharacterUnitFirstLineIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CharacterUnitFirstLineIndent, get=getCharacterUnitFirstLineIndent, set=setCharacterUnitFirstLineIndent)

        single getLineUnitBefore();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LineUnitBefore(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineUnitBefore()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineUnitBefore(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineUnitBefore(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineUnitBefore()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineUnitBefore, get=getLineUnitBefore, set=setLineUnitBefore)

        single getLineUnitAfter();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LineUnitAfter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineUnitAfter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineUnitAfter(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineUnitAfter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineUnitAfter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineUnitAfter, get=getLineUnitAfter, set=setLineUnitAfter)

        WdReadingOrder getReadingOrder();
        %MethodCode
            wpsapi::WdReadingOrder prop = (wpsapi::WdReadingOrder)0;
            HRESULT hr = sipCpp->get_ReadingOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingOrder(WdReadingOrder prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingOrder, get=getReadingOrder, set=setReadingOrder)

        long getSpaceBeforeAuto();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SpaceBeforeAuto(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpaceBeforeAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpaceBeforeAuto(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpaceBeforeAuto(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpaceBeforeAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpaceBeforeAuto, get=getSpaceBeforeAuto, set=setSpaceBeforeAuto)

        long getSpaceAfterAuto();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SpaceAfterAuto(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpaceAfterAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpaceAfterAuto(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpaceAfterAuto(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpaceAfterAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpaceAfterAuto, get=getSpaceAfterAuto, set=setSpaceAfterAuto)

        long getMirrorIndents();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MirrorIndents(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MirrorIndents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMirrorIndents(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MirrorIndents(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MirrorIndents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MirrorIndents, get=getMirrorIndents, set=setMirrorIndents)

        WdTextboxTightWrap getTextboxTightWrap();
        %MethodCode
            wpsapi::WdTextboxTightWrap prop = (wpsapi::WdTextboxTightWrap)0;
            HRESULT hr = sipCpp->get_TextboxTightWrap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextboxTightWrap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextboxTightWrap(WdTextboxTightWrap prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextboxTightWrap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextboxTightWrap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextboxTightWrap, get=getTextboxTightWrap, set=setTextboxTightWrap)

        long getCollapsedByDefault();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CollapsedByDefault(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CollapsedByDefault()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCollapsedByDefault(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CollapsedByDefault(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CollapsedByDefault()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CollapsedByDefault, get=getCollapsedByDefault, set=setCollapsedByDefault)
    };
};
