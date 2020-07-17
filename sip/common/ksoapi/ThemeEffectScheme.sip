/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct ThemeEffectScheme : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Load(
            BSTR FileName) = 0;
    };
};
