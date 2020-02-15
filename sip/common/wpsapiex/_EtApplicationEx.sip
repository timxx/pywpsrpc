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
    struct _EtApplicationEx : public wpsapiex::_ApplicationEx /Abstract/
    {
    public:
        virtual HRESULT get_EmbedTrueTypeFonts(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EmbedTrueTypeFonts(
            VARIANT_BOOL RHS) = 0;

    };
};
