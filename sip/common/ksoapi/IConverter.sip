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
    struct IConverter : public IUnknown /Abstract/
    {
    public:
        virtual HRESULT HrInitConverter(
            IConverterApplicationPreferences *pcap,
            IConverterPreferences **ppcp /Out/,
            IConverterUICallback *pcuic) = 0;

        virtual HRESULT HrUninitConverter(
            IConverterUICallback *pcuic) = 0;

        virtual HRESULT HrImport(
            BSTR bstrSourcePath,
            BSTR bstrDestPath,
            IConverterApplicationPreferences *pcap,
            IConverterPreferences **ppcp /Out/,
            IConverterUICallback *pcuic) = 0;

        virtual HRESULT HrExport(
            BSTR bstrSourcePath,
            BSTR bstrDestPath,
            BSTR bstrClass,
            IConverterApplicationPreferences *pcap,
            IConverterPreferences **ppcp /Out/,
            IConverterUICallback *pcuic) = 0;

        virtual HRESULT HrGetFormat(
            BSTR bstrPath,
            BSTR *pbstrClass /Out/,
            IConverterApplicationPreferences *pcap,
            IConverterPreferences **ppcp /Out/,
            IConverterUICallback *pcuic) = 0;

        virtual HRESULT HrGetErrorString(
            long hrErr,
            BSTR *pbstrErrorMsg /Out/,
            IConverterApplicationPreferences *pcap) = 0;

    };
};
