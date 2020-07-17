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
    struct Timing : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Duration(
            single *Duration /Out/) = 0;

        virtual HRESULT put_Duration(
            single Duration) = 0;

        virtual HRESULT get_TriggerType(
            MsoAnimTriggerType *TriggerType /Out/) = 0;

        virtual HRESULT put_TriggerType(
            MsoAnimTriggerType TriggerType) = 0;

        virtual HRESULT get_TriggerDelayTime(
            single *TriggerDelayTime /Out/) = 0;

        virtual HRESULT put_TriggerDelayTime(
            single TriggerDelayTime) = 0;

        virtual HRESULT get_TriggerShape(
            Shape **TriggerShape /Out/) = 0;

        virtual HRESULT put_TriggerShape(
            Shape *TriggerShape) = 0;

        virtual HRESULT get_RepeatCount(
            int *RepeatCount /Out/) = 0;

        virtual HRESULT put_RepeatCount(
            int RepeatCount) = 0;

        virtual HRESULT get_RepeatDuration(
            single *RepeatDuration /Out/) = 0;

        virtual HRESULT put_RepeatDuration(
            single RepeatDuration) = 0;

        virtual HRESULT get_Speed(
            single *Speed /Out/) = 0;

        virtual HRESULT put_Speed(
            single Speed) = 0;

        virtual HRESULT get_Accelerate(
            single *Accelerate /Out/) = 0;

        virtual HRESULT put_Accelerate(
            single Accelerate) = 0;

        virtual HRESULT get_Decelerate(
            single *Decelerate /Out/) = 0;

        virtual HRESULT put_Decelerate(
            single Decelerate) = 0;

        virtual HRESULT get_AutoReverse(
            MsoTriState *AutoReverse /Out/) = 0;

        virtual HRESULT put_AutoReverse(
            MsoTriState AutoReverse) = 0;

        virtual HRESULT get_SmoothStart(
            MsoTriState *SmoothStart /Out/) = 0;

        virtual HRESULT put_SmoothStart(
            MsoTriState SmoothStart) = 0;

        virtual HRESULT get_SmoothEnd(
            MsoTriState *SmoothEnd /Out/) = 0;

        virtual HRESULT put_SmoothEnd(
            MsoTriState SmoothEnd) = 0;

        virtual HRESULT get_RewindAtEnd(
            MsoTriState *RewindAtEnd /Out/) = 0;

        virtual HRESULT put_RewindAtEnd(
            MsoTriState RewindAtEnd) = 0;

        virtual HRESULT get_Restart(
            MsoAnimEffectRestart *Restart /Out/) = 0;

        virtual HRESULT put_Restart(
            MsoAnimEffectRestart Restart) = 0;

        virtual HRESULT get_BounceEnd(
            MsoTriState *BounceEnd /Out/) = 0;

        virtual HRESULT put_BounceEnd(
            MsoTriState BounceEnd) = 0;

        virtual HRESULT get_BounceEndIntensity(
            single *BounceEndIntensity /Out/) = 0;

        virtual HRESULT put_BounceEndIntensity(
            single BounceEndIntensity) = 0;

        virtual HRESULT get_TriggerBookmark(
            BSTR *TriggerBookmark /Out/) = 0;

        virtual HRESULT put_TriggerBookmark(
            BSTR TriggerBookmark) = 0;

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

        MsoAnimTriggerType getTriggerType();
        %MethodCode
            wppapi::MsoAnimTriggerType prop = (wppapi::MsoAnimTriggerType)0;
            HRESULT hr = sipCpp->get_TriggerType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TriggerType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTriggerType(MsoAnimTriggerType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TriggerType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TriggerType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TriggerType, get=getTriggerType, set=setTriggerType)

        single getTriggerDelayTime();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_TriggerDelayTime(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TriggerDelayTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTriggerDelayTime(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TriggerDelayTime(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TriggerDelayTime()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TriggerDelayTime, get=getTriggerDelayTime, set=setTriggerDelayTime)

        Shape* getTriggerShape();
        %MethodCode
            wppapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_TriggerShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TriggerShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTriggerShape(Shape *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TriggerShape(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TriggerShape()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TriggerShape, get=getTriggerShape, set=setTriggerShape)

        int getRepeatCount();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_RepeatCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RepeatCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRepeatCount(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RepeatCount(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RepeatCount()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RepeatCount, get=getRepeatCount, set=setRepeatCount)

        single getRepeatDuration();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_RepeatDuration(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RepeatDuration()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRepeatDuration(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RepeatDuration(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RepeatDuration()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RepeatDuration, get=getRepeatDuration, set=setRepeatDuration)

        single getSpeed();
        %MethodCode
            wppapi::single prop = 0;
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

        PyObject* setSpeed(single prop);
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

        single getAccelerate();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Accelerate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Accelerate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAccelerate(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Accelerate(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Accelerate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Accelerate, get=getAccelerate, set=setAccelerate)

        single getDecelerate();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Decelerate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Decelerate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDecelerate(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Decelerate(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Decelerate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Decelerate, get=getDecelerate, set=setDecelerate)

        MsoTriState getAutoReverse();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AutoReverse(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoReverse()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoReverse(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoReverse(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoReverse()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoReverse, get=getAutoReverse, set=setAutoReverse)

        MsoTriState getSmoothStart();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_SmoothStart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmoothStart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmoothStart(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SmoothStart(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SmoothStart()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SmoothStart, get=getSmoothStart, set=setSmoothStart)

        MsoTriState getSmoothEnd();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_SmoothEnd(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmoothEnd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmoothEnd(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SmoothEnd(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SmoothEnd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SmoothEnd, get=getSmoothEnd, set=setSmoothEnd)

        MsoTriState getRewindAtEnd();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_RewindAtEnd(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RewindAtEnd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRewindAtEnd(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RewindAtEnd(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RewindAtEnd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RewindAtEnd, get=getRewindAtEnd, set=setRewindAtEnd)

        MsoAnimEffectRestart getRestart();
        %MethodCode
            wppapi::MsoAnimEffectRestart prop = (wppapi::MsoAnimEffectRestart)0;
            HRESULT hr = sipCpp->get_Restart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Restart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRestart(MsoAnimEffectRestart prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Restart(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Restart()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Restart, get=getRestart, set=setRestart)

        MsoTriState getBounceEnd();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_BounceEnd(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BounceEnd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBounceEnd(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BounceEnd(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BounceEnd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BounceEnd, get=getBounceEnd, set=setBounceEnd)

        single getBounceEndIntensity();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_BounceEndIntensity(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BounceEndIntensity()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBounceEndIntensity(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BounceEndIntensity(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BounceEndIntensity()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BounceEndIntensity, get=getBounceEndIntensity, set=setBounceEndIntensity)

        BSTR getTriggerBookmark();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TriggerBookmark(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TriggerBookmark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTriggerBookmark(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TriggerBookmark(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TriggerBookmark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TriggerBookmark, get=getTriggerBookmark, set=setTriggerBookmark)
    };
};
