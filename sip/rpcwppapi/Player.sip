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

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

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

    };
};
