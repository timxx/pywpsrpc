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
    struct ConnectorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Creator(
            long *plCreator /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT BeginConnect(
            Shape *ConnectedShape,
            int ConnectionSite) = 0;

        virtual HRESULT BeginDisconnect() = 0;

        virtual HRESULT EndConnect(
            Shape *ConnectedShape,
            int ConnectionSite) = 0;

        virtual HRESULT EndDisconnect() = 0;

        virtual HRESULT get_BeginConnected(
            MsoTriState *BeginConnected /Out/) = 0;

        virtual HRESULT get_BeginConnectedShape(
            Shape **BeginConnectedShape /Out/) = 0;

        virtual HRESULT get_BeginConnectionSite(
            int *BeginConnectionSite /Out/) = 0;

        virtual HRESULT get_EndConnected(
            MsoTriState *EndConnected /Out/) = 0;

        virtual HRESULT get_EndConnectedShape(
            Shape **EndConnectedShape /Out/) = 0;

        virtual HRESULT get_EndConnectionSite(
            int *EndConnectionSite /Out/) = 0;

        virtual HRESULT get_Type(
            MsoConnectorType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoConnectorType Type) = 0;

    };
};
