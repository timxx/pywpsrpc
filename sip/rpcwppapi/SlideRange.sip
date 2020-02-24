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
    struct SlideRange : public IDispatch /Abstract/
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

        virtual HRESULT get_SlideShowTransition(
            SlideShowTransition **SlideShowTransition /Out/) = 0;

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

        virtual HRESULT get_SlideID(
            long *SlideID /Out/) = 0;

        virtual HRESULT get_PrintSteps(
            int *PrintSteps /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT get_Layout(
            PpSlideLayout *Layout /Out/) = 0;

        virtual HRESULT put_Layout(
            PpSlideLayout Layout) = 0;

        virtual HRESULT Duplicate(
            SlideRange **Duplicate /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Tags(
            Tags **Tags /Out/) = 0;

        virtual HRESULT get_SlideIndex(
            int *SlideIndex /Out/) = 0;

        virtual HRESULT get_SlideNumber(
            int *SlideNumber /Out/) = 0;

        virtual HRESULT get_DisplayMasterShapes(
            MsoTriState *DisplayMasterShapes /Out/) = 0;

        virtual HRESULT put_DisplayMasterShapes(
            MsoTriState DisplayMasterShapes) = 0;

        virtual HRESULT get_FollowMasterBackground(
            MsoTriState *FollowMasterBackground /Out/) = 0;

        virtual HRESULT put_FollowMasterBackground(
            MsoTriState FollowMasterBackground) = 0;

        virtual HRESULT get_NotesPage(
            SlideRange **NotesPage /Out/) = 0;

        virtual HRESULT get_Master(
            _Master **Master /Out/) = 0;

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **Hyperlinks /Out/) = 0;

        virtual HRESULT Export(
            BSTR FileName,
            BSTR FilterName,
            int ScaleWidth = 0,
            int ScaleHeight = 0) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Slide **Item /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT _Index(
            int Index,
            VARIANT *_Index /Out/) = 0;

        virtual HRESULT get_Count(
            long *Count /Out/) = 0;

        virtual HRESULT get_Scripts(
            ksoapi::Scripts **Scripts /Out/) = 0;

        virtual HRESULT get_Comments(
            Comments **Comments /Out/) = 0;

        virtual HRESULT get_Design(
            Design **Design /Out/) = 0;

        virtual HRESULT put_Design(
            Design *Design) = 0;

        virtual HRESULT MoveTo(
            int toPos) = 0;

        virtual HRESULT get_TimeLine(
            TimeLine **TimeLine /Out/) = 0;

        virtual HRESULT ApplyTemplate(
            BSTR FileName) = 0;

        virtual HRESULT get_SectionNumber(
            int *SectionNumber /Out/) = 0;

        virtual HRESULT get_CustomLayout(
            CustomLayout **CustomLayout /Out/) = 0;

        virtual HRESULT put_CustomLayout(
            CustomLayout *CustomLayout) = 0;

        virtual HRESULT ApplyTheme(
            BSTR themeName) = 0;

        virtual HRESULT get_ThemeColorScheme(
            ksoapi::ThemeColorScheme **ThemeColorScheme /Out/) = 0;

        virtual HRESULT ApplyThemeColorScheme(
            BSTR themeColorSchemeName) = 0;

        virtual HRESULT get_BackgroundStyle(
            MsoBackgroundStyleIndex *BackgroundStyle /Out/) = 0;

        virtual HRESULT put_BackgroundStyle(
            MsoBackgroundStyleIndex BackgroundStyle) = 0;

        virtual HRESULT get_CustomerData(
            CustomerData **CustomerData /Out/) = 0;

        virtual HRESULT PublishSlides(
            BSTR SlideLibraryUrl,
            VARIANT_BOOL Overwrite = VARIANT_FALSE,
            VARIANT_BOOL UseSlideOrder = VARIANT_FALSE) = 0;

        virtual HRESULT MoveToSectionStart(
            int toSection) = 0;

        virtual HRESULT get_sectionIndex(
            int *sectionIndex /Out/) = 0;

        virtual HRESULT get_HasNotesPage(
            MsoTriState *HasNotesPage /Out/) = 0;

        virtual HRESULT ApplyTemplate2(
            BSTR FileName,
            BSTR VariantGUID) = 0;

    };
};
