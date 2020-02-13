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
    struct CustomLayout : public IDispatch /Abstract/
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

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **Hyperlinks /Out/) = 0;

        virtual HRESULT get_Design(
            Design **Design /Out/) = 0;

        virtual HRESULT get_TimeLine(
            TimeLine **TimeLine /Out/) = 0;

        virtual HRESULT get_SlideShowTransition(
            SlideShowTransition **SlideShowTransition /Out/) = 0;

        virtual HRESULT get_MatchingName(
            BSTR *MatchingName /Out/) = 0;

        virtual HRESULT put_MatchingName(
            BSTR MatchingName) = 0;

        virtual HRESULT get_Preserved(
            MsoTriState *Preserved /Out/) = 0;

        virtual HRESULT put_Preserved(
            MsoTriState Preserved) = 0;

        virtual HRESULT get_Index(
            int *Index /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Duplicate(
            CustomLayout **Duplicate /Out/) = 0;

        virtual HRESULT MoveTo(
            int toPos) = 0;

        virtual HRESULT get_DisplayMasterShapes(
            MsoTriState *DisplayMasterShapes /Out/) = 0;

        virtual HRESULT put_DisplayMasterShapes(
            MsoTriState DisplayMasterShapes) = 0;

        virtual HRESULT get_FollowMasterBackground(
            MsoTriState *FollowMasterBackground /Out/) = 0;

        virtual HRESULT put_FollowMasterBackground(
            MsoTriState FollowMasterBackground) = 0;

        virtual HRESULT get_ThemeColorScheme(
            ksoapi::ThemeColorScheme **ThemeColorScheme /Out/) = 0;

        virtual HRESULT get_CustomerData(
            CustomerData **CustomerData /Out/) = 0;

        virtual HRESULT get_Guides(
            Guides **Guides /Out/) = 0;

    };
};
