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
    struct MsoDebugOptions_UTRunResult : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Passed(
            VARIANT_BOOL *Passed /Out/) = 0;

        virtual HRESULT get_ErrorString(
            BSTR *Error /Out/) = 0;

    };
};
