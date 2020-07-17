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
    struct DefaultWebOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_OptimizeForBrowser(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OptimizeForBrowser(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BrowserLevel(
            WdBrowserLevel *prop /Out/) = 0;

        virtual HRESULT put_BrowserLevel(
            WdBrowserLevel prop) = 0;

        virtual HRESULT get_RelyOnCSS(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RelyOnCSS(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OrganizeInFolder(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OrganizeInFolder(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UpdateLinksOnSave(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UpdateLinksOnSave(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseLongFileNames(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseLongFileNames(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CheckIfOfficeIsHTMLEditor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckIfOfficeIsHTMLEditor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CheckIfWordIsDefaultHTMLEditor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckIfWordIsDefaultHTMLEditor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RelyOnVML(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RelyOnVML(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowPNG(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowPNG(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ScreenSize(
            MsoScreenSize *prop /Out/) = 0;

        virtual HRESULT put_ScreenSize(
            MsoScreenSize prop) = 0;

        virtual HRESULT get_PixelsPerInch(
            long *prop /Out/) = 0;

        virtual HRESULT put_PixelsPerInch(
            long prop) = 0;

        virtual HRESULT get_Encoding(
            MsoEncoding *prop /Out/) = 0;

        virtual HRESULT put_Encoding(
            MsoEncoding prop) = 0;

        virtual HRESULT get_AlwaysSaveInDefaultEncoding(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlwaysSaveInDefaultEncoding(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Fonts(
            ksoapi::WebPageFonts **prop /Out/) = 0;

        virtual HRESULT get_FolderSuffix(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_TargetBrowser(
            MsoTargetBrowser *prop /Out/) = 0;

        virtual HRESULT put_TargetBrowser(
            MsoTargetBrowser prop) = 0;

        virtual HRESULT get_SaveNewWebPagesAsWebArchives(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SaveNewWebPagesAsWebArchives(
            VARIANT_BOOL prop) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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

        VARIANT_BOOL getOptimizeForBrowser();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OptimizeForBrowser(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OptimizeForBrowser()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOptimizeForBrowser(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OptimizeForBrowser(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OptimizeForBrowser()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OptimizeForBrowser, get=getOptimizeForBrowser, set=setOptimizeForBrowser)

        WdBrowserLevel getBrowserLevel();
        %MethodCode
            wpsapi::WdBrowserLevel prop = (wpsapi::WdBrowserLevel)0;
            HRESULT hr = sipCpp->get_BrowserLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BrowserLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBrowserLevel(WdBrowserLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BrowserLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BrowserLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BrowserLevel, get=getBrowserLevel, set=setBrowserLevel)

        VARIANT_BOOL getRelyOnCSS();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RelyOnCSS(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelyOnCSS()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelyOnCSS(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelyOnCSS(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelyOnCSS()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelyOnCSS, get=getRelyOnCSS, set=setRelyOnCSS)

        VARIANT_BOOL getOrganizeInFolder();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OrganizeInFolder(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OrganizeInFolder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrganizeInFolder(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OrganizeInFolder(*a0);
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

        VARIANT_BOOL getUpdateLinksOnSave();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UpdateLinksOnSave(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateLinksOnSave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateLinksOnSave(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateLinksOnSave(*a0);
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

        VARIANT_BOOL getUseLongFileNames();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseLongFileNames(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseLongFileNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseLongFileNames(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseLongFileNames(*a0);
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

        VARIANT_BOOL getCheckIfOfficeIsHTMLEditor();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CheckIfOfficeIsHTMLEditor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckIfOfficeIsHTMLEditor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckIfOfficeIsHTMLEditor(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckIfOfficeIsHTMLEditor(*a0);
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

        VARIANT_BOOL getCheckIfWordIsDefaultHTMLEditor();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CheckIfWordIsDefaultHTMLEditor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckIfWordIsDefaultHTMLEditor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckIfWordIsDefaultHTMLEditor(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckIfWordIsDefaultHTMLEditor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CheckIfWordIsDefaultHTMLEditor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CheckIfWordIsDefaultHTMLEditor, get=getCheckIfWordIsDefaultHTMLEditor, set=setCheckIfWordIsDefaultHTMLEditor)

        VARIANT_BOOL getRelyOnVML();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RelyOnVML(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelyOnVML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelyOnVML(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelyOnVML(*a0);
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

        VARIANT_BOOL getAllowPNG();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowPNG(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowPNG()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowPNG(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowPNG(*a0);
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
            wpsapi::MsoScreenSize prop = (wpsapi::MsoScreenSize)0;
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

        long getPixelsPerInch();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PixelsPerInch(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PixelsPerInch()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPixelsPerInch(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PixelsPerInch(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PixelsPerInch()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PixelsPerInch, get=getPixelsPerInch, set=setPixelsPerInch)

        MsoEncoding getEncoding();
        %MethodCode
            wpsapi::MsoEncoding prop = (wpsapi::MsoEncoding)0;
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

        VARIANT_BOOL getAlwaysSaveInDefaultEncoding();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AlwaysSaveInDefaultEncoding(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlwaysSaveInDefaultEncoding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlwaysSaveInDefaultEncoding(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlwaysSaveInDefaultEncoding(*a0);
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
            wpsapi::MsoTargetBrowser prop = (wpsapi::MsoTargetBrowser)0;
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

        VARIANT_BOOL getSaveNewWebPagesAsWebArchives();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SaveNewWebPagesAsWebArchives(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveNewWebPagesAsWebArchives()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveNewWebPagesAsWebArchives(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveNewWebPagesAsWebArchives(*a0);
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
    };
};
