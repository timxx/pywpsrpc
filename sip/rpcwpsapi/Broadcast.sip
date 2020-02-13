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

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

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

    };
};
