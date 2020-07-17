/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct WebOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_RelyOnCSS(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RelyOnCSS(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_OrganizeInFolder(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_OrganizeInFolder(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_UseLongFileNames(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseLongFileNames(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DownloadComponents(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DownloadComponents(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RelyOnVML(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RelyOnVML(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AllowPNG(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AllowPNG(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ScreenSize(
            MsoScreenSize *RHS /Out/) = 0;

        virtual HRESULT put_ScreenSize(
            MsoScreenSize RHS) = 0;

        virtual HRESULT get_PixelsPerInch(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PixelsPerInch(
            long RHS) = 0;

        virtual HRESULT get_LocationOfComponents(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_LocationOfComponents(
            BSTR RHS) = 0;

        virtual HRESULT get_Encoding(
            MsoEncoding *RHS /Out/) = 0;

        virtual HRESULT put_Encoding(
            MsoEncoding RHS) = 0;

        virtual HRESULT get_FolderSuffix(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT UseDefaultFolderSuffix() = 0;

        virtual HRESULT get_TargetBrowser(
            MsoTargetBrowser *RHS /Out/) = 0;

        virtual HRESULT put_TargetBrowser(
            MsoTargetBrowser RHS) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

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

        VARIANT_BOOL getDownloadComponents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DownloadComponents(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DownloadComponents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDownloadComponents(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DownloadComponents(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DownloadComponents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DownloadComponents, get=getDownloadComponents, set=setDownloadComponents)

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
            etapi::MsoScreenSize prop = (etapi::MsoScreenSize)0;
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

        BSTR getLocationOfComponents();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LocationOfComponents(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LocationOfComponents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocationOfComponents(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LocationOfComponents(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LocationOfComponents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LocationOfComponents, get=getLocationOfComponents, set=setLocationOfComponents)

        MsoEncoding getEncoding();
        %MethodCode
            etapi::MsoEncoding prop = (etapi::MsoEncoding)0;
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
            etapi::MsoTargetBrowser prop = (etapi::MsoTargetBrowser)0;
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
    };
};
