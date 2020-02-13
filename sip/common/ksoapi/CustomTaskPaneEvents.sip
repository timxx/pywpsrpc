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
    struct CustomTaskPaneEvents : public IDispatch /Abstract/
    {
    public:
        virtual void VisibleStateChange(
            _CustomTaskPane *CustomTaskPaneInst) = 0;

        virtual void DockPositionStateChange(
            _CustomTaskPane *CustomTaskPaneInst) = 0;

    };
};
