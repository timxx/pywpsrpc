/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct FileSearch : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_SearchSubFolders(
            VARIANT_BOOL *SearchSubFoldersRetVal /Out/) = 0;

        virtual HRESULT put_SearchSubFolders(
            VARIANT_BOOL SearchSubFoldersRetVal) = 0;

        virtual HRESULT get_MatchTextExactly(
            VARIANT_BOOL *MatchTextRetVal /Out/) = 0;

        virtual HRESULT put_MatchTextExactly(
            VARIANT_BOOL MatchTextRetVal) = 0;

        virtual HRESULT get_MatchAllWordForms(
            VARIANT_BOOL *MatchAllWordFormsRetVal /Out/) = 0;

        virtual HRESULT put_MatchAllWordForms(
            VARIANT_BOOL MatchAllWordFormsRetVal) = 0;

        virtual HRESULT get_FileName(
            BSTR *FileNameRetVal /Out/) = 0;

        virtual HRESULT put_FileName(
            BSTR FileNameRetVal) = 0;

        virtual HRESULT get_FileType(
            MsoFileType *FileTypeRetVal /Out/) = 0;

        virtual HRESULT put_FileType(
            MsoFileType FileTypeRetVal) = 0;

        virtual HRESULT get_LastModified(
            MsoLastModified *LastModifiedRetVal /Out/) = 0;

        virtual HRESULT put_LastModified(
            MsoLastModified LastModifiedRetVal) = 0;

        virtual HRESULT get_TextOrProperty(
            BSTR *TextOrProperty /Out/) = 0;

        virtual HRESULT put_TextOrProperty(
            BSTR TextOrProperty) = 0;

        virtual HRESULT get_LookIn(
            BSTR *LookInRetVal /Out/) = 0;

        virtual HRESULT put_LookIn(
            BSTR LookInRetVal) = 0;

        virtual HRESULT Execute(
            MsoSortBy SortBy = ksoapi::msoSortByNone,
            MsoSortOrder SortOrder = ksoapi::msoSortOrderAscending,
            VARIANT_BOOL AlwaysAccurate = VARIANT_FALSE,
            int *pRet /Out/ = 0) = 0;

        virtual HRESULT NewSearch() = 0;

        virtual HRESULT get_FoundFiles(
            FoundFiles **FoundFilesRet /Out/) = 0;

        virtual HRESULT get_PropertyTests(
            PropertyTests **PropTestsRet /Out/) = 0;

        virtual HRESULT get_SearchScopes(
            SearchScopes **SearchScopesRet /Out/) = 0;

        virtual HRESULT get_SearchFolders(
            SearchFolders **SearchFoldersRet /Out/) = 0;

        virtual HRESULT get_FileTypes(
            FileTypes **FileTypesRet /Out/) = 0;

        virtual HRESULT RefreshScopes() = 0;

        VARIANT_BOOL getSearchSubFolders();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SearchSubFolders(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SearchSubFolders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSearchSubFolders(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SearchSubFolders(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SearchSubFolders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SearchSubFolders, get=getSearchSubFolders, set=setSearchSubFolders)

        VARIANT_BOOL getMatchTextExactly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchTextExactly(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchTextExactly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchTextExactly(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchTextExactly(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchTextExactly()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchTextExactly, get=getMatchTextExactly, set=setMatchTextExactly)

        VARIANT_BOOL getMatchAllWordForms();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchAllWordForms(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchAllWordForms()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchAllWordForms(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchAllWordForms(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchAllWordForms()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchAllWordForms, get=getMatchAllWordForms, set=setMatchAllWordForms)

        BSTR getFileName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FileName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFileName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FileName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FileName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FileName, get=getFileName, set=setFileName)

        MsoFileType getFileType();
        %MethodCode
            ksoapi::MsoFileType prop = (ksoapi::MsoFileType)0;
            HRESULT hr = sipCpp->get_FileType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFileType(MsoFileType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FileType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FileType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FileType, get=getFileType, set=setFileType)

        MsoLastModified getLastModified();
        %MethodCode
            ksoapi::MsoLastModified prop = (ksoapi::MsoLastModified)0;
            HRESULT hr = sipCpp->get_LastModified(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LastModified()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLastModified(MsoLastModified prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LastModified(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LastModified()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LastModified, get=getLastModified, set=setLastModified)

        BSTR getTextOrProperty();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextOrProperty(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextOrProperty()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextOrProperty(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextOrProperty(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextOrProperty()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextOrProperty, get=getTextOrProperty, set=setTextOrProperty)

        BSTR getLookIn();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LookIn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LookIn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLookIn(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LookIn(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LookIn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LookIn, get=getLookIn, set=setLookIn)

        FoundFiles* getFoundFiles();
        %MethodCode
            ksoapi::FoundFiles *prop = nullptr;
            HRESULT hr = sipCpp->get_FoundFiles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FoundFiles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FoundFiles, get=getFoundFiles)

        PropertyTests* getPropertyTests();
        %MethodCode
            ksoapi::PropertyTests *prop = nullptr;
            HRESULT hr = sipCpp->get_PropertyTests(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PropertyTests()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PropertyTests, get=getPropertyTests)

        SearchScopes* getSearchScopes();
        %MethodCode
            ksoapi::SearchScopes *prop = nullptr;
            HRESULT hr = sipCpp->get_SearchScopes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SearchScopes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SearchScopes, get=getSearchScopes)

        SearchFolders* getSearchFolders();
        %MethodCode
            ksoapi::SearchFolders *prop = nullptr;
            HRESULT hr = sipCpp->get_SearchFolders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SearchFolders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SearchFolders, get=getSearchFolders)

        FileTypes* getFileTypes();
        %MethodCode
            ksoapi::FileTypes *prop = nullptr;
            HRESULT hr = sipCpp->get_FileTypes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileTypes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FileTypes, get=getFileTypes)
    };
};
