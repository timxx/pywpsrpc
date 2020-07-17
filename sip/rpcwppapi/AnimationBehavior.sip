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
    struct AnimationBehavior : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Additive(
            MsoAnimAdditive *Additive /Out/) = 0;

        virtual HRESULT put_Additive(
            MsoAnimAdditive Additive) = 0;

        virtual HRESULT get_Accumulate(
            MsoAnimAccumulate *Accumulate /Out/) = 0;

        virtual HRESULT put_Accumulate(
            MsoAnimAccumulate Accumulate) = 0;

        virtual HRESULT get_Type(
            MsoAnimType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoAnimType Type) = 0;

        virtual HRESULT get_MotionEffect(
            MotionEffect **MotionEffect /Out/) = 0;

        virtual HRESULT get_ColorEffect(
            ColorEffect **ColorEffect /Out/) = 0;

        virtual HRESULT get_ScaleEffect(
            ScaleEffect **ScaleEffect /Out/) = 0;

        virtual HRESULT get_RotationEffect(
            RotationEffect **RotationEffect /Out/) = 0;

        virtual HRESULT get_PropertyEffect(
            PropertyEffect **PropertyEffect /Out/) = 0;

        virtual HRESULT get_Timing(
            Timing **Timing /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_CommandEffect(
            CommandEffect **CommandEffect /Out/) = 0;

        virtual HRESULT get_FilterEffect(
            FilterEffect **FilterEffect /Out/) = 0;

        virtual HRESULT get_SetEffect(
            SetEffect **SetEffect /Out/) = 0;

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

        MsoAnimAdditive getAdditive();
        %MethodCode
            wppapi::MsoAnimAdditive prop = (wppapi::MsoAnimAdditive)0;
            HRESULT hr = sipCpp->get_Additive(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Additive()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAdditive(MsoAnimAdditive prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Additive(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Additive()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Additive, get=getAdditive, set=setAdditive)

        MsoAnimAccumulate getAccumulate();
        %MethodCode
            wppapi::MsoAnimAccumulate prop = (wppapi::MsoAnimAccumulate)0;
            HRESULT hr = sipCpp->get_Accumulate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Accumulate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAccumulate(MsoAnimAccumulate prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Accumulate(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Accumulate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Accumulate, get=getAccumulate, set=setAccumulate)

        MsoAnimType getType();
        %MethodCode
            wppapi::MsoAnimType prop = (wppapi::MsoAnimType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setType(MsoAnimType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        MotionEffect* getMotionEffect();
        %MethodCode
            wppapi::MotionEffect *prop = nullptr;
            HRESULT hr = sipCpp->get_MotionEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MotionEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MotionEffect, get=getMotionEffect)

        ColorEffect* getColorEffect();
        %MethodCode
            wppapi::ColorEffect *prop = nullptr;
            HRESULT hr = sipCpp->get_ColorEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColorEffect, get=getColorEffect)

        ScaleEffect* getScaleEffect();
        %MethodCode
            wppapi::ScaleEffect *prop = nullptr;
            HRESULT hr = sipCpp->get_ScaleEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScaleEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ScaleEffect, get=getScaleEffect)

        RotationEffect* getRotationEffect();
        %MethodCode
            wppapi::RotationEffect *prop = nullptr;
            HRESULT hr = sipCpp->get_RotationEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RotationEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RotationEffect, get=getRotationEffect)

        PropertyEffect* getPropertyEffect();
        %MethodCode
            wppapi::PropertyEffect *prop = nullptr;
            HRESULT hr = sipCpp->get_PropertyEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PropertyEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PropertyEffect, get=getPropertyEffect)

        Timing* getTiming();
        %MethodCode
            wppapi::Timing *prop = nullptr;
            HRESULT hr = sipCpp->get_Timing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Timing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Timing, get=getTiming)

        CommandEffect* getCommandEffect();
        %MethodCode
            wppapi::CommandEffect *prop = nullptr;
            HRESULT hr = sipCpp->get_CommandEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CommandEffect, get=getCommandEffect)

        FilterEffect* getFilterEffect();
        %MethodCode
            wppapi::FilterEffect *prop = nullptr;
            HRESULT hr = sipCpp->get_FilterEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FilterEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FilterEffect, get=getFilterEffect)

        SetEffect* getSetEffect();
        %MethodCode
            wppapi::SetEffect *prop = nullptr;
            HRESULT hr = sipCpp->get_SetEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SetEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SetEffect, get=getSetEffect)
    };
};
