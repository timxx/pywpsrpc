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

        MsoSyncStatusType getStatus();
        %MethodCode
            ksoapi::MsoSyncStatusType prop = (ksoapi::MsoSyncStatusType)0;
            HRESULT hr = sipCpp->get_Status(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Status()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Status, get=getStatus)

        BSTR getWorkspaceLastChangedBy();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_WorkspaceLastChangedBy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WorkspaceLastChangedBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WorkspaceLastChangedBy, get=getWorkspaceLastChangedBy)

        VARIANT getLastSyncTime();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_LastSyncTime(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LastSyncTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LastSyncTime, get=getLastSyncTime)

        MsoSyncErrorType getErrorType();
        %MethodCode
            ksoapi::MsoSyncErrorType prop = (ksoapi::MsoSyncErrorType)0;
            HRESULT hr = sipCpp->get_ErrorType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ErrorType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ErrorType, get=getErrorType)
    };
};
