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
    struct IMsoBorder : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_Color(
            VARIANT pval) = 0;

        virtual HRESULT get_Color(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT pval) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_LineStyle(
            VARIANT pval) = 0;

        virtual HRESULT get_LineStyle(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Weight(
            VARIANT pval) = 0;

        virtual HRESULT get_Weight(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

    };
};
