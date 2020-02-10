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
    struct Comments : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ShowBy(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ShowBy(
            BSTR prop) = 0;

        virtual HRESULT Item(
            long Index,
            Comment **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            VARIANT *Text = argMissing(),
            Comment **prop /Out/ = 0) = 0;
    };

    struct Comment : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Reference(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Scope(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Author(
            BSTR prop) = 0;

        virtual HRESULT get_Initial(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Initial(
            BSTR prop) = 0;

        virtual HRESULT get_ShowTip(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowTip(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Edit() = 0;

        virtual HRESULT get_Date(
            DATE *prop /Out/) = 0;

        virtual HRESULT get_IsInk(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Done(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Done(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Ancestor(
            Comment **prop /Out/) = 0;

        virtual HRESULT get_Contact(
            CoAuthor **prop /Out/) = 0;

        virtual HRESULT DeleteRecursively() = 0;

        virtual HRESULT get_Replies(
            Comments **prop /Out/) = 0;
    };

    struct CoAuthors : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            CoAuthor **prop /Out/) = 0;
    };

    struct CoAuthor : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_IsMe(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Locks(
            CoAuthLocks **prop /Out/) = 0;

        virtual HRESULT get_EmailAddress(
            BSTR *prop /Out/) = 0;
    };

    struct CoAuthLocks : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            CoAuthLock **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT Range,
            WdLockType Type = wpsapi::wdLockReservation,
            CoAuthLock **prop /Out/ = 0) = 0;

        virtual HRESULT RemoveEphemeralLocks() = 0;
    };

    struct CoAuthLock : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdLockType *prop /Out/) = 0;

        virtual HRESULT get_Owner(
            CoAuthor **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_HeaderFooter(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Unlock() = 0;
    };

    struct CoAuthUpdates : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            CoAuthUpdate **prop /Out/) = 0;
    };

    struct CoAuthUpdate : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;
    };

    struct CoAuthoring : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Authors(
            CoAuthors **prop /Out/) = 0;

        virtual HRESULT get_Me(
            CoAuthor **prop /Out/) = 0;

        virtual HRESULT get_PendingUpdates(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Locks(
            CoAuthLocks **prop /Out/) = 0;

        virtual HRESULT get_Updates(
            CoAuthUpdates **prop /Out/) = 0;

        virtual HRESULT get_Conflicts(
            Conflicts **prop /Out/) = 0;

        virtual HRESULT get_CanShare(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_CanMerge(
            VARIANT_BOOL *prop /Out/) = 0;
    };

    struct Conflicts : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Conflict **prop /Out/) = 0;

        virtual HRESULT AcceptAll() = 0;
        virtual HRESULT RejectAll() = 0;
    };

    struct Conflict : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdRevisionType *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT Accept() = 0;
        virtual HRESULT Reject() = 0;
    };
};