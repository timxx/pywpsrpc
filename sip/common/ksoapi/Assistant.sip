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
    struct Assistant : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT Move(
            int xLeft,
            int yTop) = 0;

        virtual HRESULT put_Top(
            int pyTop) = 0;

        virtual HRESULT get_Top(
            int *pyTop /Out/) = 0;

        virtual HRESULT put_Left(
            int pxLeft) = 0;

        virtual HRESULT get_Left(
            int *pxLeft /Out/) = 0;

        virtual HRESULT Help() = 0;

        virtual HRESULT StartWizard(
            VARIANT_BOOL On,
            BSTR Callback,
            long PrivateX,
            VARIANT Animation = argMissing2(),
            VARIANT CustomTeaser = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT Left = argMissing2(),
            VARIANT Bottom = argMissing2(),
            VARIANT Right = argMissing2(),
            long *plWizID /Out/ = 0) = 0;

        virtual HRESULT EndWizard(
            long WizardID,
            VARIANT_BOOL varfSuccess,
            VARIANT Animation = argMissing2()) = 0;

        virtual HRESULT ActivateWizard(
            long WizardID,
            MsoWizardActType act,
            VARIANT Animation = argMissing2()) = 0;

        virtual HRESULT ResetTips() = 0;

        virtual HRESULT get_NewBalloon(
            Balloon **ppibal /Out/) = 0;

        virtual HRESULT get_BalloonError(
            MsoBalloonErrorType *pbne /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *pvarfVisible /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL pvarfVisible) = 0;

        virtual HRESULT get_Animation(
            MsoAnimationType *pfca /Out/) = 0;

        virtual HRESULT put_Animation(
            MsoAnimationType pfca) = 0;

        virtual HRESULT get_Reduced(
            VARIANT_BOOL *pvarfReduced /Out/) = 0;

        virtual HRESULT put_Reduced(
            VARIANT_BOOL pvarfReduced) = 0;

        virtual HRESULT put_AssistWithHelp(
            VARIANT_BOOL pvarfAssistWithHelp) = 0;

        virtual HRESULT get_AssistWithHelp(
            VARIANT_BOOL *pvarfAssistWithHelp /Out/) = 0;

        virtual HRESULT put_AssistWithWizards(
            VARIANT_BOOL pvarfAssistWithWizards) = 0;

        virtual HRESULT get_AssistWithWizards(
            VARIANT_BOOL *pvarfAssistWithWizards /Out/) = 0;

        virtual HRESULT put_AssistWithAlerts(
            VARIANT_BOOL pvarfAssistWithAlerts) = 0;

        virtual HRESULT get_AssistWithAlerts(
            VARIANT_BOOL *pvarfAssistWithAlerts /Out/) = 0;

        virtual HRESULT put_MoveWhenInTheWay(
            VARIANT_BOOL pvarfMove) = 0;

        virtual HRESULT get_MoveWhenInTheWay(
            VARIANT_BOOL *pvarfMove /Out/) = 0;

        virtual HRESULT put_Sounds(
            VARIANT_BOOL pvarfSounds) = 0;

        virtual HRESULT get_Sounds(
            VARIANT_BOOL *pvarfSounds /Out/) = 0;

        virtual HRESULT put_FeatureTips(
            VARIANT_BOOL pvarfFeatures) = 0;

        virtual HRESULT get_FeatureTips(
            VARIANT_BOOL *pvarfFeatures /Out/) = 0;

        virtual HRESULT put_MouseTips(
            VARIANT_BOOL pvarfMouse) = 0;

        virtual HRESULT get_MouseTips(
            VARIANT_BOOL *pvarfMouse /Out/) = 0;

        virtual HRESULT put_KeyboardShortcutTips(
            VARIANT_BOOL pvarfKeyboardShortcuts) = 0;

        virtual HRESULT get_KeyboardShortcutTips(
            VARIANT_BOOL *pvarfKeyboardShortcuts /Out/) = 0;

        virtual HRESULT put_HighPriorityTips(
            VARIANT_BOOL pvarfHighPriorityTips) = 0;

        virtual HRESULT get_HighPriorityTips(
            VARIANT_BOOL *pvarfHighPriorityTips /Out/) = 0;

        virtual HRESULT put_TipOfDay(
            VARIANT_BOOL pvarfTipOfDay) = 0;

        virtual HRESULT get_TipOfDay(
            VARIANT_BOOL *pvarfTipOfDay /Out/) = 0;

        virtual HRESULT put_GuessHelp(
            VARIANT_BOOL pvarfGuessHelp) = 0;

        virtual HRESULT get_GuessHelp(
            VARIANT_BOOL *pvarfGuessHelp /Out/) = 0;

        virtual HRESULT put_SearchWhenProgramming(
            VARIANT_BOOL pvarfSearchInProgram) = 0;

        virtual HRESULT get_SearchWhenProgramming(
            VARIANT_BOOL *pvarfSearchInProgram /Out/) = 0;

        virtual HRESULT get_Item(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_FileName(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_FileName(
            BSTR pbstr) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_On(
            VARIANT_BOOL *pvarfOn /Out/) = 0;

        virtual HRESULT put_On(
            VARIANT_BOOL pvarfOn) = 0;

        virtual HRESULT DoAlert(
            BSTR bstrAlertTitle,
            BSTR bstrAlertText,
            MsoAlertButtonType alb,
            MsoAlertIconType alc,
            MsoAlertDefaultType ald,
            MsoAlertCancelType alq,
            VARIANT_BOOL varfSysAlert,
            int *pibtn /Out/) = 0;

    };
};
