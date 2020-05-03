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
    struct IRTDUpdateEvent : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT UpdateNotify() = 0;

        virtual HRESULT get_HeartbeatInterval(
            long *plRetVal /Out/) = 0;

        virtual HRESULT put_HeartbeatInterval(
            long plRetVal) = 0;

        virtual HRESULT Disconnect() = 0;

        long getHeartbeatInterval();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HeartbeatInterval(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeartbeatInterval()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeartbeatInterval(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeartbeatInterval(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeartbeatInterval()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeartbeatInterval, get=getHeartbeatInterval, set=setHeartbeatInterval)
    };
};
