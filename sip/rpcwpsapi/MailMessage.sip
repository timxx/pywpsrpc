/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct MailMessage : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT CheckName() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT DisplayMoveDialog() = 0;

        virtual HRESULT DisplayProperties() = 0;

        virtual HRESULT DisplaySelectNamesDialog() = 0;

        virtual HRESULT Forward() = 0;

        virtual HRESULT GoToNext() = 0;

        virtual HRESULT GoToPrevious() = 0;

        virtual HRESULT Reply() = 0;

        virtual HRESULT ReplyAll() = 0;

        virtual HRESULT ToggleHeader() = 0;

    };
};
