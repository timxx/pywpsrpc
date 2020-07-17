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
    struct SlideShowTransition : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_AdvanceOnClick(
            MsoTriState *AdvanceOnClick /Out/) = 0;

        virtual HRESULT put_AdvanceOnClick(
            MsoTriState AdvanceOnClick) = 0;

        virtual HRESULT get_AdvanceOnTime(
            MsoTriState *AdvanceOnTime /Out/) = 0;

        virtual HRESULT put_AdvanceOnTime(
            MsoTriState AdvanceOnTime) = 0;

        virtual HRESULT get_AdvanceTime(
            single *AdvanceTime /Out/) = 0;

        virtual HRESULT put_AdvanceTime(
            single AdvanceTime) = 0;

        virtual HRESULT get_EntryEffect(
            PpEntryEffect *EntryEffect /Out/) = 0;

        virtual HRESULT put_EntryEffect(
            PpEntryEffect EntryEffect) = 0;

        virtual HRESULT get_Hidden(
            MsoTriState *Hidden /Out/) = 0;

        virtual HRESULT put_Hidden(
            MsoTriState Hidden) = 0;

        virtual HRESULT get_LoopSoundUntilNext(
            MsoTriState *LoopSoundUntilNext /Out/) = 0;

        virtual HRESULT put_LoopSoundUntilNext(
            MsoTriState LoopSoundUntilNext) = 0;

        virtual HRESULT get_SoundEffect(
            SoundEffect **SoundEffect /Out/) = 0;

        virtual HRESULT get_Speed(
            PpTransitionSpeed *Speed /Out/) = 0;

        virtual HRESULT put_Speed(
            PpTransitionSpeed Speed) = 0;

        virtual HRESULT get_Duration(
            single *Duration /Out/) = 0;

        virtual HRESULT put_Duration(
            single Duration) = 0;

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

        MsoTriState getAdvanceOnClick();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AdvanceOnClick(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AdvanceOnClick()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAdvanceOnClick(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AdvanceOnClick(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AdvanceOnClick()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AdvanceOnClick, get=getAdvanceOnClick, set=setAdvanceOnClick)

        MsoTriState getAdvanceOnTime();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AdvanceOnTime(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AdvanceOnTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAdvanceOnTime(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AdvanceOnTime(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AdvanceOnTime()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AdvanceOnTime, get=getAdvanceOnTime, set=setAdvanceOnTime)

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

        MsoTriState getHidden();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Hidden(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHidden(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Hidden(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Hidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Hidden, get=getHidden, set=setHidden)

        MsoTriState getLoopSoundUntilNext();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_LoopSoundUntilNext(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LoopSoundUntilNext()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLoopSoundUntilNext(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LoopSoundUntilNext(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LoopSoundUntilNext()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LoopSoundUntilNext, get=getLoopSoundUntilNext, set=setLoopSoundUntilNext)

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

        PpTransitionSpeed getSpeed();
        %MethodCode
            wppapi::PpTransitionSpeed prop = (wppapi::PpTransitionSpeed)0;
            HRESULT hr = sipCpp->get_Speed(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Speed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpeed(PpTransitionSpeed prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Speed(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Speed()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Speed, get=getSpeed, set=setSpeed)

        single getDuration();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Duration(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Duration()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDuration(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Duration(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Duration()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Duration, get=getDuration, set=setDuration)
    };
};
