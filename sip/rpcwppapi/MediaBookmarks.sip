/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct MediaBookmarks : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT Item(
            int Index,
            MediaBookmark **Item /Out/) = 0;

        virtual HRESULT Add(
            long Position,
            BSTR Name,
            MediaBookmark **Add /Out/) = 0;

    };
};
