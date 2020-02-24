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
    struct IMsoEServicesDialog : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Close(
            VARIANT_BOOL ApplyWebComponentChanges = VARIANT_FALSE) = 0;

        virtual HRESULT AddTrustedDomain(
            BSTR Domain) = 0;

        virtual HRESULT get_ApplicationName(
            BSTR *retval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppdisp /Out/) = 0;

        virtual HRESULT get_WebComponent(
            IDispatch **ppdisp /Out/) = 0;

        virtual HRESULT get_ClipArt(
            IDispatch **ppdisp /Out/) = 0;

    };
};
