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
    struct ActionSetting : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Action(
            PpActionType *Action /Out/) = 0;

        virtual HRESULT put_Action(
            PpActionType Action) = 0;

        virtual HRESULT get_ActionVerb(
            BSTR *ActionVerb /Out/) = 0;

        virtual HRESULT put_ActionVerb(
            BSTR ActionVerb) = 0;

        virtual HRESULT get_AnimateAction(
            MsoTriState *AnimateAction /Out/) = 0;

        virtual HRESULT put_AnimateAction(
            MsoTriState AnimateAction) = 0;

        virtual HRESULT get_Run(
            BSTR *Run /Out/) = 0;

        virtual HRESULT put_Run(
            BSTR Run) = 0;

        virtual HRESULT get_SlideShowName(
            BSTR *SlideShowName /Out/) = 0;

        virtual HRESULT put_SlideShowName(
            BSTR SlideShowName) = 0;

        virtual HRESULT get_Hyperlink(
            Hyperlink **Hyperlink /Out/) = 0;

        virtual HRESULT get_SoundEffect(
            SoundEffect **SoundEffect /Out/) = 0;

        virtual HRESULT get_ShowAndReturn(
            MsoTriState *ShowAndReturn /Out/) = 0;

        virtual HRESULT put_ShowAndReturn(
            MsoTriState ShowAndReturn) = 0;

    };
};
