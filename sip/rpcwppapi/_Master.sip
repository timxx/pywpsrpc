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
    struct _Master : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Shapes(
            Shapes **Shapes /Out/) = 0;

        virtual HRESULT get_HeadersFooters(
            HeadersFooters **HeadersFooters /Out/) = 0;

        virtual HRESULT get_ColorScheme(
            ColorScheme **ColorScheme /Out/) = 0;

        virtual HRESULT put_ColorScheme(
            ColorScheme *ColorScheme) = 0;

        virtual HRESULT get_Background(
            ShapeRange **Background /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Height(
            single *Height /Out/) = 0;

        virtual HRESULT get_Width(
            single *Width /Out/) = 0;

        virtual HRESULT get_TextStyles(
            TextStyles **TextStyles /Out/) = 0;

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **Hyperlinks /Out/) = 0;

        virtual HRESULT get_Scripts(
            ksoapi::Scripts **Scripts /Out/) = 0;

        virtual HRESULT get_Design(
            Design **Design /Out/) = 0;

        virtual HRESULT get_TimeLine(
            TimeLine **TimeLine /Out/) = 0;

        virtual HRESULT get_SlideShowTransition(
            SlideShowTransition **SlideShowTransition /Out/) = 0;

        virtual HRESULT get_CustomLayouts(
            CustomLayouts **CustomLayouts /Out/) = 0;

        virtual HRESULT get_Theme(
            ksoapi::OfficeTheme **Theme /Out/) = 0;

        virtual HRESULT ApplyTheme(
            BSTR themeName) = 0;

        virtual HRESULT get_BackgroundStyle(
            MsoBackgroundStyleIndex *BackgroundStyle /Out/) = 0;

        virtual HRESULT put_BackgroundStyle(
            MsoBackgroundStyleIndex BackgroundStyle) = 0;

        virtual HRESULT get_CustomerData(
            CustomerData **CustomerData /Out/) = 0;

        virtual HRESULT get_Guides(
            Guides **Guides /Out/) = 0;

    };
};
