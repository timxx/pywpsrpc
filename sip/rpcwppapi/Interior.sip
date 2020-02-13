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
    struct Interior : public IDispatch /Abstract/
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

        virtual HRESULT put_InvertIfNegative(
            VARIANT RHS) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Pattern(
            VARIANT RHS) = 0;

        virtual HRESULT get_Pattern(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternColor(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PatternColorIndex(
            VARIANT RHS) = 0;

        virtual HRESULT get_PatternColorIndex(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

    };
};
