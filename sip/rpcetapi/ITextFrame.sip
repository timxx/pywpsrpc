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
    struct ITextFrame : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_MarginBottom(
            single *RHS /Out/) = 0;

        virtual HRESULT put_MarginBottom(
            single RHS) = 0;

        virtual HRESULT get_MarginLeft(
            single *RHS /Out/) = 0;

        virtual HRESULT put_MarginLeft(
            single RHS) = 0;

        virtual HRESULT get_MarginRight(
            single *RHS /Out/) = 0;

        virtual HRESULT put_MarginRight(
            single RHS) = 0;

        virtual HRESULT get_MarginTop(
            single *RHS /Out/) = 0;

        virtual HRESULT put_MarginTop(
            single RHS) = 0;

        virtual HRESULT get_Orientation(
            MsoTextOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            MsoTextOrientation RHS) = 0;

        virtual HRESULT Characters(
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            Characters **RHS /Out/ = 0) = 0;

        virtual HRESULT get_HorizontalAlignment(
            XlHAlign *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            XlHAlign RHS) = 0;

        virtual HRESULT get_VerticalAlignment(
            XlVAlign *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            XlVAlign RHS) = 0;

        virtual HRESULT get_AutoSize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoSize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

        virtual HRESULT get_AutoMargins(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoMargins(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_VerticalOverflow(
            XlOartVerticalOverflow *RHS /Out/) = 0;

        virtual HRESULT put_VerticalOverflow(
            XlOartVerticalOverflow RHS) = 0;

        virtual HRESULT get_HorizontalOverflow(
            XlOartHorizontalOverflow *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalOverflow(
            XlOartHorizontalOverflow RHS) = 0;

    };
};
