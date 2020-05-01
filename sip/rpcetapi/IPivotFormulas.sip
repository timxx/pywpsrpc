/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IPivotFormulas : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT _Add(
            BSTR Formula,
            PivotFormula **RHS /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            PivotFormula **RHS /Out/) = 0;

        PivotFormula* __getitem__(VARIANT index) const;
        %MethodCode
            etapi::PivotFormula *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get__Default(
            VARIANT Index,
            PivotFormula **RHS /Out/) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT Add(
            BSTR Formula,
            VARIANT UseStandardFormula = argMissing2(),
            PivotFormula **RHS /Out/ = 0) = 0;

    };
};
