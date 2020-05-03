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
    struct IRTD : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ThrottleInterval(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ThrottleInterval(
            long RHS) = 0;

        virtual HRESULT RefreshData() = 0;

        virtual HRESULT RestartServers() = 0;

        long getThrottleInterval();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ThrottleInterval(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThrottleInterval()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setThrottleInterval(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ThrottleInterval(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ThrottleInterval()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ThrottleInterval, get=getThrottleInterval, set=setThrottleInterval)
    };
};
