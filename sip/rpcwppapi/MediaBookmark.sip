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
    struct MediaBookmark : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Index(
            int *Index /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Position(
            long *Position /Out/) = 0;

        virtual HRESULT Delete() = 0;

    };
};
