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
    struct IRTD : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ThrottleInterval(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ThrottleInterval(
            long RHS) = 0;

        virtual HRESULT RefreshData() = 0;

        virtual HRESULT RestartServers() = 0;

    };
};
