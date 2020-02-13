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
    struct ColorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_RGB(
            long *prop /Out/) = 0;

        virtual HRESULT put_RGB(
            long prop) = 0;

        virtual HRESULT get_SchemeColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_SchemeColor(
            long prop) = 0;

        virtual HRESULT get_Type(
            MsoColorType *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_TintAndShade(
            single *prop /Out/) = 0;

        virtual HRESULT put_TintAndShade(
            single prop) = 0;

        virtual HRESULT get_OverPrint(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_OverPrint(
            MsoTriState prop) = 0;

        virtual HRESULT get_Ink(
            long Index,
            single *prop /Out/) = 0;

        virtual HRESULT put_Ink(
            long Index,
            single prop) = 0;

        virtual HRESULT get_Cyan(
            long *prop /Out/) = 0;

        virtual HRESULT put_Cyan(
            long prop) = 0;

        virtual HRESULT get_Magenta(
            long *prop /Out/) = 0;

        virtual HRESULT put_Magenta(
            long prop) = 0;

        virtual HRESULT get_Yellow(
            long *prop /Out/) = 0;

        virtual HRESULT put_Yellow(
            long prop) = 0;

        virtual HRESULT get_Black(
            long *prop /Out/) = 0;

        virtual HRESULT put_Black(
            long prop) = 0;

        virtual HRESULT SetCMYK(
            long Cyan,
            long Magenta,
            long Yellow,
            long Black) = 0;

        virtual HRESULT get_ObjectThemeColor(
            WdThemeColorIndex *prop /Out/) = 0;

        virtual HRESULT put_ObjectThemeColor(
            WdThemeColorIndex prop) = 0;

        virtual HRESULT get_Brightness(
            single *prop /Out/) = 0;

        virtual HRESULT put_Brightness(
            single prop) = 0;

    };
};
