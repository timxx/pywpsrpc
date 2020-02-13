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
    struct IFilter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_On(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Criteria1(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get__Operator(
            XlAutoFilterOperator *RHS /Out/) = 0;

        virtual HRESULT get_Criteria2(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Operator(
            XlAutoFilterOperator *RHS /Out/) = 0;

        virtual HRESULT put_Operator(
            XlAutoFilterOperator RHS) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

    };
};
