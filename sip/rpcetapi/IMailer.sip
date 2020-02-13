/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IMailer : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BCCRecipients(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_BCCRecipients(
            VARIANT RHS) = 0;

        virtual HRESULT get_CCRecipients(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CCRecipients(
            VARIANT RHS) = 0;

        virtual HRESULT get_Enclosures(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Enclosures(
            VARIANT RHS) = 0;

        virtual HRESULT get_Received(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SendDateTime(
            DATE *RHS /Out/) = 0;

        virtual HRESULT get_Sender(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Subject(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Subject(
            BSTR RHS) = 0;

        virtual HRESULT get_ToRecipients(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ToRecipients(
            VARIANT RHS) = 0;

        virtual HRESULT get_WhichAddress(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_WhichAddress(
            VARIANT RHS) = 0;

    };
};
