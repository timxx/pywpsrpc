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
    struct AnimationSettings : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_DimColor(
            ColorFormat **DimColor /Out/) = 0;

        virtual HRESULT get_SoundEffect(
            SoundEffect **SoundEffect /Out/) = 0;

        virtual HRESULT get_EntryEffect(
            PpEntryEffect *EntryEffect /Out/) = 0;

        virtual HRESULT put_EntryEffect(
            PpEntryEffect EntryEffect) = 0;

        virtual HRESULT get_AfterEffect(
            PpAfterEffect *AfterEffect /Out/) = 0;

        virtual HRESULT put_AfterEffect(
            PpAfterEffect AfterEffect) = 0;

        virtual HRESULT get_AnimationOrder(
            int *AnimationOrder /Out/) = 0;

        virtual HRESULT put_AnimationOrder(
            int AnimationOrder) = 0;

        virtual HRESULT get_AdvanceMode(
            PpAdvanceMode *AdvanceMode /Out/) = 0;

        virtual HRESULT put_AdvanceMode(
            PpAdvanceMode AdvanceMode) = 0;

        virtual HRESULT get_AdvanceTime(
            single *AdvanceTime /Out/) = 0;

        virtual HRESULT put_AdvanceTime(
            single AdvanceTime) = 0;

        virtual HRESULT get_PlaySettings(
            PlaySettings **PlaySettings /Out/) = 0;

        virtual HRESULT get_TextLevelEffect(
            PpTextLevelEffect *TextLevelEffect /Out/) = 0;

        virtual HRESULT put_TextLevelEffect(
            PpTextLevelEffect TextLevelEffect) = 0;

        virtual HRESULT get_TextUnitEffect(
            PpTextUnitEffect *TextUnitEffect /Out/) = 0;

        virtual HRESULT put_TextUnitEffect(
            PpTextUnitEffect TextUnitEffect) = 0;

        virtual HRESULT get_Animate(
            MsoTriState *Animate /Out/) = 0;

        virtual HRESULT put_Animate(
            MsoTriState Animate) = 0;

        virtual HRESULT get_AnimateBackground(
            MsoTriState *AnimateBackground /Out/) = 0;

        virtual HRESULT put_AnimateBackground(
            MsoTriState AnimateBackground) = 0;

        virtual HRESULT get_AnimateTextInReverse(
            MsoTriState *AnimateTextInReverse /Out/) = 0;

        virtual HRESULT put_AnimateTextInReverse(
            MsoTriState AnimateTextInReverse) = 0;

        virtual HRESULT get_ChartUnitEffect(
            PpChartUnitEffect *ChartUnitEffect /Out/) = 0;

        virtual HRESULT put_ChartUnitEffect(
            PpChartUnitEffect ChartUnitEffect) = 0;

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

        ColorFormat* getDimColor();
        %MethodCode
            wppapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_DimColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DimColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DimColor, get=getDimColor)

        SoundEffect* getSoundEffect();
        %MethodCode
            wppapi::SoundEffect *prop = nullptr;
            HRESULT hr = sipCpp->get_SoundEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SoundEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SoundEffect, get=getSoundEffect)

        PpEntryEffect getEntryEffect();
        %MethodCode
            wppapi::PpEntryEffect prop = (wppapi::PpEntryEffect)0;
            HRESULT hr = sipCpp->get_EntryEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EntryEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEntryEffect(PpEntryEffect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EntryEffect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EntryEffect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EntryEffect, get=getEntryEffect, set=setEntryEffect)

        PpAfterEffect getAfterEffect();
        %MethodCode
            wppapi::PpAfterEffect prop = (wppapi::PpAfterEffect)0;
            HRESULT hr = sipCpp->get_AfterEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AfterEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAfterEffect(PpAfterEffect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AfterEffect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AfterEffect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AfterEffect, get=getAfterEffect, set=setAfterEffect)

        int getAnimationOrder();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_AnimationOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AnimationOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAnimationOrder(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AnimationOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AnimationOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AnimationOrder, get=getAnimationOrder, set=setAnimationOrder)

        PpAdvanceMode getAdvanceMode();
        %MethodCode
            wppapi::PpAdvanceMode prop = (wppapi::PpAdvanceMode)0;
            HRESULT hr = sipCpp->get_AdvanceMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AdvanceMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAdvanceMode(PpAdvanceMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AdvanceMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AdvanceMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AdvanceMode, get=getAdvanceMode, set=setAdvanceMode)

        single getAdvanceTime();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_AdvanceTime(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AdvanceTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAdvanceTime(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AdvanceTime(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AdvanceTime()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AdvanceTime, get=getAdvanceTime, set=setAdvanceTime)

        PlaySettings* getPlaySettings();
        %MethodCode
            wppapi::PlaySettings *prop = nullptr;
            HRESULT hr = sipCpp->get_PlaySettings(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlaySettings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PlaySettings, get=getPlaySettings)

        PpTextLevelEffect getTextLevelEffect();
        %MethodCode
            wppapi::PpTextLevelEffect prop = (wppapi::PpTextLevelEffect)0;
            HRESULT hr = sipCpp->get_TextLevelEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextLevelEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextLevelEffect(PpTextLevelEffect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextLevelEffect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextLevelEffect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextLevelEffect, get=getTextLevelEffect, set=setTextLevelEffect)

        PpTextUnitEffect getTextUnitEffect();
        %MethodCode
            wppapi::PpTextUnitEffect prop = (wppapi::PpTextUnitEffect)0;
            HRESULT hr = sipCpp->get_TextUnitEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextUnitEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextUnitEffect(PpTextUnitEffect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextUnitEffect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextUnitEffect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextUnitEffect, get=getTextUnitEffect, set=setTextUnitEffect)

        MsoTriState getAnimate();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Animate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Animate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAnimate(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Animate(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Animate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Animate, get=getAnimate, set=setAnimate)

        MsoTriState getAnimateBackground();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AnimateBackground(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AnimateBackground()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAnimateBackground(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AnimateBackground(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AnimateBackground()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AnimateBackground, get=getAnimateBackground, set=setAnimateBackground)

        MsoTriState getAnimateTextInReverse();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AnimateTextInReverse(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AnimateTextInReverse()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAnimateTextInReverse(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AnimateTextInReverse(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AnimateTextInReverse()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AnimateTextInReverse, get=getAnimateTextInReverse, set=setAnimateTextInReverse)

        PpChartUnitEffect getChartUnitEffect();
        %MethodCode
            wppapi::PpChartUnitEffect prop = (wppapi::PpChartUnitEffect)0;
            HRESULT hr = sipCpp->get_ChartUnitEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartUnitEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartUnitEffect(PpChartUnitEffect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartUnitEffect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartUnitEffect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartUnitEffect, get=getChartUnitEffect, set=setChartUnitEffect)
    };
};
