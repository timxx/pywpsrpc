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

    };
};
