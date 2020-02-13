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
    struct Axes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *pval /Out/) = 0;

        virtual HRESULT get_Item(
            XlAxisType Type,
            XlAxisGroup AxisGroup,
            IMsoAxis **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get__Default(
            XlAxisType Type,
            XlAxisGroup AxisGroup,
            IMsoAxis **RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

    };
};
