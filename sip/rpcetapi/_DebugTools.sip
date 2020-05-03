/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct _DebugTools : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Dump(
            BSTR path) = 0;

        virtual HRESULT Do() = 0;

        virtual HRESULT Diagnose() = 0;

        virtual HRESULT Report() = 0;

        virtual HRESULT Profile() = 0;

        virtual HRESULT RunCommand(
            long cmdid,
            VARIANT param1 = argMissing2(),
            VARIANT param2 = argMissing2(),
            VARIANT param3 = argMissing2()) = 0;

        virtual HRESULT GetResult(
            long cmdid,
            VARIANT param,
            VARIANT *res /Out/) = 0;

        virtual HRESULT get_Solver(
            Solver **prop /Out/) = 0;

        Solver* getSolver();
        %MethodCode
            etapi::Solver *prop = nullptr;
            HRESULT hr = sipCpp->get_Solver(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Solver()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Solver, get=getSolver)
    };
};
