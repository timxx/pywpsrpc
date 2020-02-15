/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapiex
{
    struct WaterMark : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            WdWaterMarkType *prop /Out/) = 0;

        virtual HRESULT get_Range(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Valid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT SaveTo(
            IDispatch *prop) = 0;

        virtual HRESULT get_Italic(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Italic(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Left(
            single *prop /Out/) = 0;

        virtual HRESULT put_Left(
            single prop) = 0;

        virtual HRESULT get_Top(
            single *prop /Out/) = 0;

        virtual HRESULT put_Top(
            single prop) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_FontName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FontName(
            BSTR prop) = 0;

        virtual HRESULT get_FontColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_FontColor(
            long prop) = 0;

        virtual HRESULT get_FontSize(
            single *prop /Out/) = 0;

        virtual HRESULT put_FontSize(
            single prop) = 0;

        virtual HRESULT get_Transparency(
            single *prop /Out/) = 0;

        virtual HRESULT put_Transparency(
            single prop) = 0;

        virtual HRESULT get_Washout(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Washout(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Zoom(
            single *prop /Out/) = 0;

        virtual HRESULT put_Zoom(
            single prop) = 0;

    };
};
