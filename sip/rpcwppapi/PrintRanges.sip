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
    struct PrintRanges : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT Add(
            int Start,
            int End,
            PrintRange **Add /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT ClearAll() = 0;

        virtual HRESULT Item(
            int Index,
            PrintRange **Item /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

    };
};
