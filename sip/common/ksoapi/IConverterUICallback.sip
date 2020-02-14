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
    struct IConverterUICallback : public IUnknown /Abstract/
    {
    public:
        virtual HRESULT HrReportProgress(
            unsigned int uPercentComplete) = 0;

        virtual HRESULT HrMessageBox(
            BSTR bstrText,
            BSTR bstrCaption,
            unsigned int uType,
            int *pidResult /Out/) = 0;

        virtual HRESULT HrInputBox(
            BSTR bstrText,
            BSTR bstrCaption,
            BSTR *pbstrInput /Out/,
            int fPassword) = 0;

    };
};
