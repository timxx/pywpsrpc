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
    struct ILicAgent : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Initialize(
            unsigned long dwBPC,
            unsigned long dwMode,
            BSTR bstrLicSource,
            unsigned long *pdwRetCode /Out/) = 0;

        virtual HRESULT GetFirstName(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetFirstName(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetLastName(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetLastName(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetOrgName(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetOrgName(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetEmail(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetEmail(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetPhone(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetPhone(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetAddress1(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetAddress1(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetCity(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetCity(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetState(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetState(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetCountryCode(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetCountryCode(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetCountryDesc(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetCountryDesc(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetZip(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetZip(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetIsoLanguage(
            unsigned long *pdwVal /Out/) = 0;

        virtual HRESULT SetIsoLanguage(
            unsigned long dwNewVal) = 0;

        virtual HRESULT GetMSUpdate(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetMSUpdate(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetMSOffer(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetMSOffer(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetOtherOffer(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetOtherOffer(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetAddress2(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetAddress2(
            BSTR bstrNewVal) = 0;

        virtual HRESULT CheckSystemClock(
            unsigned long *pdwRetCode /Out/) = 0;

        virtual HRESULT GetExistingExpiryDate(
            DATE *pDateVal /Out/) = 0;

        virtual HRESULT GetNewExpiryDate(
            DATE *pDateVal /Out/) = 0;

        virtual HRESULT GetBillingFirstName(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetBillingFirstName(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetBillingLastName(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetBillingLastName(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetBillingPhone(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetBillingPhone(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetBillingAddress1(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetBillingAddress1(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetBillingAddress2(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetBillingAddress2(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetBillingCity(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetBillingCity(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetBillingState(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetBillingState(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetBillingCountryCode(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetBillingCountryCode(
            BSTR bstrNewVal) = 0;

        virtual HRESULT GetBillingZip(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT SetBillingZip(
            BSTR bstrNewVal) = 0;

        virtual HRESULT SaveBillingInfo(
            int bSave,
            unsigned long *pdwRetVal /Out/) = 0;

        virtual HRESULT IsCCRenewalCountry(
            BSTR bstrCountryCode,
            int *pbRetVal /Out/) = 0;

        virtual HRESULT GetVATLabel(
            BSTR bstrCountryCode,
            BSTR *pbstrVATLabel /Out/) = 0;

        virtual HRESULT GetCCRenewalExpiryDate(
            DATE *pDateVal /Out/) = 0;

        virtual HRESULT SetVATNumber(
            BSTR bstrVATNumber) = 0;

        virtual HRESULT SetCreditCardType(
            BSTR bstrCCCode) = 0;

        virtual HRESULT SetCreditCardNumber(
            BSTR bstrCCNumber) = 0;

        virtual HRESULT SetCreditCardExpiryYear(
            unsigned long dwCCYear) = 0;

        virtual HRESULT SetCreditCardExpiryMonth(
            unsigned long dwCCMonth) = 0;

        virtual HRESULT GetCreditCardCount(
            unsigned long *pdwCount /Out/) = 0;

        virtual HRESULT GetCreditCardCode(
            unsigned long dwIndex,
            BSTR *pbstrCode /Out/) = 0;

        virtual HRESULT GetCreditCardName(
            unsigned long dwIndex,
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT GetVATNumber(
            BSTR *pbstrVATNumber /Out/) = 0;

        virtual HRESULT GetCreditCardType(
            BSTR *pbstrCCCode /Out/) = 0;

        virtual HRESULT GetCreditCardNumber(
            BSTR *pbstrCCNumber /Out/) = 0;

        virtual HRESULT GetCreditCardExpiryYear(
            unsigned long *pdwCCYear /Out/) = 0;

        virtual HRESULT GetCreditCardExpiryMonth(
            unsigned long *pdwCCMonth /Out/) = 0;

        virtual HRESULT GetDisconnectOption(
            int *pbRetVal /Out/) = 0;

        virtual HRESULT SetDisconnectOption(
            int bNewVal) = 0;

        virtual HRESULT AsyncProcessHandshakeRequest(
            int bReviseCustInfo) = 0;

        virtual HRESULT AsyncProcessNewLicenseRequest() = 0;

        virtual HRESULT AsyncProcessReissueLicenseRequest() = 0;

        virtual HRESULT AsyncProcessRetailRenewalLicenseRequest() = 0;

        virtual HRESULT AsyncProcessReviseCustInfoRequest() = 0;

        virtual HRESULT AsyncProcessCCRenewalPriceRequest() = 0;

        virtual HRESULT AsyncProcessCCRenewalLicenseRequest() = 0;

        virtual HRESULT GetAsyncProcessReturnCode(
            unsigned long *pdwRetCode /Out/) = 0;

        virtual HRESULT IsUpgradeAvailable(
            int *pbUpgradeAvailable /Out/) = 0;

        virtual HRESULT WantUpgrade(
            int bWantUpgrade) = 0;

        virtual HRESULT AsyncProcessDroppedLicenseRequest() = 0;

        virtual HRESULT GenerateInstallationId(
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT DepositConfirmationId(
            BSTR bstrVal,
            unsigned long *pdwRetCode /Out/) = 0;

        virtual HRESULT VerifyCheckDigits(
            BSTR bstrCIDIID,
            int *pbValue /Out/) = 0;

        virtual HRESULT GetCurrentExpiryDate(
            DATE *pDateVal /Out/) = 0;

        virtual HRESULT CancelAsyncProcessRequest(
            int bIsLicenseRequest) = 0;

        virtual HRESULT GetCurrencyDescription(
            unsigned long dwCurrencyIndex,
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT GetPriceItemCount(
            unsigned long *pdwCount /Out/) = 0;

        virtual HRESULT GetPriceItemLabel(
            unsigned long dwIndex,
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT GetPriceItemValue(
            unsigned long dwCurrencyIndex,
            unsigned long dwIndex,
            BSTR *pbstrVal /Out/) = 0;

        virtual HRESULT GetInvoiceText(
            BSTR *pNewVal /Out/) = 0;

        virtual HRESULT GetBackendErrorMsg(
            BSTR *pbstrErrMsg /Out/) = 0;

        virtual HRESULT GetCurrencyOption(
            unsigned long *dwCurrencyOption /Out/) = 0;

        virtual HRESULT SetCurrencyOption(
            unsigned long dwCurrencyOption) = 0;

        virtual HRESULT GetEndOfLifeHtmlText(
            BSTR *pbstrHtmlText /Out/) = 0;

        virtual HRESULT DisplaySSLCert(
            unsigned long *dwRetCode /Out/) = 0;

    };
};
