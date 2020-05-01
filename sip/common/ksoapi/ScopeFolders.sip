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
    struct ScopeFolders : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            int Index,
            ScopeFolder **ScopeFolderRet /Out/) = 0;

        ScopeFolder* __getitem__(int index) const;
        %MethodCode
            ksoapi::ScopeFolder *prop = nullptr;
            if (sipCpp->get_Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Count(
            int *iCountRetVal /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };
};
