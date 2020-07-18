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
    struct Documents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Document **prop /Out/) = 0;

        Document* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::Document *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Close(
            VARIANT *SaveChanges = argMissing(),
            VARIANT *OriginalFormat = argMissing(),
            VARIANT *RouteDocument = argMissing()) = 0;

        virtual HRESULT AddOld(
            VARIANT *Template = argMissing(),
            VARIANT *NewTemplate = argMissing(),
            Document **prop /Out/ = 0) = 0;

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
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT Save(
            VARIANT *NoPrompt = argMissing(),
            VARIANT *OriginalFormat = argMissing()) = 0;

        virtual HRESULT Add(
            VARIANT *Template = argMissing(),
            VARIANT *NewTemplate = argMissing(),
            VARIANT *DocumentType = argMissing(),
            VARIANT *Visible = argMissing(),
            Document **prop /Out/ = 0) = 0;

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
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT CheckOut(
            BSTR FileName) = 0;

        virtual HRESULT CanCheckOut(
            BSTR FileName,
            VARIANT_BOOL *prop /Out/) = 0;

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
            Document **prop /Out/ = 0) = 0;

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
            Document **prop /Out/ = 0) = 0;

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
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT AddBlogDocument(
            BSTR ProviderID,
            BSTR PostURL,
            BSTR BlogName,
            BSTR PostID = 0,
            Document **prop /Out/ = 0) = 0;

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)
    };
};
