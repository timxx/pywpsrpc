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
    struct EtRangeEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT MinimumDataRange(
            VARIANT *pRange /Out/) = 0;

        virtual HRESULT TextInJSON(
            BSTR *pTextInJSON /Out/) = 0;

    };
};
