/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Frame : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_HeightRule(
            WdFrameSizeRule *prop /Out/) = 0;

        virtual HRESULT put_HeightRule(
            WdFrameSizeRule prop) = 0;

        virtual HRESULT get_WidthRule(
            WdFrameSizeRule *prop /Out/) = 0;

        virtual HRESULT put_WidthRule(
            WdFrameSizeRule prop) = 0;

        virtual HRESULT get_HorizontalDistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_HorizontalDistanceFromText(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HorizontalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPosition(
            single prop) = 0;

        virtual HRESULT get_LockAnchor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LockAnchor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition prop) = 0;

        virtual HRESULT get_RelativeVerticalPosition(
            WdRelativeVerticalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeVerticalPosition(
            WdRelativeVerticalPosition prop) = 0;

        virtual HRESULT get_VerticalDistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_VerticalDistanceFromText(
            single prop) = 0;

        virtual HRESULT get_VerticalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_VerticalPosition(
            single prop) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_TextWrap(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TextWrap(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

    };
};
