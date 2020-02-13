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
    struct IValueChange : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Order(
            long *RHS /Out/) = 0;

        virtual HRESULT get_VisibleInPivotTable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_PivotCell(
            PivotCell **RHS /Out/) = 0;

        virtual HRESULT get_Tuple(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            double *RHS /Out/) = 0;

        virtual HRESULT get_AllocationValue(
            XlAllocationValue *RHS /Out/) = 0;

        virtual HRESULT get_AllocationMethod(
            XlAllocationMethod *RHS /Out/) = 0;

        virtual HRESULT get_AllocationWeightExpression(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

    };
};
