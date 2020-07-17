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
    struct ParagraphFormat2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Alignment(
            MsoParagraphAlignment *Alignment /Out/) = 0;

        virtual HRESULT put_Alignment(
            MsoParagraphAlignment Alignment) = 0;

        virtual HRESULT get_BaselineAlignment(
            MsoBaselineAlignment *BaselineAlignment /Out/) = 0;

        virtual HRESULT put_BaselineAlignment(
            MsoBaselineAlignment BaselineAlignment) = 0;

        virtual HRESULT get_Bullet(
            BulletFormat2 **Bullet /Out/) = 0;

        virtual HRESULT get_FarEastLineBreakLevel(
            MsoTriState *Break /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLevel(
            MsoTriState Break) = 0;

        virtual HRESULT get_FirstLineIndent(
            single *Indent /Out/) = 0;

        virtual HRESULT put_FirstLineIndent(
            single Indent) = 0;

        virtual HRESULT get_HangingPunctuation(
            MsoTriState *Hanging /Out/) = 0;

        virtual HRESULT put_HangingPunctuation(
            MsoTriState Hanging) = 0;

        virtual HRESULT get_IndentLevel(
            int *Level /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            int Level) = 0;

        virtual HRESULT get_LeftIndent(
            single *Indent /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single Indent) = 0;

        virtual HRESULT get_LineRuleAfter(
            MsoTriState *LineRule /Out/) = 0;

        virtual HRESULT put_LineRuleAfter(
            MsoTriState LineRule) = 0;

        virtual HRESULT get_LineRuleBefore(
            MsoTriState *LineRule /Out/) = 0;

        virtual HRESULT put_LineRuleBefore(
            MsoTriState LineRule) = 0;

        virtual HRESULT get_LineRuleWithin(
            MsoTriState *LineRule /Out/) = 0;

        virtual HRESULT put_LineRuleWithin(
            MsoTriState LineRule) = 0;

        virtual HRESULT get_RightIndent(
            single *Indent /Out/) = 0;

        virtual HRESULT put_RightIndent(
            single Indent) = 0;

        virtual HRESULT get_SpaceAfter(
            single *Space /Out/) = 0;

        virtual HRESULT put_SpaceAfter(
            single Space) = 0;

        virtual HRESULT get_SpaceBefore(
            single *Space /Out/) = 0;

        virtual HRESULT put_SpaceBefore(
            single Space) = 0;

        virtual HRESULT get_SpaceWithin(
            single *Space /Out/) = 0;

        virtual HRESULT put_SpaceWithin(
            single Space) = 0;

        virtual HRESULT get_TabStops(
            TabStops2 **TabStops /Out/) = 0;

        virtual HRESULT get_TextDirection(
            MsoTextDirection *Direction /Out/) = 0;

        virtual HRESULT put_TextDirection(
            MsoTextDirection Direction) = 0;

        virtual HRESULT get_WordWrap(
            MsoTriState *WordWrap /Out/) = 0;

        virtual HRESULT put_WordWrap(
            MsoTriState WordWrap) = 0;

        MsoParagraphAlignment getAlignment();
        %MethodCode
            ksoapi::MsoParagraphAlignment prop = (ksoapi::MsoParagraphAlignment)0;
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

        PyObject* setAlignment(MsoParagraphAlignment prop);
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

        MsoBaselineAlignment getBaselineAlignment();
        %MethodCode
            ksoapi::MsoBaselineAlignment prop = (ksoapi::MsoBaselineAlignment)0;
            HRESULT hr = sipCpp->get_BaselineAlignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BaselineAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBaselineAlignment(MsoBaselineAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BaselineAlignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BaselineAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BaselineAlignment, get=getBaselineAlignment, set=setBaselineAlignment)

        BulletFormat2* getBullet();
        %MethodCode
            ksoapi::BulletFormat2 *prop = nullptr;
            HRESULT hr = sipCpp->get_Bullet(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bullet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Bullet, get=getBullet)

        MsoTriState getFarEastLineBreakLevel();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_FarEastLineBreakLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FarEastLineBreakLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFarEastLineBreakLevel(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FarEastLineBreakLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FarEastLineBreakLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FarEastLineBreakLevel, get=getFarEastLineBreakLevel, set=setFarEastLineBreakLevel)

        single getFirstLineIndent();
        %MethodCode
            ksoapi::single prop = 0;
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

        MsoTriState getHangingPunctuation();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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

        PyObject* setHangingPunctuation(MsoTriState prop);
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

        single getLeftIndent();
        %MethodCode
            ksoapi::single prop = 0;
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

        MsoTriState getLineRuleAfter();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_LineRuleAfter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineRuleAfter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineRuleAfter(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineRuleAfter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineRuleAfter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineRuleAfter, get=getLineRuleAfter, set=setLineRuleAfter)

        MsoTriState getLineRuleBefore();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_LineRuleBefore(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineRuleBefore()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineRuleBefore(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineRuleBefore(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineRuleBefore()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineRuleBefore, get=getLineRuleBefore, set=setLineRuleBefore)

        MsoTriState getLineRuleWithin();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_LineRuleWithin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineRuleWithin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineRuleWithin(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineRuleWithin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineRuleWithin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineRuleWithin, get=getLineRuleWithin, set=setLineRuleWithin)

        single getRightIndent();
        %MethodCode
            ksoapi::single prop = 0;
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

        single getSpaceAfter();
        %MethodCode
            ksoapi::single prop = 0;
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

        single getSpaceBefore();
        %MethodCode
            ksoapi::single prop = 0;
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

        single getSpaceWithin();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_SpaceWithin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpaceWithin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpaceWithin(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpaceWithin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpaceWithin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpaceWithin, get=getSpaceWithin, set=setSpaceWithin)

        TabStops2* getTabStops();
        %MethodCode
            ksoapi::TabStops2 *prop = nullptr;
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

        %Property(name=TabStops, get=getTabStops)

        MsoTextDirection getTextDirection();
        %MethodCode
            ksoapi::MsoTextDirection prop = (ksoapi::MsoTextDirection)0;
            HRESULT hr = sipCpp->get_TextDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextDirection(MsoTextDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextDirection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextDirection, get=getTextDirection, set=setTextDirection)

        MsoTriState getWordWrap();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
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

        PyObject* setWordWrap(MsoTriState prop);
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
    };
};
