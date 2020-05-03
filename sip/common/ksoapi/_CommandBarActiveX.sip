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
    struct _CommandBarActiveX : public ksoapi::CommandBarControl /Abstract/
    {
    public:
        virtual HRESULT get_ControlCLSID(
            BSTR *pbstrClsid /Out/) = 0;

        virtual HRESULT put_ControlCLSID(
            BSTR pbstrClsid) = 0;

        virtual HRESULT get_QueryControlInterface(
            BSTR bstrIid,
            IUnknown **ppUnk /Out/) = 0;

        virtual HRESULT SetInnerObjectFactory(
            IUnknown *pUnk) = 0;

        virtual HRESULT EnsureControl() = 0;

        virtual HRESULT put_InitWith(
            IUnknown *rhs) = 0;

        virtual HRESULT get_InstanceIdPtr(
            VARIANT *pvarPic /Out/) = 0;

        BSTR getControlCLSID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ControlCLSID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ControlCLSID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setControlCLSID(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ControlCLSID(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ControlCLSID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ControlCLSID, get=getControlCLSID, set=setControlCLSID)

        VARIANT getInstanceIdPtr();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_InstanceIdPtr(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InstanceIdPtr()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InstanceIdPtr, get=getInstanceIdPtr)
    };
};
