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
    struct ISort : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Rng(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Header(
            XlYesNoGuess *RHS /Out/) = 0;

        virtual HRESULT put_Header(
            XlYesNoGuess RHS) = 0;

        virtual HRESULT get_MatchCase(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MatchCase(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Orientation(
            XlSortOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlSortOrientation RHS) = 0;

        virtual HRESULT get_SortMethod(
            XlSortMethod *RHS /Out/) = 0;

        virtual HRESULT put_SortMethod(
            XlSortMethod RHS) = 0;

        virtual HRESULT get_SortFields(
            SortFields **RHS /Out/) = 0;

        virtual HRESULT SetRange(
            Range *Rng) = 0;

        virtual HRESULT Apply() = 0;

    };
};
