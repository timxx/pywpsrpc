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
    struct DefaultWebOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_IncludeNavigation(
            MsoTriState *IncludeNavigation /Out/) = 0;

        virtual HRESULT put_IncludeNavigation(
            MsoTriState IncludeNavigation) = 0;

        virtual HRESULT get_FrameColors(
            PpFrameColors *FrameColors /Out/) = 0;

        virtual HRESULT put_FrameColors(
            PpFrameColors FrameColors) = 0;

        virtual HRESULT get_ResizeGraphics(
            MsoTriState *ResizeGraphics /Out/) = 0;

        virtual HRESULT put_ResizeGraphics(
            MsoTriState ResizeGraphics) = 0;

        virtual HRESULT get_ShowSlideAnimation(
            MsoTriState *ShowSlideAnimation /Out/) = 0;

        virtual HRESULT put_ShowSlideAnimation(
            MsoTriState ShowSlideAnimation) = 0;

        virtual HRESULT get_OrganizeInFolder(
            MsoTriState *OrganizeInFolder /Out/) = 0;

        virtual HRESULT put_OrganizeInFolder(
            MsoTriState OrganizeInFolder) = 0;

        virtual HRESULT get_UseLongFileNames(
            MsoTriState *UseLongFileNames /Out/) = 0;

        virtual HRESULT put_UseLongFileNames(
            MsoTriState UseLongFileNames) = 0;

        virtual HRESULT get_RelyOnVML(
            MsoTriState *RelyOnVML /Out/) = 0;

        virtual HRESULT put_RelyOnVML(
            MsoTriState RelyOnVML) = 0;

        virtual HRESULT get_AllowPNG(
            MsoTriState *AllowPNG /Out/) = 0;

        virtual HRESULT put_AllowPNG(
            MsoTriState AllowPNG) = 0;

        virtual HRESULT get_ScreenSize(
            MsoScreenSize *ScreenSize /Out/) = 0;

        virtual HRESULT put_ScreenSize(
            MsoScreenSize ScreenSize) = 0;

        virtual HRESULT get_Encoding(
            MsoEncoding *Encoding /Out/) = 0;

        virtual HRESULT put_Encoding(
            MsoEncoding Encoding) = 0;

        virtual HRESULT get_UpdateLinksOnSave(
            MsoTriState *UpdateLinksOnSave /Out/) = 0;

        virtual HRESULT put_UpdateLinksOnSave(
            MsoTriState UpdateLinksOnSave) = 0;

        virtual HRESULT get_CheckIfOfficeIsHTMLEditor(
            MsoTriState *CheckIfOfficeIsHTMLEditor /Out/) = 0;

        virtual HRESULT put_CheckIfOfficeIsHTMLEditor(
            MsoTriState CheckIfOfficeIsHTMLEditor) = 0;

        virtual HRESULT get_AlwaysSaveInDefaultEncoding(
            MsoTriState *AlwaysSaveInDefaultEncoding /Out/) = 0;

        virtual HRESULT put_AlwaysSaveInDefaultEncoding(
            MsoTriState AlwaysSaveInDefaultEncoding) = 0;

        virtual HRESULT get_Fonts(
            ksoapi::WebPageFonts **Fonts /Out/) = 0;

        virtual HRESULT get_FolderSuffix(
            BSTR *FolderSuffix /Out/) = 0;

        virtual HRESULT get_TargetBrowser(
            MsoTargetBrowser *TargetBrowser /Out/) = 0;

        virtual HRESULT put_TargetBrowser(
            MsoTargetBrowser TargetBrowser) = 0;

        virtual HRESULT get_SaveNewWebPagesAsWebArchives(
            MsoTriState *SaveNewWebPagesAsWebArchives /Out/) = 0;

        virtual HRESULT put_SaveNewWebPagesAsWebArchives(
            MsoTriState SaveNewWebPagesAsWebArchives) = 0;

        virtual HRESULT get_HTMLVersion(
            PpHTMLVersion *HTMLVersion /Out/) = 0;

        virtual HRESULT put_HTMLVersion(
            PpHTMLVersion HTMLVersion) = 0;

        MsoTriState getIncludeNavigation();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_IncludeNavigation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeNavigation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeNavigation(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeNavigation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeNavigation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeNavigation, get=getIncludeNavigation, set=setIncludeNavigation)

        PpFrameColors getFrameColors();
        %MethodCode
            wppapi::PpFrameColors prop = (wppapi::PpFrameColors)0;
            HRESULT hr = sipCpp->get_FrameColors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FrameColors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrameColors(PpFrameColors prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FrameColors(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FrameColors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FrameColors, get=getFrameColors, set=setFrameColors)

        MsoTriState getResizeGraphics();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ResizeGraphics(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ResizeGraphics()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setResizeGraphics(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ResizeGraphics(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ResizeGraphics()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ResizeGraphics, get=getResizeGraphics, set=setResizeGraphics)

        MsoTriState getShowSlideAnimation();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowSlideAnimation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSlideAnimation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSlideAnimation(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSlideAnimation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSlideAnimation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSlideAnimation, get=getShowSlideAnimation, set=setShowSlideAnimation)

        MsoTriState getOrganizeInFolder();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_OrganizeInFolder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OrganizeInFolder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrganizeInFolder(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OrganizeInFolder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OrganizeInFolder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OrganizeInFolder, get=getOrganizeInFolder, set=setOrganizeInFolder)

        MsoTriState getUseLongFileNames();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_UseLongFileNames(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseLongFileNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseLongFileNames(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseLongFileNames(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseLongFileNames()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseLongFileNames, get=getUseLongFileNames, set=setUseLongFileNames)

        MsoTriState getRelyOnVML();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_RelyOnVML(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelyOnVML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelyOnVML(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelyOnVML(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelyOnVML()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelyOnVML, get=getRelyOnVML, set=setRelyOnVML)

        MsoTriState getAllowPNG();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AllowPNG(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowPNG()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowPNG(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowPNG(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowPNG()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowPNG, get=getAllowPNG, set=setAllowPNG)

        MsoScreenSize getScreenSize();
        %MethodCode
            wppapi::MsoScreenSize prop = (wppapi::MsoScreenSize)0;
            HRESULT hr = sipCpp->get_ScreenSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScreenSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScreenSize(MsoScreenSize prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScreenSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScreenSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScreenSize, get=getScreenSize, set=setScreenSize)

        MsoEncoding getEncoding();
        %MethodCode
            wppapi::MsoEncoding prop = (wppapi::MsoEncoding)0;
            HRESULT hr = sipCpp->get_Encoding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Encoding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEncoding(MsoEncoding prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Encoding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Encoding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Encoding, get=getEncoding, set=setEncoding)

        MsoTriState getUpdateLinksOnSave();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_UpdateLinksOnSave(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateLinksOnSave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateLinksOnSave(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateLinksOnSave(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpdateLinksOnSave()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpdateLinksOnSave, get=getUpdateLinksOnSave, set=setUpdateLinksOnSave)

        MsoTriState getCheckIfOfficeIsHTMLEditor();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_CheckIfOfficeIsHTMLEditor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckIfOfficeIsHTMLEditor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckIfOfficeIsHTMLEditor(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckIfOfficeIsHTMLEditor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CheckIfOfficeIsHTMLEditor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CheckIfOfficeIsHTMLEditor, get=getCheckIfOfficeIsHTMLEditor, set=setCheckIfOfficeIsHTMLEditor)

        MsoTriState getAlwaysSaveInDefaultEncoding();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AlwaysSaveInDefaultEncoding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlwaysSaveInDefaultEncoding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlwaysSaveInDefaultEncoding(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlwaysSaveInDefaultEncoding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlwaysSaveInDefaultEncoding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlwaysSaveInDefaultEncoding, get=getAlwaysSaveInDefaultEncoding, set=setAlwaysSaveInDefaultEncoding)

        ksoapi::WebPageFonts* getFonts();
        %MethodCode
            ksoapi::WebPageFonts *prop = nullptr;
            HRESULT hr = sipCpp->get_Fonts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fonts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Fonts, get=getFonts)

        BSTR getFolderSuffix();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FolderSuffix(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FolderSuffix()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FolderSuffix, get=getFolderSuffix)

        MsoTargetBrowser getTargetBrowser();
        %MethodCode
            wppapi::MsoTargetBrowser prop = (wppapi::MsoTargetBrowser)0;
            HRESULT hr = sipCpp->get_TargetBrowser(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TargetBrowser()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTargetBrowser(MsoTargetBrowser prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TargetBrowser(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TargetBrowser()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TargetBrowser, get=getTargetBrowser, set=setTargetBrowser)

        MsoTriState getSaveNewWebPagesAsWebArchives();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_SaveNewWebPagesAsWebArchives(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveNewWebPagesAsWebArchives()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveNewWebPagesAsWebArchives(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveNewWebPagesAsWebArchives(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveNewWebPagesAsWebArchives()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveNewWebPagesAsWebArchives, get=getSaveNewWebPagesAsWebArchives, set=setSaveNewWebPagesAsWebArchives)

        PpHTMLVersion getHTMLVersion();
        %MethodCode
            wppapi::PpHTMLVersion prop = (wppapi::PpHTMLVersion)0;
            HRESULT hr = sipCpp->get_HTMLVersion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTMLVersion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHTMLVersion(PpHTMLVersion prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HTMLVersion(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HTMLVersion()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HTMLVersion, get=getHTMLVersion, set=setHTMLVersion)
    };
};
