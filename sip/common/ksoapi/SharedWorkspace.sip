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
    struct SharedWorkspace : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT get_Members(
            SharedWorkspaceMembers **ppMembers /Out/) = 0;

        virtual HRESULT get_Tasks(
            SharedWorkspaceTasks **ppTasks /Out/) = 0;

        virtual HRESULT get_Files(
            SharedWorkspaceFiles **ppFiles /Out/) = 0;

        virtual HRESULT get_Folders(
            SharedWorkspaceFolders **ppFolders /Out/) = 0;

        virtual HRESULT get_Links(
            SharedWorkspaceLinks **ppLinks /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT CreateNew(
            VARIANT URL,
            VARIANT Name) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_URL(
            BSTR *pbstrUrl /Out/) = 0;

        virtual HRESULT get_Connected(
            VARIANT_BOOL *pfConnected /Out/) = 0;

        virtual HRESULT get_LastRefreshed(
            VARIANT *pvarLastRefreshed /Out/) = 0;

        virtual HRESULT get_SourceURL(
            BSTR *pbstrSourceURL /Out/) = 0;

        virtual HRESULT put_SourceURL(
            BSTR pbstrSourceURL) = 0;

        virtual HRESULT RemoveDocument() = 0;

        virtual HRESULT Disconnect() = 0;

    };
};
