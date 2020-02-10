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
    struct Subdocuments : public IDispatch /Abstract/
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

        virtual HRESULT get_Expanded(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Expanded(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Item(
            long Index,
            Subdocument **prop /Out/) = 0;

        virtual HRESULT AddFromFile(
            VARIANT *Name,
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            Subdocument **prop /Out/ = 0) = 0;

        virtual HRESULT AddFromRange(
            Range *Range,
            Subdocument **prop /Out/) = 0;

        virtual HRESULT Merge(
            VARIANT *FirstSubdocument = argMissing(),
            VARIANT *LastSubdocument = argMissing()) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Select() = 0;
    };

    struct Subdocument : public IDispatch /Abstract/
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

        virtual HRESULT get_Locked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_HasFile(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Level(
            long *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Split(
            Range *Range) = 0;

        virtual HRESULT Open(_Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->Open((wpsapi::Document**)&a0);
        %End
    };
};