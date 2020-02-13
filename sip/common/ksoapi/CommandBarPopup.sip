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
    struct CommandBarPopup : public ksoapi::CommandBarControl /Abstract/
    {
    public:
        virtual HRESULT get_CommandBar(
            CommandBar **ppcb /Out/) = 0;

        virtual HRESULT get_Controls(
            CommandBarControls **ppcbcs /Out/) = 0;

        virtual HRESULT get_OLEMenuGroup(
            MsoOLEMenuGroup *pomg /Out/) = 0;

        virtual HRESULT put_OLEMenuGroup(
            MsoOLEMenuGroup pomg) = 0;

        virtual HRESULT get_InstanceIdPtr(
            VARIANT *pvarPic /Out/) = 0;

    };
};
