/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct ResampleMediaTasks : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT Item(
            int Index,
            ResampleMediaTask **Item /Out/) = 0;

        virtual HRESULT Pause() = 0;

        virtual HRESULT Cancel() = 0;

        virtual HRESULT Resume() = 0;

        virtual HRESULT get_PercentComplete(
            long *PercentComplete /Out/) = 0;

    };
};
