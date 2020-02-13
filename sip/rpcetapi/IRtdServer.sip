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
    struct IRtdServer : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT ServerStart(
            IRTDUpdateEvent *CallbackObject,
            long *pfRes /Out/) = 0;

        virtual HRESULT ConnectData(
            long TopicID,
            SAFEARRAY * *Strings,
            VARIANT_BOOL *GetNewValues /In,Out/,
            VARIANT *pvarOut /Out/) = 0;

        virtual HRESULT RefreshData(
            long *TopicCount /In,Out/,
            SAFEARRAY * *parrayOut /Out/) = 0;

        virtual HRESULT DisconnectData(
            long TopicID) = 0;

        virtual HRESULT Heartbeat(
            long *pfRes /Out/) = 0;

        virtual HRESULT ServerTerminate() = 0;

    };
};
