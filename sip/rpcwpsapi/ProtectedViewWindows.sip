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
    struct ProtectedViewWindows : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            VARIANT *Index,
            ProtectedViewWindow **prop /Out/) = 0;

        ProtectedViewWindow* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::ProtectedViewWindow *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Open(
            VARIANT *FileName,
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *Visible = argMissing(),
            VARIANT *OpenAndRepair = argMissing(),
            ProtectedViewWindow **prop /Out/ = 0) = 0;

    };
};
