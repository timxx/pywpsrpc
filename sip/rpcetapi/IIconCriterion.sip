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
    struct IIconCriterion : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Type(
            XlConditionValueTypes *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            XlConditionValueTypes RHS) = 0;

        virtual HRESULT get_Value(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            VARIANT RHS) = 0;

        virtual HRESULT get_Operator(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Operator(
            long RHS) = 0;

        virtual HRESULT get_Icon(
            XlIcon *RHS /Out/) = 0;

        virtual HRESULT put_Icon(
            XlIcon RHS) = 0;

    };
};
