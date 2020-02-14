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
    struct IFormatConditions : public IDispatch /Abstract/
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

        virtual HRESULT Item(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            XlFormatConditionType Type,
            VARIANT Operator = argMissing2(),
            VARIANT Formula1 = argMissing2(),
            VARIANT Formula2 = argMissing2(),
            VARIANT String = argMissing2(),
            VARIANT TextOperator = argMissing2(),
            VARIANT DateOperator = argMissing2(),
            VARIANT ScopeType = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT AddColorScale(
            long ColorScaleType,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT AddDatabar(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT AddIconSetCondition(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT AddTop10(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT AddAboveAverage(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT AddUniqueValues(
            IDispatch **RHS /Out/) = 0;

    };
};
