/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Axes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Creator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT Item(
            XlAxisType Type,
            XlAxisGroup AxisGroup = wppapi::xlPrimary,
            Axis **RHS /Out/ = 0) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT _Default(
            XlAxisType Type,
            XlAxisGroup AxisGroup = wppapi::xlPrimary,
            Axis **RHS /Out/ = 0) = 0;

    };
};
