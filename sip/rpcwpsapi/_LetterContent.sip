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
    struct _LetterContent : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Duplicate(
            LetterContent **prop /Out/) = 0;

        virtual HRESULT get_DateFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DateFormat(
            BSTR prop) = 0;

        virtual HRESULT get_IncludeHeaderFooter(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeHeaderFooter(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PageDesign(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PageDesign(
            BSTR prop) = 0;

        virtual HRESULT get_LetterStyle(
            WdLetterStyle *prop /Out/) = 0;

        virtual HRESULT put_LetterStyle(
            WdLetterStyle prop) = 0;

        virtual HRESULT get_Letterhead(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Letterhead(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LetterheadLocation(
            WdLetterheadLocation *prop /Out/) = 0;

        virtual HRESULT put_LetterheadLocation(
            WdLetterheadLocation prop) = 0;

        virtual HRESULT get_LetterheadSize(
            single *prop /Out/) = 0;

        virtual HRESULT put_LetterheadSize(
            single prop) = 0;

        virtual HRESULT get_RecipientName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RecipientName(
            BSTR prop) = 0;

        virtual HRESULT get_RecipientAddress(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RecipientAddress(
            BSTR prop) = 0;

        virtual HRESULT get_Salutation(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Salutation(
            BSTR prop) = 0;

        virtual HRESULT get_SalutationType(
            WdSalutationType *prop /Out/) = 0;

        virtual HRESULT put_SalutationType(
            WdSalutationType prop) = 0;

        virtual HRESULT get_RecipientReference(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RecipientReference(
            BSTR prop) = 0;

        virtual HRESULT get_MailingInstructions(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_MailingInstructions(
            BSTR prop) = 0;

        virtual HRESULT get_AttentionLine(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_AttentionLine(
            BSTR prop) = 0;

        virtual HRESULT get_Subject(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Subject(
            BSTR prop) = 0;

        virtual HRESULT get_EnclosureNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_EnclosureNumber(
            long prop) = 0;

        virtual HRESULT get_CCList(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_CCList(
            BSTR prop) = 0;

        virtual HRESULT get_ReturnAddress(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ReturnAddress(
            BSTR prop) = 0;

        virtual HRESULT get_SenderName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderName(
            BSTR prop) = 0;

        virtual HRESULT get_Closing(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Closing(
            BSTR prop) = 0;

        virtual HRESULT get_SenderCompany(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderCompany(
            BSTR prop) = 0;

        virtual HRESULT get_SenderJobTitle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderJobTitle(
            BSTR prop) = 0;

        virtual HRESULT get_SenderInitials(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderInitials(
            BSTR prop) = 0;

        virtual HRESULT get_InfoBlock(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_InfoBlock(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RecipientCode(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RecipientCode(
            BSTR prop) = 0;

        virtual HRESULT get_RecipientGender(
            WdSalutationGender *prop /Out/) = 0;

        virtual HRESULT put_RecipientGender(
            WdSalutationGender prop) = 0;

        virtual HRESULT get_ReturnAddressShortForm(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ReturnAddressShortForm(
            BSTR prop) = 0;

        virtual HRESULT get_SenderCity(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderCity(
            BSTR prop) = 0;

        virtual HRESULT get_SenderCode(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderCode(
            BSTR prop) = 0;

        virtual HRESULT get_SenderGender(
            WdSalutationGender *prop /Out/) = 0;

        virtual HRESULT put_SenderGender(
            WdSalutationGender prop) = 0;

        virtual HRESULT get_SenderReference(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderReference(
            BSTR prop) = 0;

    };
};
