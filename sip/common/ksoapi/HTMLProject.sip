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
    struct HTMLProject : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_State(
            MsoHTMLProjectState *State /Out/) = 0;

        virtual HRESULT RefreshProject(
            VARIANT_BOOL Refresh = -1) = 0;

        virtual HRESULT RefreshDocument(
            VARIANT_BOOL Refresh = -1) = 0;

        virtual HRESULT get_HTMLProjectItems(
            HTMLProjectItems **HTMLProjectItems /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT Open(
            MsoHTMLProjectOpen OpenKind = (ksoapi::MsoHTMLProjectOpen)0) = 0;

    };
};
