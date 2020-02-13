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
    struct Sync : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Status(
            MsoSyncStatusType *pStatusType /Out/) = 0;

        virtual HRESULT get_WorkspaceLastChangedBy(
            BSTR *pbstrWorkspaceLastChangedBy /Out/) = 0;

        virtual HRESULT get_LastSyncTime(
            VARIANT *pdatSavedTo /Out/) = 0;

        virtual HRESULT get_ErrorType(
            MsoSyncErrorType *pErrorType /Out/) = 0;

        virtual HRESULT GetUpdate() = 0;

        virtual HRESULT PutUpdate() = 0;

        virtual HRESULT OpenVersion(
            MsoSyncVersionType SyncVersionType) = 0;

        virtual HRESULT ResolveConflict(
            MsoSyncConflictResolutionType SyncConflictResolution) = 0;

        virtual HRESULT Unsuspend() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
