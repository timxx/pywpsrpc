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
    struct FileDialogFilters : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT get_Count(
            long *pcFilters /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            int Index,
            FileDialogFilter **Item /Out/) = 0;

        FileDialogFilter* __getitem__(int index) const;
        %MethodCode
            ksoapi::FileDialogFilter *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Delete(
            VARIANT filter = argMissing2()) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT Add(
            BSTR Description,
            BSTR Extensions,
            VARIANT Position = argMissing2(),
            FileDialogFilter **Add /Out/ = 0) = 0;

    };
};
