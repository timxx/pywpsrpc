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
    struct Ruler2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Levels(
            RulerLevels2 **RulerLevels /Out/) = 0;

        virtual HRESULT get_TabStops(
            TabStops2 **TabStops /Out/) = 0;

    };
};
