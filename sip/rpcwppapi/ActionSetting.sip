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

        PpActionType getAction();
        %MethodCode
            wppapi::PpActionType prop = (wppapi::PpActionType)0;
            HRESULT hr = sipCpp->get_Action(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Action()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAction(PpActionType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Action(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Action()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Action, get=getAction, set=setAction)

        BSTR getActionVerb();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ActionVerb(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActionVerb()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setActionVerb(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ActionVerb(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ActionVerb()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ActionVerb, get=getActionVerb, set=setActionVerb)

        MsoTriState getAnimateAction();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AnimateAction(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AnimateAction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAnimateAction(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AnimateAction(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AnimateAction()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AnimateAction, get=getAnimateAction, set=setAnimateAction)

        BSTR getRun();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Run(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Run()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRun(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Run(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Run()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Run, get=getRun, set=setRun)

        BSTR getSlideShowName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SlideShowName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideShowName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSlideShowName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SlideShowName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SlideShowName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SlideShowName, get=getSlideShowName, set=setSlideShowName)

        Hyperlink* getHyperlink();
        %MethodCode
            wppapi::Hyperlink *prop = nullptr;
            HRESULT hr = sipCpp->get_Hyperlink(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hyperlink()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hyperlink, get=getHyperlink)

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

        MsoTriState getShowAndReturn();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowAndReturn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAndReturn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAndReturn(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAndReturn(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAndReturn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAndReturn, get=getShowAndReturn, set=setShowAndReturn)
    };
};
