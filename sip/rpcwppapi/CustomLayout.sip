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

        single getHeight();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Height, get=getHeight)

        single getWidth();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Width, get=getWidth)

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

        %Property(name=Design, get=getDesign)

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

        BSTR getMatchingName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MatchingName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchingName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchingName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchingName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchingName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchingName, get=getMatchingName, set=setMatchingName)

        MsoTriState getPreserved();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Preserved(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Preserved()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreserved(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Preserved(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Preserved()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Preserved, get=getPreserved, set=setPreserved)

        int getIndex();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

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

        Guides* getGuides();
        %MethodCode
            wppapi::Guides *prop = nullptr;
            HRESULT hr = sipCpp->get_Guides(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Guides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Guides, get=getGuides)
    };
};
