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
    struct Broadcast : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT Start(
            BSTR serverUrl) = 0;

        virtual HRESULT End() = 0;

        virtual HRESULT get_AttendeeUrl(
            BSTR *AttendeeUrl /Out/) = 0;

        virtual HRESULT get_IsBroadcasting(
            VARIANT_BOOL *IsBroadcasting /Out/) = 0;

        virtual HRESULT Pause() = 0;

        virtual HRESULT Resume() = 0;

        virtual HRESULT AddMeetingNotes(
            BSTR notesUrl,
            BSTR notesWacUrl) = 0;

        virtual HRESULT get_State(
            MsoBroadcastState *BroadcastState /Out/) = 0;

        virtual HRESULT get_Capabilities(
            long *Capabilities /Out/) = 0;

        virtual HRESULT get_SessionID(
            BSTR *SessionID /Out/) = 0;

        virtual HRESULT get_PresenterServiceUrl(
            BSTR *PresenterServiceUrl /Out/) = 0;

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

        VARIANT_BOOL getIsBroadcasting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsBroadcasting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsBroadcasting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsBroadcasting, get=getIsBroadcasting)

        MsoBroadcastState getState();
        %MethodCode
            wppapi::MsoBroadcastState prop = (wppapi::MsoBroadcastState)0;
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
    };
};
