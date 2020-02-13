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

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

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

    };
};
