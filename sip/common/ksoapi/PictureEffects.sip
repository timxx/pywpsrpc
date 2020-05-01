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
    struct PictureEffects : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            int Index,
            PictureEffect **Item /Out/) = 0;

        PictureEffect* __getitem__(int index) const;
        %MethodCode
            ksoapi::PictureEffect *prop = nullptr;
            if (sipCpp->get_Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT Insert(
            MsoPictureEffectType EffectType,
            int Position = 0,
            PictureEffect **Effect /Out/ = 0) = 0;

        virtual HRESULT Delete(
            int Index = -1) = 0;

    };
};
