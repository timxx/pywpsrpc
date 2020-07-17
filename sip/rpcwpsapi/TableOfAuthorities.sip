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
    struct TableOfAuthorities : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Passim(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Passim(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_KeepEntryFormatting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_KeepEntryFormatting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Category(
            long *prop /Out/) = 0;

        virtual HRESULT put_Category(
            long prop) = 0;

        virtual HRESULT get_Bookmark(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Bookmark(
            BSTR prop) = 0;

        virtual HRESULT get_Separator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Separator(
            BSTR prop) = 0;

        virtual HRESULT get_IncludeSequenceName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_IncludeSequenceName(
            BSTR prop) = 0;

        virtual HRESULT get_EntrySeparator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_EntrySeparator(
            BSTR prop) = 0;

        virtual HRESULT get_PageRangeSeparator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PageRangeSeparator(
            BSTR prop) = 0;

        virtual HRESULT get_IncludeCategoryHeader(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeCategoryHeader(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PageNumberSeparator(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PageNumberSeparator(
            BSTR prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_TabLeader(
            WdTabLeader *prop /Out/) = 0;

        virtual HRESULT put_TabLeader(
            WdTabLeader prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Update() = 0;

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

        VARIANT_BOOL getPassim();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Passim(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Passim()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPassim(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Passim(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Passim()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Passim, get=getPassim, set=setPassim)

        VARIANT_BOOL getKeepEntryFormatting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_KeepEntryFormatting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeepEntryFormatting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKeepEntryFormatting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KeepEntryFormatting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KeepEntryFormatting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KeepEntryFormatting, get=getKeepEntryFormatting, set=setKeepEntryFormatting)

        long getCategory();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Category(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Category()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCategory(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Category(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Category()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Category, get=getCategory, set=setCategory)

        BSTR getBookmark();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Bookmark(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bookmark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBookmark(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Bookmark(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Bookmark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Bookmark, get=getBookmark, set=setBookmark)

        BSTR getSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Separator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Separator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Separator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Separator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Separator, get=getSeparator, set=setSeparator)

        BSTR getIncludeSequenceName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_IncludeSequenceName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeSequenceName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeSequenceName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeSequenceName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeSequenceName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeSequenceName, get=getIncludeSequenceName, set=setIncludeSequenceName)

        BSTR getEntrySeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_EntrySeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EntrySeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEntrySeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EntrySeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EntrySeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EntrySeparator, get=getEntrySeparator, set=setEntrySeparator)

        BSTR getPageRangeSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PageRangeSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageRangeSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageRangeSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageRangeSeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageRangeSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageRangeSeparator, get=getPageRangeSeparator, set=setPageRangeSeparator)

        VARIANT_BOOL getIncludeCategoryHeader();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeCategoryHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeCategoryHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeCategoryHeader(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeCategoryHeader(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeCategoryHeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeCategoryHeader, get=getIncludeCategoryHeader, set=setIncludeCategoryHeader)

        BSTR getPageNumberSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PageNumberSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageNumberSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageNumberSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageNumberSeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageNumberSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageNumberSeparator, get=getPageNumberSeparator, set=setPageNumberSeparator)

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        WdTabLeader getTabLeader();
        %MethodCode
            wpsapi::WdTabLeader prop = (wpsapi::WdTabLeader)0;
            HRESULT hr = sipCpp->get_TabLeader(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TabLeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTabLeader(WdTabLeader prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TabLeader(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TabLeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TabLeader, get=getTabLeader, set=setTabLeader)
    };
};
