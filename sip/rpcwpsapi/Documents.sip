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
    // Oh no!!! The sdk has no Document but the argument is!!!
    // So we map to _Document by self
    class Document;

    struct Documents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(IUnknown **prop /Out/) = 0;
        virtual HRESULT get_Count(long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(long *prop /Out/) = 0;
        virtual HRESULT get_Parent(IDispatch **prop /Out/) = 0;
        virtual HRESULT Item(VARIANT *Index, _Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->Item(a0, (wpsapi::Document**)&a1);
        %End

        virtual HRESULT Close(
            VARIANT *SaveChanges = argMissing(),
            VARIANT *OriginalFormat = argMissing(),
            VARIANT *RouteDocument = argMissing()) = 0;

        virtual HRESULT AddOld(
            VARIANT *Template = argMissing(),
            VARIANT *NewTemplate = argMissing(),
            _Document **prop /Out/ = 0) = 0;
        %MethodCode
            sipRes = sipCpp->AddOld(a0, a1, (wpsapi::Document**)&a2);
        %End

        virtual HRESULT OpenOld(
            VARIANT *FileName,
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *Format = argMissing(),
            _Document **prop /Out/ = 0) = 0;
        %MethodCode
            sipRes = sipCpp->OpenOld(a0, a1, a2, a3, a4, a5, a6,
                a7, a8, a9,
                (wpsapi::Document**)&a10);
        %End

        virtual HRESULT Save(
            VARIANT *NoPrompt = argMissing(),
            VARIANT *OriginalFormat = argMissing()) = 0;

        virtual HRESULT Add(
            VARIANT *Template = argMissing(),
            VARIANT *NewTemplate = argMissing(),
            VARIANT *DocumentType = argMissing(),
            VARIANT *Visible = argMissing(),
            _Document **prop /Out/ = 0 ) = 0;
        %MethodCode
            sipRes = sipCpp->Add(a0, a1, a2, a3, (wpsapi::Document**)&a4);
        %End

        virtual HRESULT Open2000(
            VARIANT *FileName,
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *Encoding = argMissing(),
            VARIANT *Visible = argMissing(),
            _Document **prop /Out/ = 0) = 0;
        %MethodCode
            sipRes = sipCpp->Open2000(a0, a1, a2, a3, a4, a5, a6,
                a7, a8, a9, a10, a11,
                (wpsapi::Document**)&a12);
        %End

        virtual HRESULT CheckOut(BSTR FileName) = 0;

        virtual HRESULT CanCheckOut(
            BSTR FileName,
            VARIANT_BOOL *prop) = 0;

        virtual HRESULT Open2002(
            VARIANT *FileName,
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *Encoding = argMissing(),
            VARIANT *Visible = argMissing(),
            VARIANT *OpenAndRepair = argMissing(),
            VARIANT *DocumentDirection = argMissing(),
            VARIANT *NoEncodingDialog = argMissing(),
            _Document **prop /Out/ = 0) = 0;
        %MethodCode
            sipRes = sipCpp->Open2002(a0, a1, a2, a3, a4, a5, a6,
                a7, a8, a9, a10, a11, a12, a13, a14,
                (wpsapi::Document**)&a15);
        %End

        virtual HRESULT Open(
            VARIANT *FileName,
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *Encoding = argMissing(),
            VARIANT *Visible = argMissing(),
            VARIANT *OpenAndRepair = argMissing(),
            VARIANT *DocumentDirection = argMissing(),
            VARIANT *NoEncodingDialog = argMissing(),
            VARIANT *XMLTransform = argMissing(),
            _Document **prop /Out/ = 0) = 0;
        %MethodCode
            sipRes = sipCpp->Open(a0, a1, a2, a3, a4, a5, a6,
                a7, a8, a9, a10, a11, a12, a13, a14, a15,
                (wpsapi::Document**)&a16);
        %End

        virtual HRESULT OpenNoRepairDialog(
            VARIANT *FileName,
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *Encoding = argMissing(),
            VARIANT *Visible = argMissing(),
            VARIANT *OpenAndRepair = argMissing(),
            VARIANT *DocumentDirection = argMissing(),
            VARIANT *NoEncodingDialog = argMissing(),
            VARIANT *XMLTransform = argMissing(),
            _Document **prop /Out/ = 0) = 0;
        %MethodCode
            sipRes = sipCpp->OpenNoRepairDialog(a0, a1, a2, a3, a4, a5,
                a6, a7, a8, a9, a10, a11, a12, a13, a14,
                a15, (wpsapi::Document**)&a16);
        %End

        virtual HRESULT AddBlogDocument(
            BSTR ProviderID,
            BSTR PostURL,
            BSTR BlogName,
            BSTR PostID,
            _Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->AddBlogDocument(*a0, *a1, *a2, *a3,
                (wpsapi::Document**)&a4);
        %End
    };
};