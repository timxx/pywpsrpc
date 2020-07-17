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
    struct ParagraphFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Alignment(
            PpParagraphAlignment *Alignment /Out/) = 0;

        virtual HRESULT put_Alignment(
            PpParagraphAlignment Alignment) = 0;

        virtual HRESULT get_Bullet(
            BulletFormat **Bullet /Out/) = 0;

        virtual HRESULT get_LineRuleBefore(
            MsoTriState *LineRuleBefore /Out/) = 0;

        virtual HRESULT put_LineRuleBefore(
            MsoTriState LineRuleBefore) = 0;

        virtual HRESULT get_LineRuleAfter(
            MsoTriState *LineRuleAfter /Out/) = 0;

        virtual HRESULT put_LineRuleAfter(
            MsoTriState LineRuleAfter) = 0;

        virtual HRESULT get_LineRuleWithin(
            MsoTriState *LineRuleWithin /Out/) = 0;

        virtual HRESULT put_LineRuleWithin(
            MsoTriState LineRuleWithin) = 0;

        virtual HRESULT get_SpaceBefore(
            single *SpaceBefore /Out/) = 0;

        virtual HRESULT put_SpaceBefore(
            single SpaceBefore) = 0;

        virtual HRESULT get_SpaceAfter(
            single *SpaceAfter /Out/) = 0;

        virtual HRESULT put_SpaceAfter(
            single SpaceAfter) = 0;

        virtual HRESULT get_SpaceWithin(
            single *SpaceWithin /Out/) = 0;

        virtual HRESULT put_SpaceWithin(
            single SpaceWithin) = 0;

        virtual HRESULT get_BaseLineAlignment(
            PpBaselineAlignment *BaseLineAlignment /Out/) = 0;

        virtual HRESULT put_BaseLineAlignment(
            PpBaselineAlignment BaseLineAlignment) = 0;

        virtual HRESULT get_FarEastLineBreakControl(
            MsoTriState *FarEastLineBreakControl /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakControl(
            MsoTriState FarEastLineBreakControl) = 0;

        virtual HRESULT get_WordWrap(
            MsoTriState *WordWrap /Out/) = 0;

        virtual HRESULT put_WordWrap(
            MsoTriState WordWrap) = 0;

        virtual HRESULT get_HangingPunctuation(
            MsoTriState *HangingPunctuation /Out/) = 0;

        virtual HRESULT put_HangingPunctuation(
            MsoTriState HangingPunctuation) = 0;

        virtual HRESULT get_TextDirection(
            PpDirection *TextDirection /Out/) = 0;

        virtual HRESULT put_TextDirection(
            PpDirection TextDirection) = 0;

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

        PpParagraphAlignment getAlignment();
        %MethodCode
            wppapi::PpParagraphAlignment prop = (wppapi::PpParagraphAlignment)0;
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

        PyObject* setAlignment(PpParagraphAlignment prop);
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

        BulletFormat* getBullet();
        %MethodCode
            wppapi::BulletFormat *prop = nullptr;
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

        MsoTriState getLineRuleBefore();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
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

        MsoTriState getLineRuleAfter();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
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

        MsoTriState getLineRuleWithin();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
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

        single getSpaceBefore();
        %MethodCode
            wppapi::single prop = 0;
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
            wppapi::single prop = 0;
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

        single getSpaceWithin();
        %MethodCode
            wppapi::single prop = 0;
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

        PpBaselineAlignment getBaseLineAlignment();
        %MethodCode
            wppapi::PpBaselineAlignment prop = (wppapi::PpBaselineAlignment)0;
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

        PyObject* setBaseLineAlignment(PpBaselineAlignment prop);
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

        MsoTriState getFarEastLineBreakControl();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
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

        PyObject* setFarEastLineBreakControl(MsoTriState prop);
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

        MsoTriState getWordWrap();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
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

        MsoTriState getHangingPunctuation();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
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

        PpDirection getTextDirection();
        %MethodCode
            wppapi::PpDirection prop = (wppapi::PpDirection)0;
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

        PyObject* setTextDirection(PpDirection prop);
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
    };
};
