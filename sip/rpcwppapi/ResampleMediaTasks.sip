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

        ResampleMediaTask* __getitem__(int index) const;
        %MethodCode
            wppapi::ResampleMediaTask *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Pause() = 0;

        virtual HRESULT Cancel() = 0;

        virtual HRESULT Resume() = 0;

        virtual HRESULT get_PercentComplete(
            long *PercentComplete /Out/) = 0;

        long getPercentComplete();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PercentComplete(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PercentComplete()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PercentComplete, get=getPercentComplete)
    };
};
