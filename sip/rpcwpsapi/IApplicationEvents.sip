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
    struct IApplicationEvents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Startup() = 0;

        virtual HRESULT Quit() = 0;

        virtual HRESULT DocumentChange() = 0;

    };
};
