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

        int getTop();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTop(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Top(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Top()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Top, get=getTop, set=setTop)

        int getLeft();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeft(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Left(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Left()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Left, get=getLeft, set=setLeft)

        Balloon* getNewBalloon();
        %MethodCode
            ksoapi::Balloon *prop = nullptr;
            HRESULT hr = sipCpp->get_NewBalloon(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NewBalloon()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NewBalloon, get=getNewBalloon)

        MsoBalloonErrorType getBalloonError();
        %MethodCode
            ksoapi::MsoBalloonErrorType prop = (ksoapi::MsoBalloonErrorType)0;
            HRESULT hr = sipCpp->get_BalloonError(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BalloonError()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BalloonError, get=getBalloonError)

        VARIANT_BOOL getVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

        MsoAnimationType getAnimation();
        %MethodCode
            ksoapi::MsoAnimationType prop = (ksoapi::MsoAnimationType)0;
            HRESULT hr = sipCpp->get_Animation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Animation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAnimation(MsoAnimationType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Animation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Animation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Animation, get=getAnimation, set=setAnimation)

        VARIANT_BOOL getReduced();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Reduced(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reduced()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReduced(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Reduced(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Reduced()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Reduced, get=getReduced, set=setReduced)

        VARIANT_BOOL getAssistWithHelp();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AssistWithHelp(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AssistWithHelp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAssistWithHelp(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AssistWithHelp(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AssistWithHelp()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AssistWithHelp, get=getAssistWithHelp, set=setAssistWithHelp)

        VARIANT_BOOL getAssistWithWizards();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AssistWithWizards(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AssistWithWizards()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAssistWithWizards(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AssistWithWizards(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AssistWithWizards()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AssistWithWizards, get=getAssistWithWizards, set=setAssistWithWizards)

        VARIANT_BOOL getAssistWithAlerts();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AssistWithAlerts(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AssistWithAlerts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAssistWithAlerts(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AssistWithAlerts(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AssistWithAlerts()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AssistWithAlerts, get=getAssistWithAlerts, set=setAssistWithAlerts)

        VARIANT_BOOL getMoveWhenInTheWay();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MoveWhenInTheWay(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MoveWhenInTheWay()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMoveWhenInTheWay(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MoveWhenInTheWay(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MoveWhenInTheWay()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MoveWhenInTheWay, get=getMoveWhenInTheWay, set=setMoveWhenInTheWay)

        VARIANT_BOOL getSounds();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Sounds(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sounds()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSounds(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Sounds(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Sounds()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Sounds, get=getSounds, set=setSounds)

        VARIANT_BOOL getFeatureTips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FeatureTips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FeatureTips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFeatureTips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FeatureTips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FeatureTips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FeatureTips, get=getFeatureTips, set=setFeatureTips)

        VARIANT_BOOL getMouseTips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MouseTips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MouseTips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMouseTips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MouseTips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MouseTips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MouseTips, get=getMouseTips, set=setMouseTips)

        VARIANT_BOOL getKeyboardShortcutTips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_KeyboardShortcutTips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeyboardShortcutTips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKeyboardShortcutTips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KeyboardShortcutTips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KeyboardShortcutTips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KeyboardShortcutTips, get=getKeyboardShortcutTips, set=setKeyboardShortcutTips)

        VARIANT_BOOL getHighPriorityTips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HighPriorityTips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HighPriorityTips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHighPriorityTips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HighPriorityTips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HighPriorityTips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HighPriorityTips, get=getHighPriorityTips, set=setHighPriorityTips)

        VARIANT_BOOL getTipOfDay();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TipOfDay(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TipOfDay()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTipOfDay(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TipOfDay(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TipOfDay()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TipOfDay, get=getTipOfDay, set=setTipOfDay)

        VARIANT_BOOL getGuessHelp();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_GuessHelp(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GuessHelp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGuessHelp(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GuessHelp(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GuessHelp()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GuessHelp, get=getGuessHelp, set=setGuessHelp)

        VARIANT_BOOL getSearchWhenProgramming();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SearchWhenProgramming(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SearchWhenProgramming()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSearchWhenProgramming(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SearchWhenProgramming(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SearchWhenProgramming()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SearchWhenProgramming, get=getSearchWhenProgramming, set=setSearchWhenProgramming)

        BSTR getItem();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Item(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Item()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Item, get=getItem)

        BSTR getFileName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FileName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFileName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FileName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FileName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FileName, get=getFileName, set=setFileName)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Name, get=getName)

        VARIANT_BOOL getOn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_On(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_On()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOn(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_On(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_On()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=On, get=getOn, set=setOn)
    };
};
