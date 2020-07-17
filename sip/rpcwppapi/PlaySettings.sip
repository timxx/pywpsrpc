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
    struct PlaySettings : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_ActionVerb(
            BSTR *ActionVerb /Out/) = 0;

        virtual HRESULT put_ActionVerb(
            BSTR ActionVerb) = 0;

        virtual HRESULT get_HideWhileNotPlaying(
            MsoTriState *HideWhileNotPlaying /Out/) = 0;

        virtual HRESULT put_HideWhileNotPlaying(
            MsoTriState HideWhileNotPlaying) = 0;

        virtual HRESULT get_LoopUntilStopped(
            MsoTriState *LoopUntilStopped /Out/) = 0;

        virtual HRESULT put_LoopUntilStopped(
            MsoTriState LoopUntilStopped) = 0;

        virtual HRESULT get_PlayOnEntry(
            MsoTriState *PlayOnEntry /Out/) = 0;

        virtual HRESULT put_PlayOnEntry(
            MsoTriState PlayOnEntry) = 0;

        virtual HRESULT get_RewindMovie(
            MsoTriState *RewindMovie /Out/) = 0;

        virtual HRESULT put_RewindMovie(
            MsoTriState RewindMovie) = 0;

        virtual HRESULT get_PauseAnimation(
            MsoTriState *PauseAnimation /Out/) = 0;

        virtual HRESULT put_PauseAnimation(
            MsoTriState PauseAnimation) = 0;

        virtual HRESULT get_StopAfterSlides(
            int *StopAfterSlides /Out/) = 0;

        virtual HRESULT put_StopAfterSlides(
            int StopAfterSlides) = 0;

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

        MsoTriState getHideWhileNotPlaying();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HideWhileNotPlaying(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HideWhileNotPlaying()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHideWhileNotPlaying(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HideWhileNotPlaying(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HideWhileNotPlaying()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HideWhileNotPlaying, get=getHideWhileNotPlaying, set=setHideWhileNotPlaying)

        MsoTriState getLoopUntilStopped();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_LoopUntilStopped(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LoopUntilStopped()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLoopUntilStopped(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LoopUntilStopped(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LoopUntilStopped()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LoopUntilStopped, get=getLoopUntilStopped, set=setLoopUntilStopped)

        MsoTriState getPlayOnEntry();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_PlayOnEntry(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlayOnEntry()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlayOnEntry(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PlayOnEntry(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PlayOnEntry()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PlayOnEntry, get=getPlayOnEntry, set=setPlayOnEntry)

        MsoTriState getRewindMovie();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_RewindMovie(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RewindMovie()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRewindMovie(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RewindMovie(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RewindMovie()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RewindMovie, get=getRewindMovie, set=setRewindMovie)

        MsoTriState getPauseAnimation();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_PauseAnimation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PauseAnimation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPauseAnimation(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PauseAnimation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PauseAnimation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PauseAnimation, get=getPauseAnimation, set=setPauseAnimation)

        int getStopAfterSlides();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_StopAfterSlides(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StopAfterSlides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStopAfterSlides(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StopAfterSlides(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StopAfterSlides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StopAfterSlides, get=getStopAfterSlides, set=setStopAfterSlides)
    };
};
