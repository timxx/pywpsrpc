/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Broadcast : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_AttendeeUrl(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_State(
            MsoBroadcastState *prop /Out/) = 0;

        virtual HRESULT get_Capabilities(
            long *prop /Out/) = 0;

        virtual HRESULT get_PresenterServiceUrl(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_SessionID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Start(
            BSTR serverUrl) = 0;

        virtual HRESULT Pause() = 0;

        virtual HRESULT Resume() = 0;

        virtual HRESULT End() = 0;

        virtual HRESULT AddMeetingNotes(
            BSTR notesUrl,
            BSTR notesWacUrl) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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

        BSTR getAttendeeUrl();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AttendeeUrl(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AttendeeUrl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AttendeeUrl, get=getAttendeeUrl)

        MsoBroadcastState getState();
        %MethodCode
            wpsapi::MsoBroadcastState prop = (wpsapi::MsoBroadcastState)0;
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

        long getCapabilities();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Capabilities(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Capabilities()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Capabilities, get=getCapabilities)

        BSTR getPresenterServiceUrl();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PresenterServiceUrl(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresenterServiceUrl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PresenterServiceUrl, get=getPresenterServiceUrl)

        BSTR getSessionID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SessionID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SessionID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SessionID, get=getSessionID)
    };
};
