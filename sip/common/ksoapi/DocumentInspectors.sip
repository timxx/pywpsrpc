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
    struct DocumentInspectors : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT get_Item(
            int Index,
            DocumentInspector **ppidisp /Out/) = 0;

        DocumentInspector* __getitem__(int index) const;
        %MethodCode
            ksoapi::DocumentInspector *prop = nullptr;
            if (sipCpp->get_Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Count(
            int *pcItems /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
