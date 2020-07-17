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
    struct _Slide : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

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

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        Shapes* getShapes();
        %MethodCode
            wppapi::Shapes *prop = nullptr;
            HRESULT hr = sipCpp->get_Shapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shapes, get=getShapes)

        HeadersFooters* getHeadersFooters();
        %MethodCode
            wppapi::HeadersFooters *prop = nullptr;
            HRESULT hr = sipCpp->get_HeadersFooters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeadersFooters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HeadersFooters, get=getHeadersFooters)

        SlideShowTransition* getSlideShowTransition();
        %MethodCode
            wppapi::SlideShowTransition *prop = nullptr;
            HRESULT hr = sipCpp->get_SlideShowTransition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideShowTransition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideShowTransition, get=getSlideShowTransition)

        ColorScheme* getColorScheme();
        %MethodCode
            wppapi::ColorScheme *prop = nullptr;
            HRESULT hr = sipCpp->get_ColorScheme(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorScheme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColorScheme(ColorScheme *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColorScheme(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColorScheme()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColorScheme, get=getColorScheme, set=setColorScheme)

        ShapeRange* getBackground();
        %MethodCode
            wppapi::ShapeRange *prop = nullptr;
            HRESULT hr = sipCpp->get_Background(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Background()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Background, get=getBackground)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        long getSlideID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SlideID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideID, get=getSlideID)

        int getPrintSteps();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_PrintSteps(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintSteps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrintSteps, get=getPrintSteps)

        PpSlideLayout getLayout();
        %MethodCode
            wppapi::PpSlideLayout prop = (wppapi::PpSlideLayout)0;
            HRESULT hr = sipCpp->get_Layout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Layout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayout(PpSlideLayout prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Layout(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Layout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Layout, get=getLayout, set=setLayout)

        Tags* getTags();
        %MethodCode
            wppapi::Tags *prop = nullptr;
            HRESULT hr = sipCpp->get_Tags(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tags, get=getTags)

        int getSlideIndex();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_SlideIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideIndex, get=getSlideIndex)

        int getSlideNumber();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_SlideNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideNumber, get=getSlideNumber)

        MsoTriState getDisplayMasterShapes();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_DisplayMasterShapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayMasterShapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayMasterShapes(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayMasterShapes(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayMasterShapes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayMasterShapes, get=getDisplayMasterShapes, set=setDisplayMasterShapes)

        MsoTriState getFollowMasterBackground();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_FollowMasterBackground(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FollowMasterBackground()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFollowMasterBackground(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FollowMasterBackground(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FollowMasterBackground()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FollowMasterBackground, get=getFollowMasterBackground, set=setFollowMasterBackground)

        SlideRange* getNotesPage();
        %MethodCode
            wppapi::SlideRange *prop = nullptr;
            HRESULT hr = sipCpp->get_NotesPage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NotesPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NotesPage, get=getNotesPage)

        _Master* getMaster();
        %MethodCode
            wppapi::_Master *prop = nullptr;
            HRESULT hr = sipCpp->get_Master(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Master()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Master, get=getMaster)

        Hyperlinks* getHyperlinks();
        %MethodCode
            wppapi::Hyperlinks *prop = nullptr;
            HRESULT hr = sipCpp->get_Hyperlinks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hyperlinks, get=getHyperlinks)

        ksoapi::Scripts* getScripts();
        %MethodCode
            ksoapi::Scripts *prop = nullptr;
            HRESULT hr = sipCpp->get_Scripts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Scripts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Scripts, get=getScripts)

        Comments* getComments();
        %MethodCode
            wppapi::Comments *prop = nullptr;
            HRESULT hr = sipCpp->get_Comments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Comments, get=getComments)

        Design* getDesign();
        %MethodCode
            wppapi::Design *prop = nullptr;
            HRESULT hr = sipCpp->get_Design(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Design()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDesign(Design *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Design(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Design()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Design, get=getDesign, set=setDesign)

        TimeLine* getTimeLine();
        %MethodCode
            wppapi::TimeLine *prop = nullptr;
            HRESULT hr = sipCpp->get_TimeLine(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TimeLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TimeLine, get=getTimeLine)

        int getSectionNumber();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_SectionNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SectionNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SectionNumber, get=getSectionNumber)

        CustomLayout* getCustomLayout();
        %MethodCode
            wppapi::CustomLayout *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomLayout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomLayout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCustomLayout(CustomLayout *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CustomLayout(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CustomLayout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CustomLayout, get=getCustomLayout, set=setCustomLayout)

        ksoapi::ThemeColorScheme* getThemeColorScheme();
        %MethodCode
            ksoapi::ThemeColorScheme *prop = nullptr;
            HRESULT hr = sipCpp->get_ThemeColorScheme(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThemeColorScheme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThemeColorScheme, get=getThemeColorScheme)

        MsoBackgroundStyleIndex getBackgroundStyle();
        %MethodCode
            wppapi::MsoBackgroundStyleIndex prop = (wppapi::MsoBackgroundStyleIndex)0;
            HRESULT hr = sipCpp->get_BackgroundStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackgroundStyle(MsoBackgroundStyleIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackgroundStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackgroundStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackgroundStyle, get=getBackgroundStyle, set=setBackgroundStyle)

        CustomerData* getCustomerData();
        %MethodCode
            wppapi::CustomerData *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomerData(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomerData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomerData, get=getCustomerData)

        int getsectionIndex();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_sectionIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_sectionIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=sectionIndex, get=getsectionIndex)

        MsoTriState getHasNotesPage();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_HasNotesPage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasNotesPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasNotesPage, get=getHasNotesPage)
    };
};
