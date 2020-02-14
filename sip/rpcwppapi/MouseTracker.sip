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
    struct MouseTracker : public IUnknown /Abstract/
    {
    public:
        virtual HRESULT OnTrack(
            single X,
            single Y) = 0;

        virtual HRESULT EndTrack(
            single X,
            single Y) = 0;

    };
};
