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
    struct ChartBorder : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Color(
            VARIANT RHS) = 0;

        virtual HRESULT get_Color(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT RHS) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_LineStyle(
            VARIANT RHS) = 0;

        virtual HRESULT get_LineStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Weight(
            VARIANT RHS) = 0;

        virtual HRESULT get_Weight(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

    };
};
