%Include oaidl.sip
%Include _Document.sip

namespace wpsapi
{
    // Oh no!!! The sdk has no Document but the argument is!!!
    // So we map to _Document by self
    class Document;

    struct Documents : public IDispatch /Abstract/
    {
    %TypeHeaderCode
        #include <QString>
        #include <wps/wpsapi.h>
    %End
    public:
        virtual HRESULT get__NewEnum(IUnknown **prop /Out/) = 0;
        virtual HRESULT get_Count(long *prop /Out/) = 0;
        //virtual HRESULT get_Application(Application **prop /Out/) = 0;
        virtual HRESULT get_Creator(long *prop /Out/) = 0;
        virtual HRESULT get_Parent(IDispatch **prop /Out/) = 0;
        virtual HRESULT Item(VARIANT *Index, _Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->Item(a0, (wpsapi::Document**)&a1);
        %End

        virtual HRESULT Close(
            VARIANT *SaveChanges,
            VARIANT *OriginalFormat,
            VARIANT *RouteDocument) = 0;

        virtual HRESULT AddOld(
            VARIANT *Template,
            VARIANT *NewTemplate,
            _Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->AddOld(a0, a1, (wpsapi::Document**)&a2);
        %End

        virtual HRESULT OpenOld(
            VARIANT *FileName,
            VARIANT *ConfirmConversions,
            VARIANT *ReadOnly,
            VARIANT *AddToRecentFiles,
            VARIANT *PasswordDocument,
            VARIANT *PasswordTemplate,
            VARIANT *Revert,
            VARIANT *WritePasswordDocument,
            VARIANT *WritePasswordTemplate,
            VARIANT *Format,
            _Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->OpenOld(a0, a1, a2, a3, a4, a5, a6,
                a7, a8, a9,
                (wpsapi::Document**)&a10);
        %End

        virtual HRESULT Save(
            VARIANT *NoPrompt,
            VARIANT *OriginalFormat) = 0;

        virtual HRESULT Add(
            VARIANT *Template,
            VARIANT *NewTemplate,
            VARIANT *DocumentType,
            VARIANT *Visible,
            _Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->Add(a0, a1, a2, a3, (wpsapi::Document**)&a4);
        %End

        virtual HRESULT Open2000(
            VARIANT *FileName,
            VARIANT *ConfirmConversions,
            VARIANT *ReadOnly,
            VARIANT *AddToRecentFiles,
            VARIANT *PasswordDocument,
            VARIANT *PasswordTemplate,
            VARIANT *Revert,
            VARIANT *WritePasswordDocument,
            VARIANT *WritePasswordTemplate,
            VARIANT *Format,
            VARIANT *Encoding,
            VARIANT *Visible,
            _Document **prop /Out/) = 0;
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
            VARIANT *ConfirmConversions,
            VARIANT *ReadOnly,
            VARIANT *AddToRecentFiles,
            VARIANT *PasswordDocument,
            VARIANT *PasswordTemplate,
            VARIANT *Revert,
            VARIANT *WritePasswordDocument,
            VARIANT *WritePasswordTemplate,
            VARIANT *Format,
            VARIANT *Encoding,
            VARIANT *Visible,
            VARIANT *OpenAndRepair,
            VARIANT *DocumentDirection,
            VARIANT *NoEncodingDialog,
            _Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->Open2002(a0, a1, a2, a3, a4, a5, a6,
                a7, a8, a9, a10, a11, a12, a13, a14,
                (wpsapi::Document**)&a15);
        %End

        virtual HRESULT Open(
            VARIANT *FileName,
            VARIANT *ConfirmConversions,
            VARIANT *ReadOnly,
            VARIANT *AddToRecentFiles,
            VARIANT *PasswordDocument,
            VARIANT *PasswordTemplate,
            VARIANT *Revert,
            VARIANT *WritePasswordDocument,
            VARIANT *WritePasswordTemplate,
            VARIANT *Format,
            VARIANT *Encoding,
            VARIANT *Visible,
            VARIANT *OpenAndRepair,
            VARIANT *DocumentDirection,
            VARIANT *NoEncodingDialog,
            VARIANT *XMLTransform,
            _Document **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->Open(a0, a1, a2, a3, a4, a5, a6,
                a7, a8, a9, a10, a11, a12, a13, a14, a15,
                (wpsapi::Document**)&a16);
        %End

        virtual HRESULT OpenNoRepairDialog(
            VARIANT *FileName,
            VARIANT *ConfirmConversions,
            VARIANT *ReadOnly,
            VARIANT *AddToRecentFiles,
            VARIANT *PasswordDocument,
            VARIANT *PasswordTemplate,
            VARIANT *Revert,
            VARIANT *WritePasswordDocument,
            VARIANT *WritePasswordTemplate,
            VARIANT *Format,
            VARIANT *Encoding,
            VARIANT *Visible,
            VARIANT *OpenAndRepair,
            VARIANT *DocumentDirection,
            VARIANT *NoEncodingDialog,
            VARIANT *XMLTransform,
            _Document **prop /Out/) = 0;
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