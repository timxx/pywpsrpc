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
    struct IConverterPreferences : public IUnknown /Abstract/
    {
    public:
        virtual HRESULT HrGetMacroEnabled(
            int *pfMacroEnabled /Out/) = 0;

        virtual HRESULT HrCheckFormat(
            int *pFormat /Out/) = 0;

        virtual HRESULT HrGetLossySave(
            int *pfLossySave /Out/) = 0;

    };
};
