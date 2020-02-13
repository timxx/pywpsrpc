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
    struct IConnectorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT BeginConnect(
            Shape *ConnectedShape,
            long ConnectionSite) = 0;

        virtual HRESULT BeginDisconnect() = 0;

        virtual HRESULT EndConnect(
            Shape *ConnectedShape,
            long ConnectionSite) = 0;

        virtual HRESULT EndDisconnect() = 0;

        virtual HRESULT get_BeginConnected(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_BeginConnectedShape(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_BeginConnectionSite(
            long *RHS /Out/) = 0;

        virtual HRESULT get_EndConnected(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_EndConnectedShape(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_EndConnectionSite(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Type(
            MsoConnectorType *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            MsoConnectorType RHS) = 0;

    };
};
