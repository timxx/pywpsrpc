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
    struct WebComponentWindowExternal : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_InterfaceVersion(
            long *RetValue /Out/) = 0;

        virtual HRESULT get_ApplicationName(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT get_ApplicationVersion(
            long *RetValue /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **RetValue /Out/) = 0;

        virtual HRESULT CloseWindow() = 0;

        virtual HRESULT get_WebComponent(
            WebComponent **RetValue /Out/) = 0;

    };
};
