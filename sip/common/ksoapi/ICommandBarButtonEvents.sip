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
    struct ICommandBarButtonEvents : public IDispatch /Abstract/
    {
    public:
        virtual void Click(
            CommandBarButton *Ctrl,
            VARIANT_BOOL *CancelDefault /In,Out/) = 0;

    };
};
