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
    struct SharedWorkspaceTask : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

        virtual HRESULT get_AssignedTo(
            BSTR *AssignedTo /Out/) = 0;

        virtual HRESULT put_AssignedTo(
            BSTR AssignedTo) = 0;

        virtual HRESULT get_Status(
            MsoSharedWorkspaceTaskStatus *Status /Out/) = 0;

        virtual HRESULT put_Status(
            MsoSharedWorkspaceTaskStatus Status) = 0;

        virtual HRESULT get_Priority(
            MsoSharedWorkspaceTaskPriority *Priority /Out/) = 0;

        virtual HRESULT put_Priority(
            MsoSharedWorkspaceTaskPriority Priority) = 0;

        virtual HRESULT get_Description(
            BSTR *Description /Out/) = 0;

        virtual HRESULT put_Description(
            BSTR Description) = 0;

        virtual HRESULT get_DueDate(
            VARIANT *DueDate /Out/) = 0;

        virtual HRESULT put_DueDate(
            VARIANT DueDate) = 0;

        virtual HRESULT get_CreatedBy(
            BSTR *CreatedBy /Out/) = 0;

        virtual HRESULT get_CreatedDate(
            VARIANT *CreatedDate /Out/) = 0;

        virtual HRESULT get_ModifiedBy(
            BSTR *ModifiedBy /Out/) = 0;

        virtual HRESULT get_ModifiedDate(
            VARIANT *ModifiedDate /Out/) = 0;

        virtual HRESULT Save() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
