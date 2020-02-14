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
    struct NewFile : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Add(
            BSTR FileName,
            VARIANT Section = argMissing2(),
            VARIANT DisplayName = argMissing2(),
            VARIANT Action = argMissing2(),
            VARIANT_BOOL *pvarf /Out/ = 0) = 0;

        virtual HRESULT Remove(
            BSTR FileName,
            VARIANT Section = argMissing2(),
            VARIANT DisplayName = argMissing2(),
            VARIANT Action = argMissing2(),
            VARIANT_BOOL *pvarf /Out/ = 0) = 0;

    };
};
