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
    struct ICommandBarComboBoxEvents : public IDispatch /Abstract/
    {
    public:
        virtual void Change(
            CommandBarComboBox *Ctrl) = 0;

    };
};
