/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IRTDUpdateEvent : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT UpdateNotify() = 0;

        virtual HRESULT get_HeartbeatInterval(
            long *plRetVal /Out/) = 0;

        virtual HRESULT put_HeartbeatInterval(
            long plRetVal) = 0;

        virtual HRESULT Disconnect() = 0;

    };
};
