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
    struct ILicWizExternal : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT PrintHtmlDocument(
            IUnknown *punkHtmlDoc) = 0;

        virtual HRESULT InvokeDateTimeApplet() = 0;

        virtual HRESULT FormatDate(
            DATE date,
            BSTR pFormat,
            BSTR *pDateString /Out/) = 0;

        virtual HRESULT ShowHelp(
            VARIANT *pvarId = argMissing()) = 0;

        virtual HRESULT Terminate() = 0;

        virtual HRESULT DisableVORWReminder(
            long BPC) = 0;

        virtual HRESULT SaveReceipt(
            BSTR bstrReceipt,
            BSTR *pbstrPath /Out/) = 0;

        virtual HRESULT OpenInDefaultBrowser(
            BSTR bstrUrl) = 0;

        virtual HRESULT MsoAlert(
            BSTR bstrText,
            BSTR bstrButtons,
            BSTR bstrIcon,
            long *plRet /Out/) = 0;

        virtual HRESULT DepositPidKey(
            BSTR bstrKey,
            int fMORW,
            long *plRet /Out/) = 0;

        virtual HRESULT WriteLog(
            BSTR bstrMessage) = 0;

        virtual HRESULT ResignDpc(
            BSTR bstrProductCode) = 0;

        virtual HRESULT ResetPID() = 0;

        virtual HRESULT SetDialogSize(
            long dx,
            long dy) = 0;

        virtual HRESULT VerifyClock(
            long lMode,
            long *plRet /Out/) = 0;

        virtual HRESULT SortSelectOptions(
            IDispatch *pdispSelect) = 0;

        virtual HRESULT InternetDisconnect() = 0;

        virtual HRESULT GetConnectedState(
            int *pfConnected /Out/) = 0;

        virtual HRESULT get_Context(
            long *plwctx /Out/) = 0;

        virtual HRESULT get_Validator(
            IDispatch **ppdispValidator /Out/) = 0;

        virtual HRESULT get_LicAgent(
            IDispatch **ppdispLicAgent /Out/) = 0;

        virtual HRESULT get_CountryInfo(
            BSTR *pbstrUrl /Out/) = 0;

        virtual HRESULT put_WizardVisible(
            int rhs) = 0;

        virtual HRESULT put_WizardTitle(
            BSTR rhs) = 0;

        virtual HRESULT get_AnimationEnabled(
            int *fEnabled /Out/) = 0;

        virtual HRESULT put_CurrentHelpId(
            long rhs) = 0;

        virtual HRESULT get_OfficeOnTheWebUrl(
            BSTR *bstrUrl /Out/) = 0;

    };
};
