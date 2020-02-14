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
    struct IPane : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Activate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT LargeScroll(
            VARIANT Down = argMissing2(),
            VARIANT Up = argMissing2(),
            VARIANT ToRight = argMissing2(),
            VARIANT ToLeft = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ScrollColumn(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ScrollColumn(
            long RHS) = 0;

        virtual HRESULT get_ScrollRow(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ScrollRow(
            long RHS) = 0;

        virtual HRESULT SmallScroll(
            VARIANT Down = argMissing2(),
            VARIANT Up = argMissing2(),
            VARIANT ToRight = argMissing2(),
            VARIANT ToLeft = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_VisibleRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT ScrollIntoView(
            long Left,
            long Top,
            long Width,
            long Height,
            VARIANT Start = argMissing2()) = 0;

        virtual HRESULT PointsToScreenPixelsX(
            long Points,
            long *RHS /Out/) = 0;

        virtual HRESULT PointsToScreenPixelsY(
            long Points,
            long *RHS /Out/) = 0;

    };
};
