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

        TextStyles* getTextStyles();
        %MethodCode
            wppapi::TextStyles *prop = nullptr;
            HRESULT hr = sipCpp->get_TextStyles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextStyles, get=getTextStyles)

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

        CustomLayouts* getCustomLayouts();
        %MethodCode
            wppapi::CustomLayouts *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomLayouts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomLayouts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomLayouts, get=getCustomLayouts)

        ksoapi::OfficeTheme* getTheme();
        %MethodCode
            ksoapi::OfficeTheme *prop = nullptr;
            HRESULT hr = sipCpp->get_Theme(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Theme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Theme, get=getTheme)

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
