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
    struct CustomLabel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_TopMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopMargin(
            single prop) = 0;

        virtual HRESULT get_SideMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_SideMargin(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_VerticalPitch(
            single *prop /Out/) = 0;

        virtual HRESULT put_VerticalPitch(
            single prop) = 0;

        virtual HRESULT get_HorizontalPitch(
            single *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPitch(
            single prop) = 0;

        virtual HRESULT get_NumberAcross(
            long *prop /Out/) = 0;

        virtual HRESULT put_NumberAcross(
            long prop) = 0;

        virtual HRESULT get_NumberDown(
            long *prop /Out/) = 0;

        virtual HRESULT put_NumberDown(
            long prop) = 0;

        virtual HRESULT get_DotMatrix(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_PageSize(
            WdCustomLabelPageSize *prop /Out/) = 0;

        virtual HRESULT put_PageSize(
            WdCustomLabelPageSize prop) = 0;

        virtual HRESULT get_Valid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

    };
};
