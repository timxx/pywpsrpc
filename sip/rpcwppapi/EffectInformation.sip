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

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

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

    };
};
