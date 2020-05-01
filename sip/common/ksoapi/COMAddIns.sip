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
    struct COMAddIns : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Item(
            VARIANT *Index,
            COMAddIn **RetValue /Out/) = 0;

        COMAddIn* __getitem__(VARIANT *index) const;
        %MethodCode
            ksoapi::COMAddIn *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Count(
            long *RetValue /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get__NewEnum(
            IUnknown **RetValue /Out/) = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT SetAppModal(
            VARIANT_BOOL varfModal) = 0;

    };
};
