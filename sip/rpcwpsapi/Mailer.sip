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
    struct Mailer : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_BCCRecipients(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_BCCRecipients(
            VARIANT *prop) = 0;

        virtual HRESULT get_CCRecipients(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_CCRecipients(
            VARIANT *prop) = 0;

        virtual HRESULT get_Recipients(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Recipients(
            VARIANT *prop) = 0;

        virtual HRESULT get_Enclosures(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Enclosures(
            VARIANT *prop) = 0;

        virtual HRESULT get_Sender(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_SendDateTime(
            DATE *prop /Out/) = 0;

        virtual HRESULT get_Received(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Subject(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Subject(
            BSTR prop) = 0;

    };
};
