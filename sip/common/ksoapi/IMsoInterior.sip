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
    struct IMsoInterior : public IDispatch /Abstract/
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

        virtual HRESULT put_InvertIfNegative(
            VARIANT pval) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_Pattern(
            VARIANT pval) = 0;

        virtual HRESULT get_Pattern(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_PatternColor(
            VARIANT pval) = 0;

        virtual HRESULT get_PatternColor(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_PatternColorIndex(
            VARIANT pval) = 0;

        virtual HRESULT get_PatternColorIndex(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

    };
};
