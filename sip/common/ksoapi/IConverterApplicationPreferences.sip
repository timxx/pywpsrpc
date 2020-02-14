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
    struct IConverterApplicationPreferences : public IUnknown /Abstract/
    {
    public:
        virtual HRESULT HrGetLcid(
            unsigned long *plcid /Out/) = 0;

        virtual HRESULT HrGetHwnd(
            long *phwnd /Out/) = 0;

        virtual HRESULT HrGetApplication(
            BSTR *pbstrApplication /Out/) = 0;

        virtual HRESULT HrCheckFormat(
            int *pFormat /Out/) = 0;

    };
};
