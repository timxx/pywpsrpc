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
    struct IOLEObjectEvents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT GotFocus() = 0;

        virtual HRESULT LostFocus() = 0;

    };
};
