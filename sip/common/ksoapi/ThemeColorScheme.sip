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
    struct ThemeColorScheme : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Colors(
            MsoThemeColorSchemeIndex Index,
            ThemeColor **Color /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT Load(
            BSTR FileName) = 0;

        virtual HRESULT Save(
            BSTR FileName) = 0;

        virtual HRESULT GetCustomColor(
            BSTR Name,
            MsoRGBType *CustomColor /Out/) = 0;

    };
};
