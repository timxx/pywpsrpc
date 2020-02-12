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
    struct Envelope : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Address(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ReturnAddress(
            Range **prop /Out/) = 0;

        virtual HRESULT get_DefaultPrintBarCode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultPrintBarCode(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultPrintFIMA(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultPrintFIMA(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultHeight(
            single *prop /Out/) = 0;

        virtual HRESULT put_DefaultHeight(
            single prop) = 0;

        virtual HRESULT get_DefaultWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_DefaultWidth(
            single prop) = 0;

        virtual HRESULT get_DefaultSize(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultSize(
            BSTR prop) = 0;

        virtual HRESULT get_DefaultOmitReturnAddress(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultOmitReturnAddress(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FeedSource(
            WdPaperTray *prop /Out/) = 0;

        virtual HRESULT put_FeedSource(
            WdPaperTray prop) = 0;

        virtual HRESULT get_AddressFromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_AddressFromLeft(
            single prop) = 0;

        virtual HRESULT get_AddressFromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_AddressFromTop(
            single prop) = 0;

        virtual HRESULT get_ReturnAddressFromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_ReturnAddressFromLeft(
            single prop) = 0;

        virtual HRESULT get_ReturnAddressFromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_ReturnAddressFromTop(
            single prop) = 0;

        virtual HRESULT get_AddressStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_ReturnAddressStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_DefaultOrientation(
            WdEnvelopeOrientation *prop /Out/) = 0;

        virtual HRESULT put_DefaultOrientation(
            WdEnvelopeOrientation prop) = 0;

        virtual HRESULT get_DefaultFaceUp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultFaceUp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Insert2000(
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *OmitReturnAddress = argMissing(),
            VARIANT *ReturnAddress = argMissing(),
            VARIANT *ReturnAutoText = argMissing(),
            VARIANT *PrintBarCode = argMissing(),
            VARIANT *PrintFIMA = argMissing(),
            VARIANT *Size = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *FeedSource = argMissing(),
            VARIANT *AddressFromLeft = argMissing(),
            VARIANT *AddressFromTop = argMissing(),
            VARIANT *ReturnAddressFromLeft = argMissing(),
            VARIANT *ReturnAddressFromTop = argMissing(),
            VARIANT *DefaultFaceUp = argMissing(),
            VARIANT *DefaultOrientation = argMissing()) = 0;

        virtual HRESULT PrintOut2000(
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *OmitReturnAddress = argMissing(),
            VARIANT *ReturnAddress = argMissing(),
            VARIANT *ReturnAutoText = argMissing(),
            VARIANT *PrintBarCode = argMissing(),
            VARIANT *PrintFIMA = argMissing(),
            VARIANT *Size = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *FeedSource = argMissing(),
            VARIANT *AddressFromLeft = argMissing(),
            VARIANT *AddressFromTop = argMissing(),
            VARIANT *ReturnAddressFromLeft = argMissing(),
            VARIANT *ReturnAddressFromTop = argMissing(),
            VARIANT *DefaultFaceUp = argMissing(),
            VARIANT *DefaultOrientation = argMissing()) = 0;

        virtual HRESULT UpdateDocument() = 0;

        virtual HRESULT Options() = 0;

        virtual HRESULT get_Vertical(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Vertical(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RecipientNamefromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_RecipientNamefromLeft(
            single prop) = 0;

        virtual HRESULT get_RecipientNamefromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_RecipientNamefromTop(
            single prop) = 0;

        virtual HRESULT get_RecipientPostalfromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_RecipientPostalfromLeft(
            single prop) = 0;

        virtual HRESULT get_RecipientPostalfromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_RecipientPostalfromTop(
            single prop) = 0;

        virtual HRESULT get_SenderNamefromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_SenderNamefromLeft(
            single prop) = 0;

        virtual HRESULT get_SenderNamefromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_SenderNamefromTop(
            single prop) = 0;

        virtual HRESULT get_SenderPostalfromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_SenderPostalfromLeft(
            single prop) = 0;

        virtual HRESULT get_SenderPostalfromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_SenderPostalfromTop(
            single prop) = 0;

/* TODO:
        virtual HRESULT Insert(
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *OmitReturnAddress = argMissing(),
            VARIANT *ReturnAddress = argMissing(),
            VARIANT *ReturnAutoText = argMissing(),
            VARIANT *PrintBarCode = argMissing(),
            VARIANT *PrintFIMA = argMissing(),
            VARIANT *Size = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *FeedSource = argMissing(),
            VARIANT *AddressFromLeft = argMissing(),
            VARIANT *AddressFromTop = argMissing(),
            VARIANT *ReturnAddressFromLeft = argMissing(),
            VARIANT *ReturnAddressFromTop = argMissing(),
            VARIANT *DefaultFaceUp = argMissing(),
            VARIANT *DefaultOrientation = argMissing(),
            VARIANT *PrintEPostage = argMissing(),
            VARIANT *Vertical = argMissing(),
            VARIANT *RecipientNamefromLeft = argMissing(),
            VARIANT *RecipientNamefromTop = argMissing(),
            VARIANT *RecipientPostalfromLeft = argMissing(),
            VARIANT *RecipientPostalfromTop = argMissing(),
            VARIANT *SenderNamefromLeft = argMissing(),
            VARIANT *SenderNamefromTop = argMissing(),
            VARIANT *SenderPostalfromLeft = argMissing(),
            VARIANT *SenderPostalfromTop = argMissing()) = 0;

        virtual HRESULT PrintOut(
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *OmitReturnAddress = argMissing(),
            VARIANT *ReturnAddress = argMissing(),
            VARIANT *ReturnAutoText = argMissing(),
            VARIANT *PrintBarCode = argMissing(),
            VARIANT *PrintFIMA = argMissing(),
            VARIANT *Size = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *FeedSource = argMissing(),
            VARIANT *AddressFromLeft = argMissing(),
            VARIANT *AddressFromTop = argMissing(),
            VARIANT *ReturnAddressFromLeft = argMissing(),
            VARIANT *ReturnAddressFromTop = argMissing(),
            VARIANT *DefaultFaceUp = argMissing(),
            VARIANT *DefaultOrientation = argMissing(),
            VARIANT *PrintEPostage = argMissing(),
            VARIANT *Vertical = argMissing(),
            VARIANT *RecipientNamefromLeft = argMissing(),
            VARIANT *RecipientNamefromTop = argMissing(),
            VARIANT *RecipientPostalfromLeft = argMissing(),
            VARIANT *RecipientPostalfromTop = argMissing(),
            VARIANT *SenderNamefromLeft = argMissing(),
            VARIANT *SenderNamefromTop = argMissing(),
            VARIANT *SenderPostalfromLeft = argMissing(),
            VARIANT *SenderPostalfromTop = argMissing()) = 0;
*/
    };
};