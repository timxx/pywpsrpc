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
    struct MsoDebugOptions_UT : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_CollectionName(
            BSTR *pbstrColName /Out/) = 0;

        virtual HRESULT Run(
            MsoDebugOptions_UTRunResult **ppRunResult /Out/) = 0;

    };
};
