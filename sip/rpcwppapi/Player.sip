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
    struct Player : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT Play() = 0;

        virtual HRESULT Pause() = 0;

        virtual HRESULT Stop() = 0;

        virtual HRESULT GoToNextBookmark() = 0;

        virtual HRESULT GoToPreviousBookmark() = 0;

        virtual HRESULT get_CurrentPosition(
            long *CurrentPosition /Out/) = 0;

        virtual HRESULT put_CurrentPosition(
            long CurrentPosition) = 0;

        virtual HRESULT get_State(
            PpPlayerState *State /Out/) = 0;

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

        long getCurrentPosition();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CurrentPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CurrentPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCurrentPosition(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CurrentPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CurrentPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CurrentPosition, get=getCurrentPosition, set=setCurrentPosition)

        PpPlayerState getState();
        %MethodCode
            wppapi::PpPlayerState prop = (wppapi::PpPlayerState)0;
            HRESULT hr = sipCpp->get_State(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_State()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=State, get=getState)
    };
};
