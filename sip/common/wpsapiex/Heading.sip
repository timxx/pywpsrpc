/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapiex
{
    struct Heading : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Level(
            long *prop /Out/) = 0;

        virtual HRESULT get_Range(
            IDispatch **prop /Out/) = 0;

    };
};
