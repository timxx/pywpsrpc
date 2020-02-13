/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct ConnectorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_BeginConnected(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_BeginConnectedShape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_BeginConnectionSite(
            long *prop /Out/) = 0;

        virtual HRESULT get_EndConnected(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_EndConnectedShape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_EndConnectionSite(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoConnectorType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoConnectorType prop) = 0;

        virtual HRESULT BeginConnect(
            Shape **ConnectedShape /Out/,
            long ConnectionSite) = 0;

        virtual HRESULT BeginDisconnect() = 0;

        virtual HRESULT EndConnect(
            Shape **ConnectedShape /Out/,
            long ConnectionSite) = 0;

        virtual HRESULT EndDisconnect() = 0;

    };
};
