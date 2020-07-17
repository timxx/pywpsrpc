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
    struct EffectInformation : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_AfterEffect(
            MsoAnimAfterEffect *AfterEffect /Out/) = 0;

        virtual HRESULT get_AnimateBackground(
            MsoTriState *AnimateBackground /Out/) = 0;

        virtual HRESULT get_AnimateTextInReverse(
            MsoTriState *AnimateTextInReverse /Out/) = 0;

        virtual HRESULT get_BuildByLevelEffect(
            MsoAnimateByLevel *BuildByLevelEffect /Out/) = 0;

        virtual HRESULT get_Dim(
            ColorFormat **Dim /Out/) = 0;

        virtual HRESULT get_PlaySettings(
            PlaySettings **PlaySettings /Out/) = 0;

        virtual HRESULT get_SoundEffect(
            SoundEffect **SoundEffect /Out/) = 0;

        virtual HRESULT get_TextUnitEffect(
            MsoAnimTextUnitEffect *TextUnitEffect /Out/) = 0;

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

        MsoAnimAfterEffect getAfterEffect();
        %MethodCode
            wppapi::MsoAnimAfterEffect prop = (wppapi::MsoAnimAfterEffect)0;
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

        %Property(name=AfterEffect, get=getAfterEffect)

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

        %Property(name=AnimateBackground, get=getAnimateBackground)

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

        %Property(name=AnimateTextInReverse, get=getAnimateTextInReverse)

        MsoAnimateByLevel getBuildByLevelEffect();
        %MethodCode
            wppapi::MsoAnimateByLevel prop = (wppapi::MsoAnimateByLevel)0;
            HRESULT hr = sipCpp->get_BuildByLevelEffect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuildByLevelEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuildByLevelEffect, get=getBuildByLevelEffect)

        ColorFormat* getDim();
        %MethodCode
            wppapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Dim(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dim()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Dim, get=getDim)

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

        MsoAnimTextUnitEffect getTextUnitEffect();
        %MethodCode
            wppapi::MsoAnimTextUnitEffect prop = (wppapi::MsoAnimTextUnitEffect)0;
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

        %Property(name=TextUnitEffect, get=getTextUnitEffect)
    };
};
