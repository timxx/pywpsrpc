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
    struct PictureFormatEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_PictureID(
            BSTR *Md4 /Out/) = 0;

    };
};
