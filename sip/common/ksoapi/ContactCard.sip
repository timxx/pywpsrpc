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
    struct ContactCard : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Close() = 0;

        virtual HRESULT Show(
            MsoContactCardStyle CardStyle,
            long RectangleLeft,
            long RectangleRight,
            long RectangleTop,
            long RectangleBottom,
            long HorizontalPosition,
            VARIANT_BOOL ShowWithDelay = VARIANT_FALSE) = 0;

    };
};
