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
    struct PrintoutPageEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_PrintOutRange(
            int *printOutRange /Out/) = 0;

        virtual HRESULT get_PrintOutPages(
            BSTR *pages /Out/) = 0;

    };
};
